-- 데이터 모델링 실습1

-- 스키마 추가 및 변경
    -- author 테이블을 나누어 author_address 테이블 추가
        -- country, state_city, details, zip code, phonenumber
        -- on delete cascade 옵션
        -- 1:1 관계 설정
CREATE TABLE author_address (
id BIGINT AUTO_INCREMENT, country VARCHAR(50) NOT NULL, state_city VARCHAR(100) NOT NULL, 
details VARCHAR(255), zip_code INT, phone_number VARCHAR(50), author_id BIGINT NOT NULL, 
PRIMARY KEY(id), FOREIGN KEY(author_id) REFERENCES author(id), UNIQUE(author_id) ON DELETE CASCADE);

-- author_id에 UNIQUE 설정해서 1:1관계 보장하도록 만들기
ALTER TABLE author_address ADD CONSTRAINT author_id_unique UNIQUE(author_id);

-- author와 post의 관계가 N:M. 즉, 여러명이서 한 post를 수정할 수 있도록 스키마 수정
-- post테이블에 기존에 걸려있던 인덱스와 fk 삭제 후 author_id컬럼 삭제  
ALTER TABLE post DROP FOREIGN KEY post_author_fk;
ALTER TABLE post DROP INDEX post_author_fk;
ALTER TABLE post DROP COLUMN author_id;

-- N:M관계 성립 위한 post_authors 테이블 생성
create table post_authors (
id BIGINT AUTO_INCREMENT, author_id BIGINT NOT NULL, post_id BIGINT NOT NULL, PRIMARY KEY(id), 
FOREIGN KEY(author_id) REFERENCES author(id) ON DELETE CASCADE, FOREIGN KEY(post_id) REFERENCES post(id) ON DELETE CASCADE);


-- 필요 산출물
    -- ER다이어그램을 통해 추상화
    -- 릴레이셔널 스키마를 통해 구체화
    -- 테이블 생성문(DDL)
    -- 테스트 케이스
SELECT p.title, a.name
FROM post p 
LEFT JOIN post_authors pa 
ON p.id = pa.post_id
LEFT JOIN author a
ON pa.author_id = a.id;