-- author 테이블 email에 unique 제약 조건 추가
ALTER TABLE author MODIFY COLUMN email VARCHAR(255) UNIQUE;
-- 컬럼 제약조건으로 추가
-- 제약조건 제거 및 index 제거
-- 테이블 제약조건 추가형식으로 추가