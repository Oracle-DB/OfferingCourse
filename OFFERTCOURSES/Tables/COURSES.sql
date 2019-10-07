CREATE TABLE offertcourses.courses (
  code VARCHAR2(6 BYTE) NOT NULL CONSTRAINT c_code_chk CHECK (code = upper(code)),
  description VARCHAR2(30 BYTE) NOT NULL,
  "CATEGORY" CHAR(3 BYTE) NOT NULL CONSTRAINT c_cat_chk CHECK ("CATEGORY" in ('GEN','BLD','DSG')),
  duration NUMBER(2) NOT NULL,
  CONSTRAINT courses_pk PRIMARY KEY (code)
);
COMMENT ON COLUMN offertcourses.courses.code IS 'Unique course code';
COMMENT ON COLUMN offertcourses.courses.description IS 'Course description (title)';
COMMENT ON COLUMN offertcourses.courses."CATEGORY" IS 'Course category (GEN,BLD, or DSG)';
COMMENT ON COLUMN offertcourses.courses.duration IS 'Course duration (in days)';