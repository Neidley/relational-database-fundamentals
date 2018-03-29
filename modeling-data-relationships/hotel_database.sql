CREATE TABLE guests (
  id integer,
  name text,
  address text,
  city text,
  state text,
  postal_code integer,
  phone_number numeric(10),
  booking_id integer
);

CREATE TABLE rooms (
  room_number integer,
  floor_number integer,
  view boolean,
  bed_type text,
  booking_id integer
);

CREATE TABLE bookings (
  id integer,
  guest_id integer,
  room_number integer,
  order_date date,
  check_in_date date,
  check_out_date date
);

INSERT INTO guests (id, name, address, city, state, postal_code, phone_number, booking_id)
VALUES
(001, 'Phil', '123 Teacher Blvd', 'Los Angeles', 'California', 90001, 5551112222, NULL),
(002, 'Stu', '456 Dentist St', 'Los Angeles', 'California', 90001, 5552223333, NULL),
(003, 'Alan', '789 Insane Ave', 'Los Angeles', 'California', 90001, 5553334444, NULL),
(004, 'Doug', '012 Groom Way', 'Los Angeles', 'California', 90001, 5554445555, NULL),
(005, 'Mr Chow', '123 Badguy Cir', 'Las Vegas', 'Nevada', 88901, 5556667777, NULL);

INSERT INTO rooms (room_number, floor_number, view, bed_type, booking_id)
VALUES
(101, 1, FALSE, 'King', NULL),
(102, 1, FALSE, 'Queens', NULL),
(203, 2, FALSE, 'Queens', NULL),
(204, 2, TRUE, 'King', NULL),
(409, 4, TRUE, 'King', NULL);

INSERT INTO bookings (id, guest_id, room_number, order_date, check_in_date, check_out_date)
VALUES
(12001, 001, 409, '2009-06-05', '2009-12-01', '2009-12-07'),
(12002, 001, 409, '2009-06-05', '2009-12-14', '2009-12-21'),
(12003, 001, 409, '2009-06-05', '2009-06-05', '2009-06-12'),
(12004, 001, 204, '2009-06-05', '2009-06-05', '2009-06-12'),

(12005, 002, 409, '2009-06-05', '2009-06-05', '2009-06-12'),
(12006, 002, 409, '2009-06-05', '2009-07-04', '2009-07-07'),

(12007, 003, 409, '2009-06-05', '2009-06-05', '2009-06-12'),

(12008, 004, 409, '2009-06-05', '2009-06-05', '2009-06-12');
