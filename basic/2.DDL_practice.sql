-- post테이블의 contents 컬럼 글자수 3000으로 변경
ALTER TABLE post MODIFY COLUMN contents VARCHAR(3000);

-- author테이블에 address 컬럼 varchar 255로 추가
ALTER TABLE author ADD COLUMN address VARCHAR(255);

-- post테이블 생성문 미리 확인 -> post 테이블 삭제 -> post테이블 다시 생성
SHOW CREATE TABLE post;
DROP TABLE post;
