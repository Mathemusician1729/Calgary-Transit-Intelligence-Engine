-- primary keys
ALTER TABLE stops ADD PRIMARY KEY (stop_id);
ALTER TABLE routes ADD PRIMARY KEY (route_id);
ALTER TABLE trips ADD PRIMARY KEY (trip_id);
ALTER TABLE stop_times ADD PRIMARY KEY (trip_id, stop_sequence);
ALTER TABLE calendar_dates ADD PRIMARY KEY (service_id, date);

-- foreign keys
ALTER TABLE stop_times 

-- indexes
CREATE INDEX idx_stop_times_trip_id ON stop_times(trip_id);
CREATE INDEX idx_stop_times_stop_id ON stop_times(stop_id);
CREATE INDEX idx_trips_route_id ON trips(route_id);
CREATE INDEX idx_trips_service_id ON trips(service_id);
CREATE INDEX idx_graphEdges_from_stop ON graph_edges(from_stop);