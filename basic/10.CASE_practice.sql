-- post테이블에서 id, title, contents, 그리고 author_id의 경우 author_type이라는 이름으로 조회
    -- author_id가 만약 1이면 first_author, 2이면 second_author로 조회가 되도록 하고, 3이상 그외의 경우 etc_authors로 조회하여라
    -- 1. case when 사용
    -- 2. if문 사용하여 동일하게 출력
SELECT id, title, contents, 
CASE author_id
    WHEN 1 THEN 'First Author'
    WHEN 2 THEN 'Second Author'
    ELSE 'Others'
END
AS author_type FROM post;

-- NULL 체크
SELECT id, title, contents, 
CASE 
    WHEN author_id = 1 THEN 'First Author'
    WHEN author_id = 2 THEN 'Second Author'
    WHEN author_id IS NULL THEN 'Anonymous'
    ELSE 'Others'
END
AS author_type FROM post;

-- 프로그래머스 - 조건에 부합하는 중고거래 상태 조회하기
-- ifnull을 사용하여 만약 contents가 null로 비어있으면, no contents로 출력되도록 select 문 작성
-- 프로그래머스 - 12세 이하인 여자 환자 목록 출력하기

-- if 문법 사용해서 만약 author_id가 1이면 FIRST AUTHOR 그렇지 않으면 OTHERS 출력
SELECT id, title, contents, IF(author_id = 1, 'First Author', 'Others') FROM post;

SELECT id, title, contents, IFNULL(author_id, 'Anonymous') FROM post;
-- 위에서 사용한 ifnull의 결과값을 동일하게 if문으로 출력
SELECT id, title, contents, IF(author_id IS NULL, 'Anonymous', author_id) FROM post;
