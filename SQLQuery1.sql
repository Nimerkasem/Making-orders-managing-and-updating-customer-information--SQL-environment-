create database Oro2000
create table branch(
Bnum int not null  primary key,
"address" varchar(50),
"open" varchar(10) not null,
"close" varchar(10) not null,
idManagement int foreign key references Management(id)
);
create table Management(
id int not null  primary key,
Fname varchar(50) not null,
Lname varchar(50) not null,
birthday date,
city varchar(50),
hourly int,
Phone int,
Bnum int
);
************************
alter table Management
add foreign key (Bnum) references branch(Bnum)
************************
create table worker(
id int not null  primary key,
Fname varchar(50) not null,
Lname varchar(50) not null,
birthday date,
city varchar(50),
hourly int,
Phone int,
Bnum int foreign key references branch(Bnum)
);
create table Maintenance(
id int not null  primary key,
Fname varchar(50) not null,
Lname varchar(50) not null,
birthday date,
city varchar(50),
hourly int,
Phone int,
Bnum int foreign key references branch(Bnum)
);

create table "order"(
id int not null primary key,
Onum int not null,
Odate date,
TotalAmount int,
Bnum int foreign key references branch(Bnum),
customerId int foreign key references Customer(id),
);
create table ProductOrder(
id int not null,
productId int,
orderId int,
Price int,
Quantity int,
constraint PKProductOrder primary key (id),
constraint FKProductOrderOrder foreign key (orderId) references "order"(id),
constraint FKProductOrderProduct foreign key (productId) references Product(id),
);
create table Product(
id int not null  primary key,
PName varchar (50),
UnitePrice int,
IsDiscontinued bit,
PrinterId int foreign key references Printer(id),
);
create table Printer(
id int not null  primary key,
fullname varchar (50),
Phone int,
);
create table Customer(
id int not null  primary key,
Fname varchar(50) not null,
Lname varchar(50) not null,
city varchar(50),
country varchar(50),
Phone int,
);

************************************************************
insert into printer values (10, 'waleed armaly',0546198888);
insert into printer values (20, 'sameh lebnase',0546197777);
insert into printer values (30, 'morad safiya',0546196666);
insert into printer values (40, 'firas abd',0546195555);
insert into printer values (50, 'jad sobeh',0546544856);


insert into  Product values (11, 'spot',25,0,null);
insert into  Product values (12, 'plafon',90,0,50);
insert into  Product values (13, 'shandaleer',790,1,10);
insert into  Product values (15, 'out side lamp',99,0,30);
insert into  Product values (16, 'projector',150,0,20);
insert into  Product values (17, 'wall lamp',120,1,40);
insert into  Product values (18, 'duble shandaleer',1590,1,40);


insert into  Customer values (31,'nimer','kasem','kfar yasef','israel',054657811 );
insert into  Customer values (32,'mohamad','kasem','kfar yasef','israel',055248321);
insert into  Customer values (33,'eyal','sef','haifa','israel',053265656 );
insert into  Customer values (34,'shoshe','bar','akko','israel',054956323 );
insert into  Customer values (35,'sajeda','ali','nazarith','israel',056484321 );
insert into  Customer values (36,'nader','gay','haifa','israel',054587532 );
insert into  Customer values (37,'matan','con','Tiberias','israel',057896452);
insert into  Customer values (38,'ehab','faris','kfar yasef','israel',053254684 );
insert into  Customer values (39,'fade','kayal','maker','israel',058531554 );
insert into  Customer values (40,'dor','alon','kfar yasef','israel',056548988 );
insert into  Customer values (41,'aya','salem','kabul','israel',051236548 );
insert into  Customer values (42,'zoya','saar','Tiberias','israel',051548599 );
insert into  Customer values (43,'yaser','kaakosh','kfar yasef','israel',058835454 );
insert into  Customer values (44,'basel','abrek','Afula','israel',059876256 );

insert into Management values(111,'ehab','shaaban','12/05/1976','nazarith',50,0549575487,null);
insert into Management values(222,'hasan','sanaala','1988/02/20','nazarith',45,0508948798,null);
insert into Management values(333,'wagdy','hamed','1970/07/06','nazarith',65,0546478203,null);
insert into Management values(444,'naseem','hamed','1978/05/08','nazarith',58,0564487897,null);
insert into Management values(555,'waseem','hamed','1976/10/29','nazarith',70,0546656474,null);

insert into branch values(101,'kfar yasef','08:00','22:00',1111);
insert into branch values(202,'haifa','10:00','22:00',2222);
insert into branch values(303,'afula','08:30','21:00',3333);
insert into branch values(404,'Tiberias','09:00','22:00',4444);
insert into branch values(505,'nazarith','08:30','22:30',5555);

insert into Maintenance values(1111,'omar','kas','1999/02/14','kfar yasef',45,0546565656,101);
insert into Maintenance values(2222,'ameer','sobeh','2000/08/23','kfar yasef',40,0547797878,202);
insert into Maintenance values(3333,'raz','kohen','1982/04/30','akko',40,0541134897,303);
insert into Maintenance values(4444,'eyal','kris','1989/09/17','kabol',47,0543197864,404);
insert into Maintenance values(5555,'sami','ofer','1987/10/15','keryat yam',44,0524789345,505);

