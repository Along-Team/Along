"use client";

import { useEffect, useState } from "react";
import dynamic from "next/dynamic";
import Map, { Layer, Marker, NavigationControl, Source } from "react-map-gl";
import "mapbox-gl/dist/mapbox-gl.css";
import { useAppSelector } from "@/redux/store";
import axios from "axios";
import Image from "next/image";
import ImageLibrary from "@/components/shared/ImageLibrary";

interface MapProps {
  open: boolean;
}

interface CoordinateType {
  longitude: number;
  latitude: number;
  isActive: boolean;
}

// Dynamically import Mapbox without SSR
const MapBoxMap: React.FC<MapProps> = ({ open }) => {
  const [viewState, setViewState] = useState({
    longitude: 7.4951,
    latitude: 9.0579,
    zoom: 12,
  });
  const [liveLocation, setLiveLocation] = useState<CoordinateType>({
    longitude: 7.4951,
    latitude: 9.0579,
    isActive: false,
  });
  const [routeGeoJson, setRouteGeoJson] = useState(null);
  const [isMounted, setIsMounted] = useState(false); // Ensure client-side execution

  const currentUserAddress = useAppSelector((state) => state.currentAddress);
  const userDestinationAddress = useAppSelector(
    (state) => state.destinationAddress
  );

  const startingCord = currentUserAddress.coordinates;
  const endingCord = userDestinationAddress.coordinates;

  // Geolocation logic (client-side only)
  const getUserLocation = () => {
    if (typeof window !== "undefined" && navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        (position) => {
          const { latitude, longitude } = position.coords;
          setLiveLocation({
            latitude,
            longitude,
            isActive: true,
          });
        },
        (error) => {
          console.error("Error getting user location:", error);
        }
      );
    }
  };

  // Route fetching logic (client-side only)
  const getRoute = async (start: [number, number], end: [number, number]) => {
    const directionsUrl = `https://api.mapbox.com/directions/v5/mapbox/driving/${start[0]},${start[1]};${end[0]},${end[1]}?geometries=geojson&access_token=${process.env.NEXT_PUBLIC_MAPBOX_ACCESS_TOKEN}`;

    try {
      const response = await axios.get(directionsUrl);
      const route = response.data.routes[0].geometry;
      setRouteGeoJson(route);
    } catch (error) {
      console.error("Error fetching route from Mapbox Directions API:", error);
    }
  };

  // Ensure code only runs on the client-side after component mounts
  useEffect(() => {
    setIsMounted(true); // Component is mounted on the client
    if (open) {
      getUserLocation(); // Only call geolocation when the component is open
    }
  }, [open]);

  useEffect(() => {
    if (isMounted && startingCord && endingCord && open) {
      getRoute(
        [startingCord.longitude, startingCord.latitude],
        [endingCord.longitude, endingCord.latitude]
      );
    }
  }, [isMounted, startingCord, endingCord, open]);

  // Prevent rendering on the server or before the component is mounted
  if (!isMounted || !open) {
    return null;
  }

  return (
    <div className="flex-grow h-[500px]">
      <Map
        {...viewState}
        style={{ width: "100%", height: "100%" }}
        mapStyle="mapbox://styles/mapbox/streets-v12"
        mapboxAccessToken={process.env.NEXT_PUBLIC_MAPBOX_ACCESS_TOKEN}
        onMove={(evt) => setViewState(evt.viewState)}
      >
        <NavigationControl position="top-right" />

        {liveLocation.isActive && (
          <Marker longitude={liveLocation.longitude} latitude={liveLocation.latitude}>
            <div
              style={{
                background: "#f00",
                borderRadius: "50%",
                width: "10px",
                height: "10px",
              }}
            />
          </Marker>
        )}

        {startingCord.latitude !== 0 && startingCord.longitude !== 0 && (
          <Marker
            longitude={startingCord.longitude}
            latitude={startingCord.latitude}
          >
            <div className="h-7 w-7">
              <Image
                src={ImageLibrary.EmojiPeople}
                alt="emoji people"
                height={30}
                width={30}
              />
            </div>
          </Marker>
        )}

        {endingCord.latitude !== 0 && endingCord.longitude !== 0 && (
          <Marker
            longitude={endingCord.longitude}
            latitude={endingCord.latitude}
          >
            <div className="h-7 w-7">
              <Image
                src={ImageLibrary.StopDot}
                alt="emoji people"
                height={30}
                width={30}
              />
            </div>
          </Marker>
        )}

        {routeGeoJson && (
          <Source id="route" type="geojson" data={routeGeoJson}>
            <Layer
              id="route"
              type="line"
              source="route"
              layout={{
                "line-join": "round",
                "line-cap": "round",
              }}
              paint={{
                "line-color": "#1A1528",
                "line-width": 4,
              }}
            />
          </Source>
        )}
      </Map>
    </div>
  );
};

export default MapBoxMap;
