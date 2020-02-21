--------------------------------------------------------
--  File created - Monday-September-09-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PAYMENT
--------------------------------------------------------

  CREATE TABLE "UTTARA"."PAYMENT" 
   (	"CLASS" VARCHAR2(5 BYTE), 
	"SECTION" VARCHAR2(5 BYTE), 
	"ROLL" VARCHAR2(20 BYTE), 
	"BRANCH" VARCHAR2(20 BYTE), 
	"TOTAL" VARCHAR2(20 BYTE), 
	"PAY" VARCHAR2(20 BYTE), 
	"DUE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESULT
--------------------------------------------------------

  CREATE TABLE "UTTARA"."RESULT" 
   (	"CLASS" VARCHAR2(5 BYTE), 
	"SECTION" VARCHAR2(5 BYTE), 
	"ROLL" VARCHAR2(20 BYTE), 
	"GPA" VARCHAR2(5 BYTE), 
	"BRANCH" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "UTTARA"."STUDENT" 
   (	"NAME" VARCHAR2(50 BYTE), 
	"FNAME" VARCHAR2(50 BYTE), 
	"MNAME" VARCHAR2(50 BYTE), 
	"CLASS" VARCHAR2(5 BYTE), 
	"SECTION" VARCHAR2(5 BYTE), 
	"ROLL" VARCHAR2(20 BYTE), 
	"MOBILE" VARCHAR2(11 BYTE), 
	"BRANCH" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into UTTARA.PAYMENT
SET DEFINE OFF;
Insert into UTTARA.PAYMENT (CLASS,SECTION,ROLL,BRANCH,TOTAL,PAY,DUE) values ('10','B','020101','Uttara','10000','2500','7500.0');
REM INSERTING into UTTARA.RESULT
SET DEFINE OFF;
Insert into UTTARA.RESULT (CLASS,SECTION,ROLL,GPA,BRANCH) values ('10','B','020101','4.1','Uttara');
REM INSERTING into UTTARA.STUDENT
SET DEFINE OFF;
Insert into UTTARA.STUDENT (NAME,FNAME,MNAME,CLASS,SECTION,ROLL,MOBILE,BRANCH) values ('Shifat','Karim','Maria','10','A','020101','01951189383','Uttara');
--------------------------------------------------------
--  DDL for Index RESULT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UTTARA"."RESULT_PK" ON "UTTARA"."RESULT" ("ROLL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STUDENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UTTARA"."STUDENT_PK" ON "UTTARA"."STUDENT" ("ROLL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UTTARA"."TABLE1_PK" ON "UTTARA"."PAYMENT" ("ROLL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "UTTARA"."STUDENT" ADD CONSTRAINT "STUDENT_PK" PRIMARY KEY ("ROLL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "UTTARA"."STUDENT" MODIFY ("BRANCH" NOT NULL ENABLE);
  ALTER TABLE "UTTARA"."STUDENT" MODIFY ("MOBILE" NOT NULL ENABLE);
  ALTER TABLE "UTTARA"."STUDENT" MODIFY ("ROLL" NOT NULL ENABLE);
  ALTER TABLE "UTTARA"."STUDENT" MODIFY ("SECTION" NOT NULL ENABLE);
  ALTER TABLE "UTTARA"."STUDENT" MODIFY ("CLASS" NOT NULL ENABLE);
  ALTER TABLE "UTTARA"."STUDENT" MODIFY ("MNAME" NOT NULL ENABLE);
  ALTER TABLE "UTTARA"."STUDENT" MODIFY ("FNAME" NOT NULL ENABLE);
  ALTER TABLE "UTTARA"."STUDENT" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PAYMENT
--------------------------------------------------------

  ALTER TABLE "UTTARA"."PAYMENT" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("ROLL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "UTTARA"."PAYMENT" MODIFY ("ROLL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESULT
--------------------------------------------------------

  ALTER TABLE "UTTARA"."RESULT" ADD CONSTRAINT "RESULT_PK" PRIMARY KEY ("ROLL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "UTTARA"."RESULT" MODIFY ("BRANCH" NOT NULL ENABLE);
  ALTER TABLE "UTTARA"."RESULT" MODIFY ("GPA" NOT NULL ENABLE);
  ALTER TABLE "UTTARA"."RESULT" MODIFY ("ROLL" NOT NULL ENABLE);
  ALTER TABLE "UTTARA"."RESULT" MODIFY ("SECTION" NOT NULL ENABLE);
  ALTER TABLE "UTTARA"."RESULT" MODIFY ("CLASS" NOT NULL ENABLE);
