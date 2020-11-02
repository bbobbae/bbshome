--후원하기 테이블
CREATE TABLE supporter(
    id  				VARCHAR2(20) 				NOT NULL,
    formulas            CHAR(12)					NOT NULL,
    supportName         VARCHAR2(80)				NOT NULL,
    supportPrice        VARCHAR2(80)				NOT NULL,
    totalPrice          NUMBER DEFAULT 0 			NOT NULL,
    newsletter          VARCHAR2(15)  DEFAULT 'N' 	NOT NULL,
    receipt             CHAR(2)  DEFAULT 'N' 		NOT NULL,
    personalnum         VARCHAR2(13) ,
    trnaslate           CHAR(1)  DEFAULT 'Y' 		NOT NULL,
    payWay              VARCHAR2(14) ,
    cardName            VARCHAR2(16),
    cardNum             VARCHAR2(25),   
    validThru           VARCHAR2(8),
    cardOwn             VARCHAR2(16),
    bankName            VARCHAR2(20),
    bankOwn             VARCHAR2(16),
    bankNum             VARCHAR2(30),
    bankBirth           VARCHAR2(10),
    payAgree            CHAR(2) DEFAULT 'N',
    transDay            VARCHAR2(10),
    CONSTRAINT FK_SP FOREIGN KEY(id)
    REFERENCES wvmember(id)
);

COMMIT;

SELECT * FROM supporter;
