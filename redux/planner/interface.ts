export interface UserLocationState {
  coordinates: {
    latitude: number;
    longitude: number;
  };
  mapbox_id: string;
  full_address: string;
  name: string;
  place_formatted: string;
}
