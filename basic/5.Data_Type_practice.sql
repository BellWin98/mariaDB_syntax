-- author 테이블에 age 데이터 tinyint unsigned로 추가
ALTER TABLE author ADD COLUMN age TINYINT UNSIGNED;

-- 255이하로 insert, 255초과로 insert 테스트
INSERT INTO author(id, name, age) VALUES(2, "han", 255);

-- post에 price라는 원고료 컬럼을 추가. 원고료 컬럼은 총 자릿수 10자리 및 소수점 단위는 3자리까지 가능
ALTER TABLE post ADD COLUMN price DECIMAL(10, 3);

-- 컬럼 추가 후 비어있는 컬럼에 숫자 update test (소수점 3이하 test, 소수점 3초과 테스트)
INSERT INTO post(id, title, contents, price) VALUES(6, 'title6', 'contents6', 3.141);
INSERT INTO post(id, title, contents, price) VALUES(7, 'title7', 'contents7', 3.1415);

-- role타입을 enum타입으로 변경하고, user와 admin으로 enum타입 지정
-- not null 설정
-- 입력이 없을 시에는 user로 세팅되도록 default 설정
ALTER TABLE author MODIFY COLUMN role ENUM('ADMIN', 'USER') NOT NULL DEFAULT 'USER';

-- ADMIN으로 데이터 세팅 후 INSERT
INSERT INTO author(id, name, role) VALUES(2, 'kim', 'admin');

-- SUPER-USER 데이터로 INSERT
INSERT INTO author(id, name, role) VALUES(3, 'tim', 'super-user');

-- ROLE 데이터 없이 INSERT
INSERT INTO author(id, name) VALUES(4, 'tim');

-- post 테이블에 DATETIME으로 created_time 컬럼 추가 및 DEFAULT로 현재 시간 들어가도록 설정
-- DATATIME(6) DEFAULT current_timestamp(6)
ALTER TABLE post ADD COLUMN created_time DATETIME DEFAULT current_timestamp(6);

-- 연, 월, 일, 시간, 분, 초까지만 출력
ALTER TABLE post ADD COLUMN created_time DATETIME DEFAULT current_timestamp;

-- 컬럼 추가 후 INSERT 테스트
INSERT INTO post(id, title, contents) VALUES(7, 'title7', 'contents7');