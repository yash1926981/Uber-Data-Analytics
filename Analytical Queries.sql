-- Find Top 10 pickup locations based on Number of trips
SELECT b.pickup_location_id,Count(a.trip_id) as Trip_count from `uber-etl-pipeline-436412.uber_data_engineering_raj.fact_table` a
Join `uber-etl-pipeline-436412.uber_data_engineering_raj.pickup_location_dim` b 
on a.pickup_location_id = b.pickup_location_id
Group by b.pickup_location_id
order by Trip_count desc
Limit 10;


--Find Total Number of trips by passenger count
SELECT b.passenger_count,Count(a.trip_id) as Trip_count from `uber-etl-pipeline-436412.uber_data_engineering_raj.fact_table` a
Join `uber-etl-pipeline-436412.uber_data_engineering_raj.passenger_count_dim` b 
on a.passenger_count_id = b.passenger_count_id
Group by b.passenger_count;



--Find Average fare amount by hour of the day.

SELECT b.pick_hour,avg(a.fare_amount) as avg_fare_amount from `uber-etl-pipeline-436412.uber_data_engineering_raj.fact_table` a
Join `uber-etl-pipeline-436412.uber_data_engineering_raj.datetime_dim` b 
on a.datetime_id = b.datetime_id
Group by b.pick_hour;