insert into worker values(319117628,'naser','ahmd','1998/02/25','naharya',30,0546254897,101);
insert into worker values(521469852,'emad','saleh','1997/07/27','kfar yasef',30,0547361158,101);
insert into worker values(84574958,'yasmeen','khaleefa','1978/09/18','shfaraam',30,052487625,101);
insert into worker values(048762952,'ahmad','saleh','1988/04/16','haifa',32,0534879354,202);
insert into worker values(974496588,'emad','haj','1995/05/05','haifa',32,052684587,202);
insert into worker values(248795684,'ashraf','khader','1999/04/04','karmial',32,0557874596,303);
insert into worker values(154787896,'firas','sharif','1988/06/15','Tiberiar',33,0528796248,303);
insert into worker values(845796214,'nour','hamed','1978/12/12','haifa',32,0554879542,404);
insert into worker values(654789654,'safaa','ali','1997/11/01','nazarith',33,0524879621,505);

insert into "Order" values (111,1011,'2005/02/12',2500,101,31);
insert into "Order" values (112,1012,'2015/07/12',1490,101,32);
insert into "Order" values (113,1012,'2006/02/03',1990,101,44);
insert into "Order" values (114,2021,'2005/12/02',6523,303,41);
insert into "Order" values (115,2022,'2008/05/07',180,404,36);
insert into "Order" values (116,2023,'2009/01/15',99,202,35);
insert into "Order" values (117,3031,'2008/07/20',790,202,43);
insert into "Order" values (118,3032,'2007/09/26',450,404,40);
insert into "Order" values (119,4041,'2017/04/08',1272,303,37);
insert into "Order" values (200,4042,'2016/09/05',2650,202,33);
insert i

insert into ProductOrder values (11, 18,111,2500,100);
insert into ProductOrder values (12, 17,112,1490,20);
insert into ProductOrder values (13, 16,113,2500,100);
insert into ProductOrder values (14, 15,114,2500,100);
insert into ProductOrder values (15, 13,114,2570,100);
insert into ProductOrder values (16, 13,116,2500,100);
insert into ProductOrder values (17, 12,117,2500,100);
insert into ProductOrder values (18, 11,118,2500,100);
insert into ProductOrder values (19, 15,119,2500,100);
insert into ProductOrder values (20, 17,112,2500,100);
insert into ProductOrder values (21, 12,200,2500,100);
insert into ProductOrder values (22, 13,115,2550,100);

************************************************************
/*שאלת עדכון*/
/*לעדכן למנהל סניף כפר יאסיף את מיקום המיגורים לכפר יאסיף*/
select Bnum
from branch
where "address"='kfar yasef'

update Management
set city='kfar yasef'
where Bnum=101

/*לעדכן לכל צוות  סניף טבריה את השכר השעתי +2*/
select Bnum
from branch
where "address"='Tiberias'

update Management
set hourly=hourly+2
where Bnum=404

update Maintenance
set hourly=hourly+2
where Bnum=404

update Worker
set hourly=hourly+2
where Bnum=404
************************************************************
/*שאילת הצגה(select)*/
/* להציג לכל לקוח לפי ה"אי די" שלו מאיזה סניף הוא ביצע הזמנה */
select Customer.id as "Customer ID" ,branch."address" as "Branch address"
from Customer,branch,"order"
where Customer.id="order".customerId  and "order".Bnum=branch.Bnum


/*להציג לכל עובד שם מלא ומיקום מיגורים*/
select worker.Fname +' '+ worker.Lname as "Full Name",worker.city as "Worker adress" 
from worker,branch
where  branch.Bnum=worker.Bnum and branch.address != worker.city 
************************************************************
/*שאילןת מחיקה*/
/*למחוק העובד הכי גדול מבחינת גיל מסניף כפר יאסיף*/
select worker.Fname,worker.birthday
from worker,branch
where worker.Bnum=branch.Bnum and branch.address='kfar yasef' 

delete from worker
where Fname='yasmeen'

************************************************************
/*שאילתות מחיקה באמצעות תת שאילתה*/
/*למחוק את המוצר הכי זול */
 select top 1 id
from product
Order by UnitePrice
/*11*/

select ProductOrder.id
from ProductOrder
where productId=11

 delete ProductOrder
 from ProductOrder
 where orderId=118


 delete Product
 from Product
 where id=11

************************************************************
 /* שאילתות join*/
 /* להציג את המוצרים שהמחיר שלהם גדול מ70 וקטן מ1000 וגם ישלהם צבע*/
  select Pname,UnitePrice
 from product
right join printer
on product.printerid=printer.id
 where UnitePrice >70 and UnitePrice<1000
************************************************************
 /*להציג את מחיר ההזמנה הכי יקרה שעשה לקוח */
 select  top 1 max(totalamount) as maxcustomerorder
from "order"
 join Customer
on "order".customerId=Customer.id
************************************************************
/* להציג מספר המוצרים שיש להם הנחה ובוצע עליהם הזמנה*/
select count(productid) as OrdersNum
from productorder
join product on productorder.productid=product.id
where IsDiscontinued=1
************************************************************\
/*להציג לכל סניף המנהל שלו תממוין לפי שכר המנהל */
select Fname+' '+Lname as "Full Name", branch.address,hourly
from management
left join branch
on branch.Bnum=Management.Bnum
order by(hourly)
************************************************************
/*להציג את כל הלקוחות שאין להם הזמנות */
select Fname
from Customer
left join "order"
on Customer.id="order".CustomerId
where "order".Id is null
************************************************************
/* להציג את המוצרים שאפשר לצבוע ולכל מוצר מי הצבע שלו*/
select Printer.fullname,Product.PName
from Printer
join Product
on Printer.id=Product.PrinterId
************************************************************
use Orot2000
************************************************************

