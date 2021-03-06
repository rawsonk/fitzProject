-- Sample stay data
-- The end date can be null as a patient might not have left the hospital yet
-- Every patient does not need a STAY entry  - this would depend on severity of illnes2
-- There is a constraint in the CREATE TABLE file where end_date cannot be less than start_date
-- Author: eoin.keady@gmail.com
-- Date: 02-Dec-2017

insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-10', 31, 31);
insert into hospital.stay(start_date, end_date, room_id, patient_id) values(Date '2017-11-11', Date '2017-12-11', 32, 70);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-10', 33, 32);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-02', 34, 33);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-02', 35, 34);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-01', 36, 35);
insert into hospital.stay(start_date, end_date, room_id, patient_id) values(Date '2017-11-11', Date '2017-12-03', 37, 5);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-10', 38, 6);
insert into hospital.stay(start_date, end_date, room_id, patient_id) values(Date '2017-11-11', Date '2017-12-11', 39, 43);
insert into hospital.stay(start_date, end_date, room_id, patient_id) values(Date '2017-10-11', Date '2017-12-07', 40, 53);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-10', 41, 67);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-10', 42, 12);
insert into hospital.stay(start_date, end_date, room_id, patient_id) values(Date '2017-04-13', Date '2017-05-11', 42, 20);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-10', 43, 53);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-02', 44, 78);
insert into hospital.stay(start_date, end_date, room_id, patient_id) values(Date '2017-11-11', Date '2017-12-11', 43, 45);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-10', 53, 46);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-17', 63, 56);
insert into hospital.stay(start_date, end_date, room_id, patient_id) values(Date '2017-07-11', Date '2017-08-11', 31, 54);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-19', 23, 69);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-12', 51, 31);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-13', 52, 44);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-14', 53, 78);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-16', 54, 49);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-14', 55, 50);
insert into hospital.stay(start_date, room_id, patient_id) values(Date '2017-12-11', 56, 51);