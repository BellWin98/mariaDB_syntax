# 윈도우
    # 구축된 database를 sql파일화 하고 전체 DB 다시 생성
    mysqldump -u root -p --default-character-set=utf8mb4 board > dumpfile.sql
    
    # 쿼리문 생성 후 db삭제 및 쿼리문 재실행
    
    # github에 dump파일 업로드

# 리눅스
    # 리눅스에 db구축 (MariaDB설치 및 데이터베이스 생성), -y 옵션 넣으면 자동으로 y 입력됨
    sudo apt-get install -y mariadb-server
    
    # github에서 소스코드 clone
    git clone Repository 

    # 해당 폴더로 이동하여 덤프 복원 명령어 실행
    cd 이동할 폴더
    sudo mysql-u root -p board < dumpfile.sql

# 위 절차 script화 하여 github에 정리