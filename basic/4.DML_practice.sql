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