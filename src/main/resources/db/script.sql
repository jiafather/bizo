CREATE SCHEMA `mydb` CHARACTER SET utf8 COLLATE utf8_general_ci;

/* 난 그냥 root 사용 중 -- root 도 권한추가를 해야 했던가 ㅡㅡ;
GRANT ALL ON `mydb`.* TO `userid`@localhost IDENTIFIED BY '1234';
FLUSH PRIVILEGES;
*/
 
CREATE TABLE mydb.CODE_MST (
   MAJOR_ID VARCHAR(10) COMMENT '코드그룹ID',
   MAJOR_NAME VARCHAR(100) COMMENT '코드그룹명',
   MAJOR_DESC VARCHAR(200) COMMENT '코드그룹설명',
   SORT_SEQ INT UNSIGNED COMMENT '코드순번',
   USE_YN VARCHAR(1) NOT NULL DEFAULT 'Y' COMMENT '사용여부 YN',
   INSERT_DATE TIMESTAMP   DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
   INSERT_ID VARCHAR(50) NOT NULL COMMENT '등록자',
   MODIFY_DATE TIMESTAMP  COMMENT '수정일시',
   MODIFY_ID VARCHAR(50) COMMENT '수정자',
   MAJOR_GB VARCHAR(1) NOT NULL COMMENT '코드그룹 1:메모리상주, 2:일반코드',
  PRIMARY KEY (MAJOR_ID)
) ENGINE = MyISAM COMMENT = '코드마스터그룹' ROW_FORMAT = DEFAULT;

CREATE TABLE mydb.CODE_DTL (
   MAJOR_ID VARCHAR(10) COMMENT '코드그룹ID',
   CODE_ID  VARCHAR(20) COMMENT '코드ID',
   SORT_SEQ INT UNSIGNED COMMENT '코드순서',
   CODE_NAME VARCHAR(100) COMMENT '코드명',
   CODE_VAL VARCHAR(100) COMMENT '코드값',
   CODE_PATH VARCHAR(100) COMMENT '코드경로',
   CODE_DESC VARCHAR(1000) COMMENT '코드설명',   
   USE_YN VARCHAR(1) NOT NULL DEFAULT 'Y' COMMENT '사용여부 YN',
   INSERT_DATE TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
   INSERT_ID VARCHAR(50) NOT NULL COMMENT '등록자',
   MODIFY_DATE TIMESTAMP  COMMENT '수정일시',
   MODIFY_ID VARCHAR(50) COMMENT '수정자',
   GROUP_ID VARCHAR(1) NOT NULL COMMENT '그룹코드',
   PRIMARY KEY (MAJOR_ID,CODE_ID)
) ENGINE = MyISAM COMMENT = '코드마스터' ROW_FORMAT = DEFAULT;

CREATE TABLE mydb.COMPANY (
   COMP_CODE VARCHAR(10) COMMENT '회원사코드',
   COMP_NAME  VARCHAR(20) COMMENT '회원사이름',
   SORT_SEQ INT UNSIGNED COMMENT '정렬순서',
   COMP_TYPE VARCHAR(2) COMMENT '회원사타입',   
   USE_YN VARCHAR(1) NOT NULL DEFAULT 'Y' COMMENT '사용여부 YN',
   INSERT_DATE TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
   INSERT_ID VARCHAR(50) NOT NULL COMMENT '등록자',
   MODIFY_DATE TIMESTAMP  COMMENT '수정일시',
   MODIFY_ID VARCHAR(50) COMMENT '수정자',
   PRIMARY KEY (COMP_CODE)
) ENGINE = MyISAM COMMENT = '회원사' ROW_FORMAT = DEFAULT;

CREATE TABLE mydb.AGENT (   
   COMP_CODE VARCHAR(10) COMMENT '회원사코드',
   AGT_CODE VARCHAR(10) COMMENT '대리점코드',   
   AGT_NAME  VARCHAR(20) COMMENT '대리점이름',
   SORT_SEQ INT UNSIGNED COMMENT '정렬순서',
   AGT_TYPE VARCHAR(2) COMMENT '대리점타입',   
   USE_YN VARCHAR(1) NOT NULL DEFAULT 'Y' COMMENT '사용여부 YN',
   INSERT_DATE TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
   INSERT_ID VARCHAR(50) NOT NULL COMMENT '등록자',
   MODIFY_DATE TIMESTAMP  COMMENT '수정일시',
   MODIFY_ID VARCHAR(50) COMMENT '수정자',
   PRIMARY KEY (COMP_CODE,AGT_CODE)
) ENGINE = MyISAM COMMENT = '회원사' ROW_FORMAT = DEFAULT;


