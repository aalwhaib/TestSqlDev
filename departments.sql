--------------------------------------------------------
--  DDL for Table DEPARTMENTS hello xx cc
--------------------------------------------------------

  CREATE TABLE "FINGERPRINT7X"."DEPARTMENTS" 
   (	"CHANGE_OPERATOR" NVARCHAR2(30), 
	"CHANGE_TIME" TIMESTAMP (6), 
	"CREATE_OPERATOR" NVARCHAR2(30), 
	"CREATE_TIME" TIMESTAMP (6), 
	"DELETE_OPERATOR" NVARCHAR2(30), 
	"DELETE_TIME" TIMESTAMP (6), 
	"STATUS" NUMBER(11,0), 
	"DEPTID" NUMBER(11,0), 
	"DEPTNAME" NVARCHAR2(50), 
	"CODE" NVARCHAR2(20), 
	"SUPDEPTID" NUMBER(11,0), 
	"TYPE" NVARCHAR2(10), 
	"INVALIDATE" DATE, 
	"TRIAL076" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "FINGERPRINT7X"."DEPARTMENTS"."CHANGE_OPERATOR" IS 'TRIAL';
   COMMENT ON COLUMN "FINGERPRINT7X"."DEPARTMENTS"."CHANGE_TIME" IS 'TRIAL';
   COMMENT ON COLUMN "FINGERPRINT7X"."DEPARTMENTS"."CREATE_OPERATOR" IS 'TRIAL';
   COMMENT ON COLUMN "FINGERPRINT7X"."DEPARTMENTS"."CREATE_TIME" IS 'TRIAL';
   COMMENT ON COLUMN "FINGERPRINT7X"."DEPARTMENTS"."DELETE_OPERATOR" IS 'TRIAL';
   COMMENT ON COLUMN "FINGERPRINT7X"."DEPARTMENTS"."DELETE_TIME" IS 'TRIAL';
   COMMENT ON COLUMN "FINGERPRINT7X"."DEPARTMENTS"."STATUS" IS 'TRIAL';
   COMMENT ON COLUMN "FINGERPRINT7X"."DEPARTMENTS"."DEPTID" IS 'TRIAL';
   COMMENT ON COLUMN "FINGERPRINT7X"."DEPARTMENTS"."DEPTNAME" IS 'TRIAL';
   COMMENT ON COLUMN "FINGERPRINT7X"."DEPARTMENTS"."CODE" IS 'TRIAL';
   COMMENT ON COLUMN "FINGERPRINT7X"."DEPARTMENTS"."SUPDEPTID" IS 'TRIAL';
   COMMENT ON COLUMN "FINGERPRINT7X"."DEPARTMENTS"."TYPE" IS 'TRIAL';
   COMMENT ON COLUMN "FINGERPRINT7X"."DEPARTMENTS"."INVALIDATE" IS 'TRIAL';
   COMMENT ON COLUMN "FINGERPRINT7X"."DEPARTMENTS"."TRIAL076" IS 'TRIAL';
   COMMENT ON TABLE "FINGERPRINT7X"."DEPARTMENTS"  IS 'TRIAL';
--------------------------------------------------------
--  DDL for Index SYS_C0031546
--------------------------------------------------------

  CREATE UNIQUE INDEX "FINGERPRINT7X"."SYS_C0031546" ON "FINGERPRINT7X"."DEPARTMENTS" ("DEPTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table DEPARTMENTS
--------------------------------------------------------

  ALTER TABLE "FINGERPRINT7X"."DEPARTMENTS" ADD CONSTRAINT "SYS_C0031546" PRIMARY KEY ("DEPTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FINGERPRINT7X"."DEPARTMENTS" MODIFY ("DEPTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table DEPARTMENTS
--------------------------------------------------------

  ALTER TABLE "FINGERPRINT7X"."DEPARTMENTS" ADD CONSTRAINT "SUPDEPTID_REFS_DEPTID_70DCC89" FOREIGN KEY ("SUPDEPTID")
	  REFERENCES "FINGERPRINT7X"."DEPARTMENTS" ("DEPTID") DEFERRABLE INITIALLY DEFERRED ENABLE;
