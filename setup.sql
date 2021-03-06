-- Just run all the statements with the @ annotation to setup the database.
-- I included the drop user and tablespace calls in case you want to remove
-- them and install the database again.
-- Author: eoin.keady@gmail.com
-- Date: 09-Dec-2017

Drop user hospital cascade;
Drop tablespace hospital_db including contents and datafiles;
Drop role guest_role;
Drop role user_role;
Drop user guest;
Drop user fullUser;


@create_tablespace.sql;
@create_user_hosiptal.sql;
@create_table.sql;
@sequences.sql;
@id_triggers.sql;
@roles_and_users.sql
@insert_patient.sql;
@insert_ward_drug.sql;
@insert_nurses.sql;
@insert_physician.sql;
@insert_operations.sql;
@insert_rooms.sql;
@insert_appointments.sql;
@insert_prescriptions.sql;
@insert_stay.sql;
@insert_treatment.sql;
@create_package.sql;
@create_view.sql;


