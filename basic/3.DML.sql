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
SELECT 필드이름 FROM 테이블이름 [WHERE 조건];

-- 모든 필드 선택
SELECT * FROM 테이블이름;

-- 예제
SELECT * FROM author WHERE id = 1;
SELECT name, email FROM author WHERE id = 1;
SELECT * FROM author WHERE id > 1;
SELECT * FROM author WHERE id > 1 AND name = 'kim';

-- 프로그래머스 SQL 문제 풀이(SELECT, WHERE - 어린 동물 찾기)
-- 프로그래머스 SQL 문제 풀이(SELECT, WHERE - 아픈 동물 찾기)

-- 이름 중복 제거하고 조회
SELECT DISTINCT name FROM author;

-- 선택한 결과의 정렬 (ORDER BY)
SELECT * FROM author ORDER BY name ASC;
SELECT * FROM author ORDER BY name DESC;

-- 여러 필드의 데이터를 쉼표(,)를 사용하여 여러 기준으로 정렬 가능
-- 먼저 입력한 컬럼 우선 정렬, 생략 시 asc 자동 적용
-- 값이 NULL일 경우, 
select * from author order by id, name desc;

-- ORDER BY 생략 시 PK를 기준으로 오름차순 정렬하여 결과값 반환

-- 반환할 행의 최대 수를 지정
-- 특정 숫자로 결과값 개수 제한
SELECT * FROM author ORDER BY id LIMIT 3; -- 내림차순으로 3개만 출력

-- 별칭(alias)을 이용한 처리
-- 테이블과 필드에 임시로 alias을 부여하고, 해당 alias을 SELECT문에서 사용
-- AS는 생략 가능하지만, 헷갈리니까 컬럼에는 써주기
SELECT 필드이름 AS 별칭 FROM 테이블이름;
SELECT name AS 이름 FROM author;

SELECT 필드이름 FROM 테이블이름 AS 별칭;
SELECT name, email FROM author AS 작성자;

-- (SELECT, ORDER BY - 역순 정렬하기)
-- (SELECT, ORDER BY - 여러 기준으로 정렬하기)
-- (SELECT, ORDER BY. LIMIT - 상위 레코드 n개 출력)
