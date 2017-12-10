Drop user hospital cascade;
Drop tablespace hospital_db including contents and datafiles;

@create_tablespace.sql;
@create_user_hosiptal.sql;
@create_table.sql;
@sequences.sql;
@id_triggers.sql;
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

