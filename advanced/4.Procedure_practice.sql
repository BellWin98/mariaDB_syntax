-- post테이블에 if문 활용하여 author_id 별 원고료 평균이 고액인 작가 조회
DELIMITER //
CREATE PROCEDURE my_procedures(IN inputAuthorId INT)
BEGIN
	DECLARE postAvgPrice DECIMAL(10,3) DEFAULT 0;
	SELECT AVG(price) INTO postAvgPrice
	FROM post
	WHERE author_id = inputAuthorId
	IF postAvgPrice >= 5000 THEN
		SELECT '고액 원고료 작가입니다.' AS message;
	ELSE
		SELECT '고액 원고료 작가가 아닙니다.' AS message;
	END IF;
END //
DELIMITER ;

-- while문 사용하여 100개 author 생성
DELIMITER //
CREATE PROCEDURE insertAuthorsLoop()
BEGIN
	DECLARE a INT DEFAULT 7;
	WHILE a <= 100 DO
        INSERT INTO author(id, name) VALUES(a, CONCAT('han', a));
	SET a = a+1;
END WHILE;
END //
DELIMITER ;
CALL insertAuthorsLoop();

