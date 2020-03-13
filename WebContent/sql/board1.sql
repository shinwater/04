--board1 테이블 생성

create table board1(
	board_no number(5) primary key, 		--게시물 글번호
	board_writer varchar2(20) not null,		--게시물 작성자
	board_title varchar2(50) not null,		--게시물 제목
	board_cont varchar2(1000),				--게시물 내용
	board_pwd varchar2(20) not null,		--게시물 비밀번호
	board_hit number(5) default 0,			--게시물 조회수
	board_regdate date						--게시물 등록날짜
	
);

--board_no 컬럼에 대한 시퀀스 생성
create sequence board1_seq
start with 1
increment by 1
nocache;

--board1 테이블에 레코드 추가
insert into board1
	values(board1_seq.nextval,'홍길동','글제목1','글내용1','1111',default,sysdate);
insert into board1
	values(board1_seq.nextval,'이순신','제목 2','내용2','2222',default,sysdate);
insert into board1
	values(board1_seq.nextval,'유관순','관순님 글','관쑨글 내용','3333',default,sysdate);
insert into board1
	values(board1_seq.nextval,'김유신','유신글','유신 글 내용4','4444',default,sysdate);
insert into board1
	values(board1_seq.nextval,'김연아','언니글','연아언니 글','5555',default,sysdate);