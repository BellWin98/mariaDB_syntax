Ordering Service ERD

[x] 회원(Members)
create table members (
id BIGINT AUTO_INCREMENT, name VARCHAR(10) NOT NULL, nickname VARCHAR(10) NOT NULL, 
email VARCHAR(30) NOT NULL, password VARCHAR(20) NOT NULL,
current_address VARCHAR(100) NOT NULL, role ENUM('USER', 'ADMIN', 'SELLER') NOT NULL DEFAULT 'USER',
age TINYINT(3) UNSIGNED, phone_number VARCHAR(20) NOT NULL,
del_yn ENUM('Y', 'N') NOT NULL DEFAULT 'N', created_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(id), UNIQUE(nickname), UNIQUE(email), UNIQUE(phone_number)
);
    [x] 주소와 1(M):N(O)
    [x] 판매자와 1(M):1(O)
    [x] 주문과 1(M):N(O)

[x] 주소(Addresses)
create table addresses (
id BIGINT AUTO_INCREMENT, member_id BIGINT NOT NULL, member_address VARCHAR(100) NOT NULL, 
del_yn ENUM('Y', 'N') NOT NULL DEFAULT 'N', created_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(id), FOREIGN KEY(member_id) REFERENCES members(id) ON DELETE CASCADE
);

[x] 판매자(Sellers)
create table seller (
id BIGINT AUTO_INCREMENT, member_id BIGINT NOT NULL, del_yn ENUM('Y', 'N') NOT NULL DEFAULT 'N', created_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(id), FOREIGN KEY(member_id) REFERENCES members(id) ON DELETE CASCADE, UNIQUE(member_id)
);
    [x] 상품과 1(M):N(O)

[x] 상품(Items)
create table items (
id BIGINT AUTO_INCREMENT, seller_id BIGINT NOT NULL, 
category VARCHAR(100) NOT NULL, name VARCHAR(50) NOT NULL, price INT NOT NULL, stock_quantity INT NOT NULL,
del_yn ENUM('Y', 'N') NOT NULL DEFAULT 'N', created_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(id), FOREIGN KEY(seller_id) REFERENCES seller(id) ON DELETE CASCADE
);
    [x] 주문 상세와 1:N
    [x] 상품 사진과 1(M):N(O)

[x] 상품 사진(Item_Image)
create table item_image (
id BIGINT AUTO_INCREMENT, item_id BIGINT NOT NULL, 
item_image_url VARCHAR(500) NOT NULL,
del_yn ENUM('Y', 'N') NOT NULL DEFAULT 'N', created_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(id), FOREIGN KEY(item_id) REFERENCES items(id) ON DELETE CASCADE
);

[x] 주문(Orders)
create table orders (
id BIGINT AUTO_INCREMENT, member_id BIGINT NOT NULL, payment_method VARCHAR(100) NOT NULL,
total_price INT NOT NULL, del_yn ENUM('Y', 'N') NOT NULL DEFAULT 'N', 
created_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(id), FOREIGN KEY(member_id) REFERENCES members(id) ON DELETE CASCADE
);
    [x] 주문 상세와 1(M):N(M)

[x] 주문 상세(Order_Details)
create table order_details (
id BIGINT AUTO_INCREMENT, item_id BIGINT NOT NULL, order_id BIGINT NOT NULL,
quantity INT NOT NULL DEFAULT 1,
del_yn ENUM('Y', 'N') NOT NULL DEFAULT 'N', created_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(id), FOREIGN KEY(item_id) REFERENCES items(id) ON DELETE CASCADE, FOREIGN KEY(order_id) REFERENCES orders(id) ON DELETE CASCADE, UNIQUE(order_id)
);