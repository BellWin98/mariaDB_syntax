-- 데이터 모델링 실습2

-- 스키마 설계
    -- 주문 관리 서비스 설계
    -- 요구사항 (모든 테이블 컬럼 자유 설계)
        -- DB 생성 (order_system)
        -- 해당 서비스에서는 회원가입 가능
            -- MEMBERS
            -- 회원 종류: user, admin, seller (enum 타입)
        -- 회원(판매자)은 상품과 재고수량을 등록 (더 추가 가능)
            -- ITEMS
            -- 상품명, 상품가격, 재고수량
            -- 누가 등록했는지에 대한 정보가 남아야 함에 유의 (seller는 foreign key 등록?)
        -- 회원이 여러 상품을 한꺼번에 주문 가능
            -- ORDER, ORDER_DETAILS

    -- 트랜잭션 설계
        -- SELLER 회원가입, SELLER 상품등록(사과, 바나나)
        -- CUSTOMER 회원가입
        -- ORDER 테이블 INSERT -> ORDER_DETAILS INSERT -> 재고 UPDATE