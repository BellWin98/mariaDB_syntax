-- Insert(C), Select(R), Update(U), Delete(D)
INSERT INTO 테이블이름(필드이름1, 필드이름2, 필드이름3, ...) VALUES(데이터값1, 데이터값2, 데이터값3, ...)
INSERT INTO author(id, name, email) VALUES(1, 'bellwin', 'bellwin@naver.com');
SELECT * FROM author;

-- UPDATE
-- 테이블 레코드의 내용을 수정
UPDATE 테이블이름 SET 필드이름1 = 데이터값1, 필드이름2 = 데이터값2, ... WHERE 필드이름 = 데이터값;

-- 만약 WHERE절을 생략하면, 해당 테이블의 모든 레코드 값이 위 설정대로 수정되므로 유의
-- 여기서 =의 쓰임새는 2가지
-- WHERE문 뒤에 나오는 비교문은 java기준으로 ==
-- 어떤 값을 SET 할 때도 =을 사용하여 대입 (java = 과 동일) 
UPDATE author SET email = 'abc2@test.com' WHERE id = 1;

-- DELETE
-- DELETE FROM 테이블이름 WHERE 필드이름 = 데이터값
-- WHERE절을 생략하면, 해당 테이블에 저장된 모든 데이터가 삭제
DELETE FROM author WHERE author_id = 5;

-- DELETE, TRUNCATE, DROP 차이
-- DROP: 테이블의 구조까지 삭제
-- TRUNCATE: 삭제 속도가 빠름, DELETE는 storage까지 삭제하지는 않아 복구가 가능하고 흔적(log)을 남김

-- SELECT
SELECT 필드이름 FROM 테이블이름 [WHERE 조건]

-- 모든 필드 선택
SELECT * FROM 테이블이름

-- 예제
SELECT * FROM author WHERE id = 1;
SELECT name, email FROM author WHERE id = 1;
SELECT * FROM author WHERE id > 1;
SELECT * FROM author WHERE id > 1 AND name = 'kim';

-- 프로그래머스 SQL 문제 풀이(SELECT, WHERE - 어린 동물 찾기) 