CREATE TABLE mydb.MEMBER (
  MEMBER_ID varchar(60) NOT NULL COMMENT '아이디',
  MEMBER_NO varchar(60) NOT NULL COMMENT '회원번호',
  MEMBER_NAME varchar(100) NOT NULL COMMENT '회원이름',
  PASSWORD varchar(100) NOT NULL COMMENT '회원비밀번호',
  BIRTHDAY varchar(8) NOT NULL COMMENT '생일',
  SEX varchar(1) DEFAULT NULL COMMENT '성별',
  POST varchar(6) DEFAULT NULL COMMENT '우편번호',
  ADDR1 varchar(300) DEFAULT NULL COMMENT '주소',
  ADDR2 varchar(300) DEFAULT NULL COMMENT '상세주소',
  MOBILE1 varchar(4) NOT NULL COMMENT '핸드폰국번',
  MOBILE2 varchar(4) NOT NULL COMMENT '핸드폰1',
  MOBILE3 varchar(4) NOT NULL COMMENT '핸드폰번호2',
  EMAIL varchar(100) DEFAULT NULL COMMENT '이메일',
  EMAIL_YN varchar(1) DEFAULT NULL COMMENT '이메일수신여부',
  SMS_SERVICE_YN varchar(1) DEFAULT NULL COMMENT 'SMS수신여부',
  OWN_NAME_YN varchar(1) NOT NULL DEFAULT 'N'  COMMENT '실명인증여부',
  LAST_LOGIN_TIME datetime DEFAULT NULL COMMENT '최종로그인시간',
  NICKNAME varchar(50) NOT NULL COMMENT '별명',
  MOBILE_COM varchar(5) DEFAULT NULL COMMENT '통신사구분',
  CONFIRM_YN varchar(1) NOT NULL DEFAULT 'N' COMMENT '핸드폰인증여부',
  INSERT_DATETIME datetime NOT NULL COMMENT '등록일시',
  INSERT_ID varchar(0) DEFAULT NULL COMMENT '등록자',
  UPDATE_DATETIME datetime DEFAULT NULL COMMENT '수정일시',
  MODIFY_ID varchar(60) DEFAULT NULL COMMENT '수정자',  
  USE_FLAG varchar(1) NOT NULL COMMENT '회원상태',  
  COMP_CODE varchar(10) DEFAULT NULL COMMENT '회원사코드',  
  AGT_CODE varchar(10) DEFAULT NULL COMMENT '대리점코드',  
  PRIMARY KEY (MEMBER_ID),
  UNIQUE KEY MEMBER_NO (MEMBER_NO)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='회원테이블';



---------------------------------------------------------------------------------------------


CREATE TABLE mydb.IDS (
   TABLE_NAME VARCHAR(16) NOT NULL COMMENT '테이블명',
   NEXT_ID  VARCHAR(20) COMMENT '다음id',
   PRIMARY KEY (TABLE_NAME)
) ENGINE = MyISAM COMMENT = '키제너레이터' ROW_FORMAT = DEFAULT;


CREATE TABLE mydb.SAMPLE (
   ID VARCHAR(16) NOT NULL COMMENT 'ID',
   NAME  VARCHAR(50) COMMENT '이름',
   DESCRIPTION VARCHAR(100) COMMENT '내용',
   USE_YN CHAR(1) COMMENT '사용여부',
   REG_USER VARCHAR(10) COMMENT '등록자ID',
   PRIMARY KEY (ID)
) ENGINE = MyISAM COMMENT = '샘플테이블' ROW_FORMAT = DEFAULT;

INSERT INTO mydb.SAMPLE VALUES('SAMPLE-00001','Runtime Environment','Foundation Layer','Y','eGov');
INSERT INTO mydb.SAMPLE VALUES('SAMPLE-00002','Runtime Environment','Persistence Layer','Y','eGov');
INSERT INTO mydb.SAMPLE VALUES('SAMPLE-00003','Runtime Environment','Presentation Layer','Y','eGov');
INSERT INTO mydb.SAMPLE VALUES('SAMPLE-00004','Runtime Environment','Business Layer','Y','eGov');
INSERT INTO mydb.SAMPLE VALUES('SAMPLE-00005','Runtime Environment','Batch Layer','Y','eGov');
INSERT INTO mydb.SAMPLE VALUES('SAMPLE-00006','Runtime Environment','Integration Layer','Y','eGov');
INSERT INTO mydb.IDS VALUES('MEMBER',10000);


----------------------------------------------------------------------------------------------


INSERT INTO `mydb`.`company`
(`COMP_CODE`,`COMP_NAME`,`SORT_SEQ`,`COMP_TYPE`,`USE_YN`,`INSERT_DATE`,`INSERT_ID`,`MODIFY_DATE`,`MODIFY_ID`)
VALUES
('C003',
'유토피아',
3,
'',
'Y',
now(),
'',
now(),
'');


INSERT INTO `mydb`.`agent`(`COMP_CODE`,`AGT_CODE`,`AGT_NAME`,`SORT_SEQ`,`AGT_TYPE`,`USE_YN`,`INSERT_DATE`,`INSERT_ID`,`MODIFY_DATE`,`MODIFY_ID`)
VALUES
('C001',
'A001',
'에이전트1',
1,
'01',
'Y',
now(),
'lgslgs',
now(),
'lgslgs');


INSERT INTO `mydb`.`agent`(`COMP_CODE`,`AGT_CODE`,`AGT_NAME`,`SORT_SEQ`,`AGT_TYPE`,`USE_YN`,`INSERT_DATE`,`INSERT_ID`,`MODIFY_DATE`,`MODIFY_ID`)
VALUES
('C003',
'A008',
'에이전트2',
2,
'01',
'Y',
now(),
'lgslgs',
now(),
'lgslgs');

