"use client"
import { useSearchBoxCore } from "@mapbox/search-js-react";
import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";
import dynamic from 'next/dynamic';
import { useState, useEffect } from "react";
import { useAppDispatch, useAppSelector } from "@/redux/store";
import {
  fetchUserDestination,
  fetchUserLocation,
  resetUserDestination,
  resetUserLocation,
} from "@/redux/planner";
import AddressSuggestions from "../AddressSuggestions";
import { SearchBoxProps } from "@mapbox/search-js-react/dist/components/SearchBox";

interface IProps {
  forDriver?: boolean;
}

interface LocationData {
  currentLocation: string;
  destination: string;
}

// mapbox tokens
const accessToken = process.env.NEXT_PUBLIC_MAPBOX_ACCESS_TOKEN || "";
const sessionToken = process.env.NEXT_PUBLIC_MAPBOX_SESSION_TOKEN || "";

const RouteSelector: React.FC<IProps> = ({ forDriver }) => {
  // redux global state
  const currentUserAddress = useAppSelector((state) => state.currentAddress);
  const userDestinationAddress = useAppSelector(
    (state) => state.destinationAddress
  );

  // hooks
  const dispatch = useAppDispatch();
  const mapBoxSearch = useSearchBoxCore({ accessToken });

  // input states
  const [locationData, setLocationData] = useState<LocationData>({
    currentLocation: "",
    destination: "",
  });

  // address autofill suggestions
  const [addressSuggestions, setAddressSuggestions] = useState<any[]>([]);
  const [destinationAddress, setDestinationAddress] = useState<any[]>([]);
  const [isFetching, setIsFetching] = useState<boolean>(false);

  // fetch suggestions
  const fetchSuggestions = async (searchText: string): Promise<any | []> => {
    if (!accessToken || searchText.length <= 3) {
      return [];
    }

    setIsFetching(true);
    try {
      const response = await mapBoxSearch.suggest(searchText, {
        sessionToken,
        country: "NG",
        language: "en",
      });

      if (response.suggestions.length === 0) {
        return [];
      }

      return response.suggestions;
    } catch (error) {
      console.error("Error fetching suggestions:", error);
    } finally {
      setIsFetching(false);
    }
  };

  const handleChange = async (
    e: React.ChangeEvent<HTMLInputElement>
  ): Promise<void> => {
    const { name, value } = e.target;

    setLocationData((prevData) => {
      return { ...prevData, [name]: value || "" };
    });

    if (value.length >= 3) {
      try {
        const suggestions = await fetchSuggestions(value);

        if (name === "currentLocation") {
          setAddressSuggestions(suggestions);
        } else if (name === "destination") {
          setDestinationAddress(suggestions);
        }
      } catch (error) {
        console.error("Error fetching suggestions:", error);
      }
    } else {
      if (name === "currentLocation") {
        setAddressSuggestions([]);
      } else if (name === "destination") {
        setDestinationAddress([]);
      }
    }
  };

  const handleSuggestionClick = async (
    suggestion: any,
    isDestination?: boolean
  ): Promise<void> => {
    // Update state for currentLocation or destination based on isDestination flag
    setLocationData((prevData) => {
      let updatedData;
      if (isDestination) {
        updatedData = {
          ...prevData,
          destination: suggestion.name,
        };
      } else {
        updatedData = {
          ...prevData,
          currentLocation: suggestion.name,
        };
      }
      return updatedData;
    });

    try {
      const response = await mapBoxSearch.retrieve(suggestion, {
        sessionToken,
      });
      const data = response.features[0].properties;
      const payload = {
        coordinates: { ...data.coordinates },
        mapbox_id: data.mapbox_id,
        full_address: data.full_address,
        name: data.name,
        place_formatted: data.place_formatted,
      };

      if (isDestination) {
        dispatch(fetchUserDestination(payload));
      } else {
        dispatch(fetchUserLocation(payload));
      }
    } catch (error) {
      console.error("Error retrieving suggestion details:", error);
    } finally {
      if (isDestination) {
        setDestinationAddress([]);
      } else {
        setAddressSuggestions([]);
      }
    }
  };

  const clearInput = (): void => {
    setLocationData({ currentLocation: "", destination: "" });
    setAddressSuggestions([]);
    setDestinationAddress([]);
    dispatch(resetUserDestination());
    dispatch(resetUserLocation());
  };

  // Swap currentLocation and destination values
  const swapLocations = (): void => {
    setLocationData((prevData) => {
      const swappedData = {
        currentLocation: prevData.destination || "",
        destination: prevData.currentLocation || "",
      };
      return swappedData;
    });
    // swap in redux too
    dispatch(fetchUserDestination(currentUserAddress));
    dispatch(fetchUserLocation(userDestinationAddress));
  };

  return (
    <div className="px-4">
      <div className="flex items-center space-x-4">
        <div className="h-[60px]">
          <Image
            src={ImageLibrary.RouteIndcator}
            alt="Route Indicator"
            width={30}
            height={60}
            className="w-full h-full object-contain"
          />
        </div>

        <div className="flex flex-col flex-1 space-y-2">
          {/* Current Location */}
          <div className="flex-grow relative">
            <label className="block text-sm font-medium mb-0.5">
              Current Location
            </label>
            <input
              type="text"
              value={locationData.currentLocation} // Controlled input
              name="currentLocation"
              autoComplete="address-line1 address-line2"
              onChange={handleChange}
              placeholder="Enter current location"
              className="w-full text-xs bg-transparent border-none text-ash placeholder-ash focus:outline-none focus:ring-0"
            />

            {addressSuggestions.length > 0 && (
              <ul className="absolute left-0 right-0 bg-onyx z-10 max-h-72 overflow-y-auto mt-1 rounded-xl px-4">
                {addressSuggestions.map((suggestion) => (
                  <AddressSuggestions
                    key={suggestion.mapbox_id}
                    name={suggestion.name}
                    place_formatted={suggestion.place_formatted}
                    handleClick={() => {
                      handleSuggestionClick(suggestion);
                    }}
                  />
                ))}
              </ul>
            )}
          </div>

          <div className="bg-[#2A2537] h-0.5 w-full"></div>

          {/* Destination */}
          <div className="relative flex-grow">
            <label className="block text-sm font-medium mb-0.5">
              {forDriver ? "Final Stop" : "Destination"}
            </label>
            {forDriver ? (
              <input
                type="text"
                // value={locationData.destination} // Controlled input
                name="stop"
                // onChange={handleChange}
                // autoComplete="address-line1 address-line2"
                placeholder="Where route are you taking?"
                className="w-full text-xs bg-transparent border-none text-ash placeholder-ash focus:outline-none focus:ring-0"
              />
            ) : (
              <input
                type="text"
                value={locationData.destination} // Controlled input
                name="destination"
                onChange={handleChange}
                autoComplete="address-line1 address-line2"
                placeholder="Where are you going today?"
                className="w-full text-xs bg-transparent border-none text-ash placeholder-ash focus:outline-none focus:ring-0"
              />
            )}

            {destinationAddress.length > 0 && (
              <ul className="absolute left-0 right-0 bg-onyx z-10 max-h-72 overflow-y-auto mt-1 rounded-xl px-4">
                {destinationAddress.map((suggestion) => (
                  <AddressSuggestions
                    key={suggestion.mapbox_id}
                    name={suggestion.name}
                    place_formatted={suggestion.place_formatted}
                    handleClick={() => {
                      handleSuggestionClick(suggestion, true);
                    }}
                  />
                ))}
              </ul>
            )}
          </div>
        </div>

        {/* Action Buttons */}
        <div className="flex flex-col space-y-2">
          {/* Clear Input Button */}
          <button
            className="bg-lightGray bg-opacity-35 py-2 px-3 rounded-2xl"
            onClick={clearInput}
          >
            <Image
              src={ImageLibrary.Close}
              alt="Clear input"
              width={20}
              height={20}
            />
          </button>

          {/* Swap Locations Button */}
          <button
            className="bg-primary py-2 px-3 rounded-2xl"
            onClick={swapLocations}
          >
            <Image
              src={ImageLibrary.Switch}
              alt="Swap locations"
              width={20}
              height={20}
            />
          </button>
        </div>
      </div>
    </div>
  );
};

export default RouteSelector;
