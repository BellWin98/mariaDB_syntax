-- author_id별로 price 평균값을 구하시오. 단, 건별로 2000원 이상인 데이터만 평균을 내서 출력 (WHERE 사용)
SELECT author_id, AVG(price) FROM post WHERE price >= 2000 GROUP BY author_id;

-- author_id별로 price 평균값을 구하되 평균값이 2000원 이상인 건만 출력
SELECT author_id, AVG(price) FROM post GROUP BY author_id HAVING AVG(price) >= 2000;

-- 프로그래머스
    -- 입양 시각 구하기(1)
    -- 성분으로 구분한 아이스크림 총 주문량
    -- 자동차 종류별 특정 옵션이 포함된 자동차 수 구하기
    -- 재구매가 일어난 상품과 회원 리스트 구하기
    -- 입양 시각 구하기2