-- 사용자(회원) 정보를 저장할 테이블
CREATE TABLE user_info(
	id VARCHAR2(100) CONSTRAINT user_info_pk PRIMARY KEY,
	pwd VARCHAR2(100) CONSTRAINT user_info_pwd_nn NOT NULL,
	email VARCHAR2(100),
	profile VARCHAR2(100),
	regdate DATE
);
