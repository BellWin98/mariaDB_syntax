-- author 데이터 5개 추가
-- address는 넣지 말 것
INSERT INTO author(id, name, email, password, role) VALUES(1, 'user1', 'user1@naver.com', 'user1', 'USER');
INSERT INTO author(id, name, email, password, role) VALUES(2, 'user2', 'user2@naver.com', 'user2', 'USER');
INSERT INTO author(id, name, email, password, role) VALUES(3, 'user3', 'user3@naver.com', 'user3', 'ADMIN');
INSERT INTO author(id, name, email, password, role) VALUES(4, 'user4', 'user4@naver.com', 'user4', 'USER');
INSERT INTO author(id, name, email, password, role) VALUES(5, 'user5', 'user5@naver.com', 'user5', 'ADMIN');


-- post 데이터 5개 추가
-- 2개는 저자가 있는 데이터
-- 2개는 저자가 비어있는 데이터 -> author_id에 NOT NULL 조건 없다는 사실 확인
-- 1개는 저자가 author 테이블에 없는 데이터 추가 -> 에러 발생 확인
INSERT INTO post(id, title, contents, author_id) VALUES(1, 'title1', 'content1', 1);
INSERT INTO post(id, title, contents, author_id) VALUES(2, 'title2', 'content2', 2);
INSERT INTO post(id, title, contents) VALUES(3, 'title3', 'content3');
INSERT INTO post(id, title, contents) VALUES(4, 'title4', 'content4');
INSERT INTO post(id, title, contents, author_id) VALUES(5, 'title2', 'content2', 7);

-- author 데이터 중 id가 4인 데이터의 email을 abc@naver.com, name을 abc로 변경
UPDATE author SET email = 'abc@naver.com', name = 'abc' WHERE id = 4;

-- post에 글쓴적이 없는 author 데이터 1개 삭제
DELETE FROM author WHERE id = 5;

-- post에 글쓴적이 있는 author 데이터 1개 삭제 -> 에러 -> 조치 후 삭제
-- 방법 1
DELETE FROM author WHERE author_id = 2;
DELETE FROM author WHERE id = 2;
DELETE FROM post WHERE id = 2;
-- 방법 2
UPDATE post SET author_id = null WHERE author_id = 2;


-- 게시판 회원은 총 5명이 되도록 만들고, 게시판에 실명으로 글이 쓰여진 게시글은 총 3건, 익명으로 글이 쓰여진 글은 총 2건이 되도록 데이터 INSERT
INSERT INTO author(id, name, email) VALUES(1, 'a', 'a@naver.com');
INSERT INTO author(id, name, email) VALUES(2, 'b', 'b@naver.com');
INSERT INTO author(id, name, email) VALUES(3, 'c', 'c@naver.com');
INSERT INTO author(id, name, email) VALUES(4, 'd', 'd@naver.com');
INSERT INTO author(id, name, email) VALUES(5, 'e', 'e@naver.com');

INSERT INTO post(id, title, contents, author_id) VALUES(1, 'title1', 'contents1', 1);
INSERT INTO post(id, title, contents, author_id) VALUES(2, 'title1', 'contents2', 2);
INSERT INTO post(id, title, contents, author_id) VALUES(3, 'title3', 'contents3', 3);
INSERT INTO post(id, title, contents) VALUES(4, 'title4', 'contents4');
INSERT INTO post(id, title, contents) VALUES(5, 'title5', 'contents5');

-- 게시판의 회원을 모두 DELETE 하되, 기존에 POSTING된 글은 삭제되지 않고 남아있도록 하여라
UPDATE post SET author_id = NULL WHERE author_id IS NOT NULL;
DELETE FROM author;

-- POST의 글을 3개만 조회하되, title을 기준으로 오름차순하고, 만약 제목이 같은 경우 contents로 내림차순이 되도록 조회
SELECT * FROM post ORDER BY title, contents DESC LIMIT 3;