--월드비전 계정 테이블
CREATE TABLE wvmember(
   id 		VARCHAR2(20) primary key 	NOT NULL,
   pwd 		VARCHAR(20) 				NOT NULL,
   name 	VARCHAR(30) 				NOT NULL,
   birth 	VARCHAR2(15) 				NOT NULL,
   gender 	CHAR(5) 					NOT NULL,
   phone 	VARCHAR2(25) 				NOT NULL,
   email  	VARCHAR2(80) 				NOT NULL,
   email1 	VARCHAR(40) 				NOT NULL,
   email2 	VARCHAR(40) 				NOT NULL,
   indate 	DATE DEFAULT SYSDATE,
   LOGIN_FAIL_COUNT NUMBER DEFAULT'0' 	NOT NULL ,
   IS_LOCK CHAR(1) DEFAULT'N' 			NOT NULL,
   LATEST_LOGIN_FAIL_DATE DATE
);

--관리자계정
INSERT INTO wvmember(id,pwd,name,birth,gender,phone,email1,email2,email)
VALUES('admin','admin1234!','관리자','19950221','여','01011112222','admin123','gmail.com','admin123@gmail.com');

--사용자 테스트계정
INSERT INTO wvmember(id,pwd,name,birth,gender,phone,email1,email2,email)
VALUES('test123','testpwd123!','테스트','19950112','남','01012123232','testemail1','gmail.com','testemail1@gmail.com');

SELECT * FROM wvmember;

COMMIT;