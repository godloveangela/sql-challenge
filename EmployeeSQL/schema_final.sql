-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS "schema02"."departments";
CREATE TABLE "schema02"."departments" (
  "dept_no" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "dept_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for dept_emp
-- ----------------------------
DROP TABLE IF EXISTS "schema02"."dept_emp";
CREATE TABLE "schema02"."dept_emp" (
  "emp_no" int4 NOT NULL,
  "dept_no" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for dept_manager
-- ----------------------------
DROP TABLE IF EXISTS "schema02"."dept_manager";
CREATE TABLE "schema02"."dept_manager" (
  "emp_no" int4 NOT NULL,
  "dept_no" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS "schema02"."employees";
CREATE TABLE "schema02"."employees" (
  "emp_no" int4 NOT NULL,
  "emp_title_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "birth_date" date NOT NULL,
  "first_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "last_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "sex" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "hire_date" date NOT NULL
)
;

-- ----------------------------
-- Table structure for salaries
-- ----------------------------
DROP TABLE IF EXISTS "schema02"."salaries";
CREATE TABLE "schema02"."salaries" (
  "emp_no" int4 NOT NULL,
  "salary" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for titles
-- ----------------------------
DROP TABLE IF EXISTS "schema02"."titles";
CREATE TABLE "schema02"."titles" (
  "title_id" varchar(255) COLLATE "pg_catalog"."default",
  "title" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Primary Key structure for table departments
-- ----------------------------
ALTER TABLE "schema02"."departments" ADD CONSTRAINT "departments_pkey" PRIMARY KEY ("dept_no");

-- ----------------------------
-- Primary Key structure for table dept_emp
-- ----------------------------
ALTER TABLE "schema02"."dept_emp" ADD CONSTRAINT "dept_emp_pkey" PRIMARY KEY ("emp_no", "dept_no");

-- ----------------------------
-- Primary Key structure for table employees
-- ----------------------------
ALTER TABLE "schema02"."employees" ADD CONSTRAINT "employees_pkey" PRIMARY KEY ("emp_no");

-- ----------------------------
-- Foreign Keys structure for table dept_emp
-- ----------------------------
ALTER TABLE "schema02"."dept_emp" ADD CONSTRAINT "dept_emp_dept_no_fkey" FOREIGN KEY ("dept_no") REFERENCES "schema02"."departments" ("dept_no") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "schema02"."dept_emp" ADD CONSTRAINT "dept_emp_emp_no_fkey" FOREIGN KEY ("emp_no") REFERENCES "schema02"."employees" ("emp_no") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table dept_manager
-- ----------------------------
ALTER TABLE "schema02"."dept_manager" ADD CONSTRAINT "dept_manager_dept_no_fkey" FOREIGN KEY ("dept_no") REFERENCES "schema02"."departments" ("dept_no") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "schema02"."dept_manager" ADD CONSTRAINT "dept_manager_emp_no_fkey" FOREIGN KEY ("emp_no") REFERENCES "schema02"."employees" ("emp_no") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table salaries
-- ----------------------------
ALTER TABLE "schema02"."salaries" ADD CONSTRAINT "salaries_emp_no_fkey" FOREIGN KEY ("emp_no") REFERENCES "schema02"."employees" ("emp_no") ON DELETE NO ACTION ON UPDATE NO ACTION;
