--윈도우
    -- 구축된 database를 sql파일화 하고 전체 DB 다시 생성
    -- 쿼리문 생성 후 db삭제 및 쿼리문 재실행
    -- github에 dump파일 업로드

-- 리눅스
    -- 리눅스에 db구축 (MariaDB설치 및 데이터베이스 생성)
    -- github에서 소스코드 clone
    -- 해당 폴더로 이동하여 덤프 복원 명령어 실행
    -- mysql-u root -p board < dumpfile.sql

-- 위 절차 script화 하여 github에 정리