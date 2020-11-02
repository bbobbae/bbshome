--공지사항 테이블
CREATE TABLE notice(
    seq     number PRIMARY KEY    NOT NULL,
    indate  DATE DEFAULT SYSDATE  NOT NULL,
    title 	VARCHAR2(100)  		  NOT NULL,
    content VARCHAR2(1000)  	  NOT NULL,
    writer 	VARCHAR2(30)  	 	  NOT NULL,
    views	NUMBER DEFAULT 0 	  NOT NULL
);
CREATE SEQUENCE n_seq START WITH 1;
COMMIT;

SELECT * FROM notice;

INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[보도자료] 월드비전, <코로나19, 2차 피해 분석 보고서> 발간.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[가정의 달 이벤트]패밀리보토 가족사진촬영권 나눔.','관리자','내용은요');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 코로나19 관련, 양호승 회장이 후원자님께 드리는 편지.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'5월 종합소득세 신고를 위한 기부금영수증 발급 안내.','관리자','내용은요');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[보도자료] 대한민국 아동, 청소년정책연대,청소년정책 공약.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[성명서] 디지털 성 착취 및 학대 근절, 아동, 청소년 중심으로접근하라.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식]방글라데시 몬순 홍수 피해 관련 해외아동후원사업장','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 월드비전 개인정보 처리방침 개정 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 위기에서꿈으로 아동청소년 복지 정책 포럼 잠정연기','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 월드비전 세계시민교육 원격연수 과정 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'스마트폰 소식지로 구독 전환하기 캠페인','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'월드비전 세계어린이합창제 “평화의 노래“ 가사 공모전 결과','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'2020년 온라인 후원자 열린모임 [월비다방] 오픈','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'엘살바도르 솔리다리다드 지역개발사업장 피해현황','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[연대성명서] 아동학대, 더 이상 방치할 수 없기에 근본적 대...','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'2020 ‘교실에서 찾은 희망‘ 캠페인 참여 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'케냐 와지르, 앙구라이 지역개발사업장 홍수/산사태 피해현황','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 월드비전 70주년 기념 아동미래연구 공모전 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[가정의달 이벤트]패밀리포토 가족사진촬영권 나눔','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 시스템 교체에 따른 상담서비스 한시적 중단 알림','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 코로나19 관련, 양호승 회장이 후원자님께 드리는 편지','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 시스템 교체에 따른 상담서비스 한시적 중단 알림','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'5월 종합소득세 신고를 위한 기부금영수증 발급 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 제9대 한국월드비전 회장을 모십니다.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 개인정보 국외 이전 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2020 비전메이커 번역봉사단 모집안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2020년 월드비전 세계시민교육 강사양성 워크숍 모집','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 사랑의 도시락 설맞이 특식 kit  제작 자원봉사자','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2019 패밀리데이 <박미선의 보이는 라디오>','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2019년 연말정산 기부금영수증 발급 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[보도자료] 월드비전, <코로나19, 2차 피해 분석 보고서> 발간.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[가정의 달 이벤트]패밀리보토 가족사진촬영권 나눔.','관리자','내용은요');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 코로나19 관련, 양호승 회장이 후원자님께 드리는 편지.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'5월 종합소득세 신고를 위한 기부금영수증 발급 안내.','관리자','내용은요');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[보도자료] 대한민국 아동, 청소년정책연대,청소년정책 공약.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[성명서] 디지털 성 착취 및 학대 근절, 아동, 청소년 중심으로접근하라.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식]방글라데시 몬순 홍수 피해 관련 해외아동후원사업장','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 월드비전 개인정보 처리방침 개정 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 위기에서꿈으로 아동청소년 복지 정책 포럼 잠정연기','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 월드비전 세계시민교육 원격연수 과정 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'스마트폰 소식지로 구독 전환하기 캠페인','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'월드비전 세계어린이합창제 “평화의 노래“ 가사 공모전 결과','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'2020년 온라인 후원자 열린모임 [월비다방] 오픈','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'엘살바도르 솔리다리다드 지역개발사업장 피해현황','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[연대성명서] 아동학대, 더 이상 방치할 수 없기에 근본적 대...','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'2020 ‘교실에서 찾은 희망‘ 캠페인 참여 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'케냐 와지르, 앙구라이 지역개발사업장 홍수/산사태 피해현황','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 월드비전 70주년 기념 아동미래연구 공모전 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[가정의달 이벤트]패밀리포토 가족사진촬영권 나눔','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 시스템 교체에 따른 상담서비스 한시적 중단 알림','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 코로나19 관련, 양호승 회장이 후원자님께 드리는 편지','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 시스템 교체에 따른 상담서비스 한시적 중단 알림','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'5월 종합소득세 신고를 위한 기부금영수증 발급 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 제9대 한국월드비전 회장을 모십니다.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 개인정보 국외 이전 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2020 비전메이커 번역봉사단 모집안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2020년 월드비전 세계시민교육 강사양성 워크숍 모집','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 사랑의 도시락 설맞이 특식 kit  제작 자원봉사자','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2019 패밀리데이 <박미선의 보이는 라디오>','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2019년 연말정산 기부금영수증 발급 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[보도자료] 월드비전, <코로나19, 2차 피해 분석 보고서> 발간.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[가정의 달 이벤트]패밀리보토 가족사진촬영권 나눔.','관리자','내용은요');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 코로나19 관련, 양호승 회장이 후원자님께 드리는 편지.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'5월 종합소득세 신고를 위한 기부금영수증 발급 안내.','관리자','내용은요');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[보도자료] 대한민국 아동, 청소년정책연대,청소년정책 공약.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[성명서] 디지털 성 착취 및 학대 근절, 아동, 청소년 중심으로접근하라.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식]방글라데시 몬순 홍수 피해 관련 해외아동후원사업장','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 월드비전 개인정보 처리방침 개정 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 위기에서꿈으로 아동청소년 복지 정책 포럼 잠정연기','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 월드비전 세계시민교육 원격연수 과정 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'스마트폰 소식지로 구독 전환하기 캠페인','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'월드비전 세계어린이합창제 “평화의 노래“ 가사 공모전 결과','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'2020년 온라인 후원자 열린모임 [월비다방] 오픈','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'엘살바도르 솔리다리다드 지역개발사업장 피해현황','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[연대성명서] 아동학대, 더 이상 방치할 수 없기에 근본적 대...','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'2020 ‘교실에서 찾은 희망‘ 캠페인 참여 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'케냐 와지르, 앙구라이 지역개발사업장 홍수/산사태 피해현황','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 월드비전 70주년 기념 아동미래연구 공모전 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[가정의달 이벤트]패밀리포토 가족사진촬영권 나눔','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 시스템 교체에 따른 상담서비스 한시적 중단 알림','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 코로나19 관련, 양호승 회장이 후원자님께 드리는 편지','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 시스템 교체에 따른 상담서비스 한시적 중단 알림','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'5월 종합소득세 신고를 위한 기부금영수증 발급 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 제9대 한국월드비전 회장을 모십니다.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 개인정보 국외 이전 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2020 비전메이커 번역봉사단 모집안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2020년 월드비전 세계시민교육 강사양성 워크숍 모집','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 사랑의 도시락 설맞이 특식 kit  제작 자원봉사자','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2019 패밀리데이 <박미선의 보이는 라디오>','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2019년 연말정산 기부금영수증 발급 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[보도자료] 월드비전, <코로나19, 2차 피해 분석 보고서> 발간.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[가정의 달 이벤트]패밀리보토 가족사진촬영권 나눔.','관리자','내용은요');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 코로나19 관련, 양호승 회장이 후원자님께 드리는 편지.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'5월 종합소득세 신고를 위한 기부금영수증 발급 안내.','관리자','내용은요');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[보도자료] 대한민국 아동, 청소년정책연대,청소년정책 공약.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[성명서] 디지털 성 착취 및 학대 근절, 아동, 청소년 중심으로접근하라.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식]방글라데시 몬순 홍수 피해 관련 해외아동후원사업장','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 월드비전 개인정보 처리방침 개정 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 위기에서꿈으로 아동청소년 복지 정책 포럼 잠정연기','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 월드비전 세계시민교육 원격연수 과정 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'스마트폰 소식지로 구독 전환하기 캠페인','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'월드비전 세계어린이합창제 “평화의 노래“ 가사 공모전 결과','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'2020년 온라인 후원자 열린모임 [월비다방] 오픈','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'엘살바도르 솔리다리다드 지역개발사업장 피해현황','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[연대성명서] 아동학대, 더 이상 방치할 수 없기에 근본적 대...','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'2020 ‘교실에서 찾은 희망‘ 캠페인 참여 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'케냐 와지르, 앙구라이 지역개발사업장 홍수/산사태 피해현황','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 월드비전 70주년 기념 아동미래연구 공모전 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[가정의달 이벤트]패밀리포토 가족사진촬영권 나눔','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 시스템 교체에 따른 상담서비스 한시적 중단 알림','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 코로나19 관련, 양호승 회장이 후원자님께 드리는 편지','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 시스템 교체에 따른 상담서비스 한시적 중단 알림','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'5월 종합소득세 신고를 위한 기부금영수증 발급 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 제9대 한국월드비전 회장을 모십니다.','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[공지] 개인정보 국외 이전 안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2020 비전메이커 번역봉사단 모집안내','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2020년 월드비전 세계시민교육 강사양성 워크숍 모집','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 사랑의 도시락 설맞이 특식 kit  제작 자원봉사자','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2019 패밀리데이 <박미선의 보이는 라디오>','관리자','내용');
INSERT INTO NOTICE (seq, title, writer, content) VALUES (n_seq.nextval,'[새소식] 2019년 연말정산 기부금영수증 발급 안내','관리자','내용');


COMMIT;


