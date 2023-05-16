

-- table categories
CREATE TABLE categories (
	cate_id INT PRIMARY KEY,
	cat_name VARCHAR (255) NOT NULL
);
 -- table brands
CREATE TABLE brands (
	brand_id INT  PRIMARY KEY,
	brand_name VARCHAR (255) NOT NULL
);
-- table products
CREATE TABLE products (
	product_id INT  PRIMARY KEY,
	product_name VARCHAR (255) NOT NULL,
	bran_id INT NOT NULL,
	cat_id INT NOT NULL,
	model_year SMALLINT NOT NULL,
	price DECIMAL (10, 2) NOT NULL,
	FOREIGN KEY (cat_id) REFERENCES categories (cate_id) ,
	FOREIGN KEY (bran_id) REFERENCES brands (brand_id) 
);
-- table customers
CREATE TABLE customers (
	customer_id INT  PRIMARY KEY,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255) NOT NULL,
	cust_address VARCHAR (255)NULL ,
	zip_code int NULL,
);
-- table stores
CREATE TABLE stores (
	store_id INT  PRIMARY KEY,
	store_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25) NULL ,
	email VARCHAR (255) NULL,
	stor_address VARCHAR (255)NULL ,
	zip_code int NULL,
);
-- table staffs
CREATE TABLE staffs (
	staff_id INT  PRIMARY KEY,
	staff_f_name VARCHAR (50) NOT NULL,
	staff_l_name VARCHAR (50) NOT NULL,
	email VARCHAR (255) NOT NULL UNIQUE,
	phone VARCHAR (25),
	active int NOT NULL,
	sto_id INT NOT NULL,
	manager_id INT,
	FOREIGN KEY (sto_id) REFERENCES stores (store_id) ,
	FOREIGN KEY (manager_id) REFERENCES staffs (staff_id) 
);
-- table orders
CREATE TABLE orders (
	order_id INT  PRIMARY KEY,
	cust_id INT,
	order_status int NOT NULL,
	order_date DATE NOT NULL,
	required_date DATE NOT NULL,
	shipped_date DATE,
	st_id INT NOT NULL,
	stf_id INT NOT NULL,
	FOREIGN KEY (cust_id) REFERENCES customers (customer_id) ,
	FOREIGN KEY (st_id) REFERENCES stores (store_id) ,
	FOREIGN KEY (stf_id) REFERENCES staffs (staff_id) 
);
-- table order_items ==> (relation btween orders and products) (m:n)
CREATE TABLE order_items (
	ord_id INT,
	item_id INT,
	pro_id INT NOT NULL,
	quantity INT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	discount DECIMAL (4, 2) NOT NULL DEFAULT 0,
	PRIMARY KEY (ord_id, item_id),
	FOREIGN KEY (ord_id) REFERENCES orders (order_id) ,
	FOREIGN KEY (pro_id) REFERENCES products (product_id) 
);
