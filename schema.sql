DROP TABLE IF EXISTS hours;
DROP TABLE IF EXISTS field;
DROP TABLE IF EXISTS tutors;

CREATE TABLE tutors (
  tutor_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE fields (
  field_id INTEGER PRIMARY KEY,
  subject TEXT NOT NULL,
  tutor_id INTEGER,
  FOREIGN KEY (tutor_id) REFERENCES tutors(tutor_id)
 );
 
 CREATE TABLE hours (
   hour_id INTEGER PRIMARY KEY,
   field_id INTEGER,
   appointment_date DATE,
   hours REAL
  ); 
  
