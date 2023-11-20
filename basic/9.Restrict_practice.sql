-- 외래키 제약조건에서 ON UPDATE CASCADE 등의 옵션
-- POST 테이블에 ON UPDATE CASCADE 설정
    -- 먼저, 기존의 FOREIGN KEY 제약조건을 조회 후 삭제
        SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE TABLE_NAME = 'post';
        ALTER TABLE post DROP FOREIGN KEY post_ibfk_1;
        ALTER TABLE post DROP INDEX author_id;

    -- 새롭게 제약조건 추가
        ALTER TABLE post ADD CONSTRAINT post_author_fk FOREIGN KEY(author_id) REFERENCES author(id) ON UPDATE CASCADE;

    -- 삭제
        -- 삭제불가
        -- restrict와 동일
    -- 수정
        -- author 테이블의 id 수정 시 post 테이블의 id도 같이 수정
        
-- ON DELETE SET NULL ON UPDATE SET NULL 테스트
ALTER TABLE post ADD CONSTRAINT post_author_fk FOREIGN KEY(author_id) REFERENCES author(id) ON UPDATE SET NULL ON DELETE SET NULL;
