insert into categories(cate_id,cat_name)
values 
(1,'Scooter'),
(2, 'moped'),
(3, 'underbone'),
(4, 'miniature'),
(5, 'pocket'),
(6,'three_wheeled');

insert into brands(brand_id,brand_name)
values
(1,'Trek Bicycle Corporation'),
(2,'Specialized bicycle Components'),
(3,'GT Bicycle'),
(4, 'Fuji Bikes'),
(5, 'Scott Sports'),
(6,'Electra Bicycle Company');

insert into customers( customer_id,first_name,last_name,phone,email,cust_address,zip_code)
values 
(1, 'Jacob','Smith','100000','jacob@gmail.com','15-John Street','35004'),
(2, 'Madison','Johnson','100001','madison@gmail.com','150-court Street','35005'),
(3, 'Joshua','William','100002','Joshua@gmail.com','16-2nd Street','35006'),
(4, 'Emma','Jones','100004','emma@gmail.com','14-Sth Street North','35008'),
(5, 'Alexis','Davis','100011','alexis@gmail.com','190-canal Street','35009'),
(6, 'Grace','White','100090','grace@gmail.com','500 Essex court','35012');

insert into staffs
(staff_id,staff_f_name,staff_l_name,email,phone,active,sto_id,
manager_id)
values 
(1, 'Alice','Smith','alice@bikestore.com','123-4567',1,1,2),
(2, 'Bob','jhons','bob@bikestore.com','234-5678',1,2,1),
(3, 'Charlie','Brown','charlie@bikestore.com','345-6789',1,3,1),
(4, 'David','Green','david@bikestore.com','456-7890',0,2,3),
(5, 'Eve','White','eve@bikestore.com','567-8910',1,4,2);
select*from staffs;

 insert into orders 
 (order_id,cust_id,order_status,order_date,required_date
 ,shipped_date,st_id,stf_id)
 values 
 (1,1,1,'2023-05-01','2023-05-10',null,1,1),
 (2,2,2,'2023-05-11','2023-05-08',null,2,2),
 (3,3,3,'2023-05-03','2023-05-12',null,3,3),
 (4,4,4,'2023-05-13','2023-05-09',null,4,4),
 (5,5,5,'2023-05-05','2023-05-14',null,5,5);
 select*from orders;


 insert into products
 (product_id,product_name,bran_id,cat_id,model_year,price)
  values 
  (1, 'Mountains Bike',1,1,2023,599.99),
  (2, 'Road Bike',2,2,2023,699.99),
  (3, 'Hybrid Bike',3,3,2023,499.99),
  (4, 'Electric Bike',4,4,2023,999.99),
  (5, 'Folding Bike',5,5,2023,399.99);
select*from orders

insert into stores(store_id, store_name, email, phone,stor_address,zip_code)
values
(1,'Bike world','bikeworld@bikestore.com','111-1111','123 Main Street,New yourk','10001'),
(2,'bike zone','bikezone@bikestore.com','222-2222','456 park Avenue,chicago','60601' ),
(3, 'Bike Land','bikeland@bikestore.com','333-3333','789 Broadway,Los Angeles','90001'),
(4, 'Bike Shop','bikeshop@bikestore.com','444-4444','101 First Street, Houston','77001'),
(5, 'Bike Mart','bikemart@bikestore.com','555-5555','202 Second Avenue, phonix','85001');


INSERT INTO order_items(ord_id ,
	item_id ,pro_id ,quantity ,list_price ,discount)  
	values
     (5,1,5,7,499,0.25),
	 (2,2,1,2,599.99,0.07),
	 (4,3,2,10,699.99,0.05),
	 (3,4,2,1,999.99,0.2),
	 (1,5,5,1,399.99,0.12);



select * from categories;
select * from brands;
--select * from products;
select * from customers;
select * from stores;
select * from staffs;
select * from orders;
select * from products;

select *from  order_items;
