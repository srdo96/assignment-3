-- Part 2: SQL Queries

-- Query 1: JOIN
select
  booking_id,
  u.name as customer_name,
  v.name as vehicle_name,
  start_date,
  end_date,
  b.status
from
  bookings b
  join users u on b.user_id = u.user_id
  join vehicles v on b.vehicle_id = v.vehicle_id

--   Query 2: EXISTS


-- Query 3: WHERE
  select * from vehicles
  where type='car'

-- Query 4: GROUP BY and HAVING
select
  v.name as vehicle_name,
  count(*) as total_booking
from
  bookings b
  join vehicles v on v.vehicle_id = b.vehicle_id
group by
  v.vehicle_id
having
  count(*) > 2



