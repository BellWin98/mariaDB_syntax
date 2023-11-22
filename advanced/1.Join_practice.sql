-- author 테이블과 post 테이블을 JOIN하여, 글을 작성한 모든 저자의 이름(name)과 해당 글의 제목(title)을 조회
    -- author는 alias a, post는 alias p
SELECT a.name, p.title FROM author a INNER JOIN post p ON a.id = p.author_id;

-- author 테이블을 기준으로 post 테이블과 JOIN하여, 모든 저자의 이름과 해당 저자가 작성한 글의 제목을 조회하시오
    -- 글을 작성하지 않은 저자의 경우, 글 제목은 NULL로 표시
SELECT a.name, p.title FROM author a LEFT JOIN post p ON a.id = p.author_id;

-- 위 예제와 동일하게 모든 저자의 이름과 해당저자가 작성한 글의 제목을 조회. 단, 저자의 나이가 25세 이상인 저자만 조회
SELECT a.name, p.title FROM author a LEFT JOIN post p ON a.id = p.author_id WHERE a.age >= 25;

-- 프로그래머스 
    -- left join - 없어진 기록 찾기
    -- inner join - 조건에 맞는 도서와 저자 리스트 출력하기

-- post의 author_id가 NOT NULL이라는 조건 하에 두 쿼리는 동일
SELECT * FROM author a INNER JOIN post p ON a.id = p.author_id;
SELECT p.*, a.* FROM post p LEFT JOIN author a ON p.author_id = a.id;