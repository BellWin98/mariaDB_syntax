-- 데이터베이스 생성
CREATE DATABASE board;

-- 데이터베이스 선택
USE board;

-- author 테이블 신규 생성
CREATE TABLE author(id INT, name VARCHAR(255),
email VARCHAR(255), password VARCHAR(255), test1 VARCHAR(255), PRIMARY KEY (id)); -- 테이블 차원에서 Primary Key 지정

-- 테이블 목록 조회
SHOW TABLES;

-- 테이블 컬럼 조회
DESCRIBE author;

-- post 테이블 신규 생성
-- id를 컬럼 차원에서 PRIMARY KEY 설정
CREATE TABLE posts(id INT PRIMARY KEY, title VARCHAR(255), content VARCHAR(255), author_id INT, FOREIGN KEY(author_id) REFERENCES author(id));

-- 테이블 컬럼 상세 조회
SHOW FULL COLUMNS FROM author;

-- 테이블 생성문 조회
-- 데이터베이스의 핵심 기술은 엔진 (대부분 InnoDB를 많이 씀)
SHOW CREATE TABLE posts;

-- 테이블 참조관계 및 제약조건 정보 조회
-- 제약조건을 설정하는 순간 시스템 전체 어딘가에 데이터가 저장됨
SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = "posts";

-- 테이블 인덱스 조회
-- 주요 제약조건(PK, FK)을 걸게되면 인덱스 자동 생성
-- 사용 이유: 규모가 큰 회사에서 트래픽이 많아져서 느려진 속도를 빠르게 하기 위해  
-- 제약조건 정보조회와 인덱스 조회는 상당 수 일치 (pk, fk 제약조건은 인덱스를 생성)
-- 인덱스란 조회의 성능을 높이기 위한 별도 목차 페이지라고 이해하면 될 것 (Only 조회 속도만 개선)
-- BTREE 자료구조 이용
SHOW INDEX FROM posts;

-- ALTER
-- 테이블 정보 변경
ALTER TABLE 테이블명 RENAME 새로운테이블명;
ALTER TABLE posts RENAME post;

-- 컬럼 추가(ADD)
ALTER TABLE 테이블명 ADD COLUMN 컬럼명 자료형 [NULL 또는 NOT NULL];
ALTER TABLE author ADD COLUMN role VARCHAR(5O);

-- 필드 타입 변경 (MODIFY): 덮어쓰기 (제약조건이 있으면, )
-- 타입을 변경하는 건 매우 어려움(거의 불가). 이미 데이터가 들어가 있으니까
-- VARCHAR -> INT로 변경하기 어렵듯이
ALTER TABLE 테이블명 MODIFY COLUMN 컬럼명 타입 [제약조건];
ALTER TABLE author MODIFY COLUMN name VARCHAR(100) NOT NULL;

-- 컬럼 이름 변경 => content -> contents
ALTER TABLE 테이블명 CHANGE COLUMN 기존컬럼명 새로운컬럼명 타입 [제약조건]
ALTER TABLE post CHANGE COLUNN contents content VARCHAR(255) NOT NULL;

-- 컬럼 삭제 => test1 컬럼 삭제
ALTER TABLE 테이블명 DROP COLUMN 컬럼명;

-- 데이터베이스 삭제
DROP DATABASE 데이터베이스명;

-- 테이블 삭제
DROP TABLE 테이블 이름;

-- 테이블의 데이터만을 지우고 싶을 때
DELETE FROM 테이블 이름;
TRUNCATE TABLE 테이블 이름;

-- IF EXISTS 사용 이유: 커맨드 환경에서 스크립트를 이용하여 코드를 한 큐에 실행할 때,
-- 중간에 발생할 수 있는 오류를 사전 방지 / 중간에 오류 나면 프로그램이 강제 종료돼서 아래 쿼리들 전부 실행 안됨
DROP DATABASE IF EXISTS abc;