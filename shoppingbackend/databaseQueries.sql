CREATE TABLE category (
	id Int AUTO_INCREMENT,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
	
	CONSTRAINT pk_category_id PRIMARY KEY (id)
	
);

INSERT INTO category(name,description,image_url,is_active) VALUES('Laptop','This is some description for laptop!','CAT_1.png',true);
INSERT INTO category(name,description,image_url,is_active) VALUES('Television','This is some description for television!','CAT_2.png',true);
INSERT INTO category(name,description,image_url,is_active) VALUES('Mobile','This is some description for mobile!','CAT_3.png',true);


CREATE TABLE user_detail(
	id Int AUTO_INCREMENT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	role VARCHAR(50),
	enabled BOOLEAN,
	password VARCHAR(60),
	email VARCHAR(100),
	contact_number VARCHAR(15),
	
	CONSTRAINT pk_user_id PRIMARY KEY (id)
);


-- adding three users 
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Virat', 'Kohli', 'ADMIN', true, '$2a$10$grrZOefMpeAQq8b4K9502.sPjIC5lZwYv50bwcaI2AyGbUlf/01sq', 'vk@gmail.com', '8888888888');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Ravindra', 'Jadeja', 'SUPPLIER', true, '$2a$10$0OiDaq0uJwhadL56uwg0COl2qgVxhP.Vjwzyb8kLa.eokNq0/zZoC', 'rj@gmail.com', '9999999999');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Ravichandra', 'Ashwin', 'SUPPLIER', true, '$2a$06$i1dLNlXj2uY.UBIb9kUcAOxCigGHUZRKBtpRlmNtL5xtgD6bcVNOK', 'ra@gmail.com', '7777777777');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Khozema', 'Nullwala', 'USER', true, '$2a$06$4mvvyO0h7vnUiKV57IW3oudNEaKPpH1xVSdbie1k6Ni2jfjwwminq', 'kn@gmail.com', '7777777777');

CREATE TABLE product(
	id Int AUTO_INCREMENT,
	code VARCHAR(20),
	name VARCHAR(50),
	brand VARCHAR(50),
	description VARCHAR(255),
	unit_price DECIMAL(10,2),
	quantity INT,
	is_active BOOLEAN,
	category_id INT,
	supplier_id INT,
	purchases INT DEFAULT 0,
	views INT DEFAULT 0,
	
	CONSTRAINT pk_product_id PRIMARY KEY (id),
	CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),
	CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail (id)
);


INSERT INTO product(code,name,brand,description,unit_price,quantity,is_active,category_id,supplier_id,purchases,views) 
VALUES('PRDABC123DEFX','iPhone 5s','apple','This is one of the best phone available in market',38500,3,true,3,2,0,0);

INSERT INTO product(code,name,brand,description,unit_price,quantity,is_active,category_id,supplier_id,purchases,views) 
VALUES('PRDDEF123DEFX','Samsung s7','samsung','A smart phone by samsung!',32000,2,true,3,2,0,0);

INSERT INTO product(code,name,brand,description,unit_price,quantity,is_active,category_id,supplier_id,purchases,views)
VALUES('PRDPQR123WGTX','Google Pixel','google','This is one of the best android smartphone available in market',57000,5,true,3,2,0,0);

INSERT INTO product(code,name,brand,description,unit_price,quantity,is_active,category_id,supplier_id,purchases,views)
VALUES('PRDMNO123PQRX','Macbook Pro','apple','This is one of the best laptop available in market',54000,3,true,1,3,0,0);

INSERT INTO product(code,name,brand,description,unit_price,quantity,is_active,category_id,supplier_id,purchases,views)
VALUES('PRDABCXYZDEFX','Dell Latitude E6510','dell','This is one of the best laptop series available in market',48000,5,true,1,3,0,0);

CREATE TABLE address (
	id Int AUTO_INCREMENT,
	user_id int,
	address_line_one VARCHAR(100),
	address_line_two VARCHAR(100),
	city VARCHAR(20),
	state VARCHAR(20),
	country VARCHAR(20),
	postal_code VARCHAR(10),
	is_billing BOOLEAN,
	is_shipping BOOLEAN,
	CONSTRAINT fk_address_user_id FOREIGN KEY (user_id ) REFERENCES user_detail (id),
	CONSTRAINT pk_address_id PRIMARY KEY (id)
);

--adding address
INSERT INTO address(ADDRESS_LINE_ONE,ADDRESS_LINE_TWO,IS_BILLING,CITY,COUNTRY,POSTAL_CODE,IS_SHIPPING,STATE,USER_ID)
VALUES('101/B Jadoo Society, Krissh Nagar','Near Kaabil Store',TRUE,'Mumbai','India','400001',FALSE,'Maharashtra',1);
INSERT INTO address(ADDRESS_LINE_ONE,ADDRESS_LINE_TWO,IS_BILLING,CITY,COUNTRY,POSTAL_CODE,IS_SHIPPING,STATE,USER_ID)
VALUES('201/B Jadoo Society, Kishan Kanhaiya Nagar','Near Kudrat Store',FALSE,'Mumbai','India','400001',TRUE,'Maharashtra',2);
INSERT INTO address(ADDRESS_LINE_ONE,ADDRESS_LINE_TWO,IS_BILLING,CITY,COUNTRY,POSTAL_CODE,IS_SHIPPING,STATE,USER_ID)
VALUES('301/B Jadoo Society, Kishan Kanhaiya Nagar','Near Kudrat Store',FALSE,'Bangalore','India','400001',TRUE,'Karanataka',3);
INSERT INTO address(ADDRESS_LINE_ONE,ADDRESS_LINE_TWO,IS_BILLING,CITY,COUNTRY,POSTAL_CODE,IS_SHIPPING,STATE,USER_ID)
VALUES('B/10 LDA Colony','Alambagh',TRUE,'Lucknow','India','226001',FALSE,'U.P.',4);


CREATE TABLE cart (
	id Int AUTO_INCREMENT,
	user_id int,
	grand_total DECIMAL(10,2),
	cart_lines int,
	CONSTRAINT fk_cart_user_id FOREIGN KEY (user_id ) REFERENCES user_detail (id),
	CONSTRAINT pk_cart_id PRIMARY KEY (id)
);


CREATE TABLE cart_line (
	id Int AUTO_INCREMENT,
	cart_id int,
	total DECIMAL(10,2),
	product_id int,
	product_count int,
	buying_price DECIMAL(10,2),
	is_available boolean,
	CONSTRAINT fk_cartline_cart_id FOREIGN KEY (cart_id ) REFERENCES cart (id),
	CONSTRAINT fk_cartline_product_id FOREIGN KEY (product_id ) REFERENCES product (id),
	CONSTRAINT pk_cartline_id PRIMARY KEY (id)
);