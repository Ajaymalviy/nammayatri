CREATE TABLE atlas_app.journey_booking ();

ALTER TABLE atlas_app.journey_booking ADD COLUMN convenience_cost integer NOT NULL;
ALTER TABLE atlas_app.journey_booking ADD COLUMN customer_cancelled boolean NOT NULL;
ALTER TABLE atlas_app.journey_booking ADD COLUMN distance_unit character varying(255) NOT NULL;
ALTER TABLE atlas_app.journey_booking ADD COLUMN estimated_distance double precision NOT NULL;
ALTER TABLE atlas_app.journey_booking ADD COLUMN estimated_duration integer ;
ALTER TABLE atlas_app.journey_booking ADD COLUMN estimated_fare double precision ;
ALTER TABLE atlas_app.journey_booking ADD COLUMN currency text ;
ALTER TABLE atlas_app.journey_booking ADD COLUMN fare double precision ;
ALTER TABLE atlas_app.journey_booking ADD COLUMN id character varying(36) NOT NULL;
ALTER TABLE atlas_app.journey_booking ADD COLUMN is_booking_cancellable boolean NOT NULL;
ALTER TABLE atlas_app.journey_booking ADD COLUMN journey_id character varying(36) NOT NULL;
ALTER TABLE atlas_app.journey_booking ADD COLUMN modes text NOT NULL;
ALTER TABLE atlas_app.journey_booking ADD COLUMN number_of_passengers integer NOT NULL;
ALTER TABLE atlas_app.journey_booking ADD COLUMN merchant_id character varying(36) ;
ALTER TABLE atlas_app.journey_booking ADD COLUMN merchant_operating_city_id character varying(36) ;
ALTER TABLE atlas_app.journey_booking ADD COLUMN created_at timestamp with time zone NOT NULL default CURRENT_TIMESTAMP;
ALTER TABLE atlas_app.journey_booking ADD COLUMN updated_at timestamp with time zone NOT NULL default CURRENT_TIMESTAMP;
ALTER TABLE atlas_app.journey_booking ADD PRIMARY KEY ( id);