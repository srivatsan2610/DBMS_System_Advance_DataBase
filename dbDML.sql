
insert into USERS values (1000,'Steve','S','Smith','M','steves@gmail.com','2032032030','1988-03-10','user','Y','Y','N','steves','steve@1000');
insert into USERS values (1001,'Dhoni','M','Singh','M','dhoni@gmail.com','2032221320','1990-04-26','Admin','Y','Y','Y','dhonim','dhonim@1001');
insert into USERS values (1002,'Vinay','S','Patel','M','vinays@gmail.com','6078897415','1991-10-25','user','Y','N','N','vinays','vinays@1002');
insert into USERS values (1003,'Priya','','Menon','F','priya@gmail.com','1211211212','1994-12-02','user','N','Y','N','priya','priya@1003');
insert into USERS values (1004,'Roy','S','Philip','M','roy@gmail.com','2035468878','1988-02-15','user','Y','Y','N','roys','roys@1004');
insert into USERS values (1005,'Christain','L','John','M','chris@gmail.com','2032232225','1990-02-12','Admin','Y','Y','Y','chris','chris@1005');
insert into USERS values (1006,'Megha','M','Nair','F','megha@gmail.com','1011223233','1988-03-10','user','Y','Y','N','megham','megham@1006');
insert into USERS values (1007,'Julie','','Robert','F','julie@gmail.com','1055569989','1985-09-21','user','Y','Y','N','julie','julie@1007');
insert into USERS values (1008,'Vijay','I','Joseph','M','vijayi@gmail.com','7814459898','1980-06-22','user','Y','Y','N','vijayi','vijayi@1008');
insert into USERS values (1009,'Mark','','Smith','M','mark@gmail.com','1023656565','1981-10-29','user','N','Y','Y','mark2','mark@1009');

select count(*) from USERS;

insert into ROLE values ('Admin');
insert into ROLE values ('Manger');
insert into ROLE values ('User');

select count(*) from ROLE;

insert into PERMISSIONS values ('create_auction');
insert into PERMISSIONS values ('read_auction');
insert into PERMISSIONS values ('update_auction');
insert into PERMISSIONS values ('delete_auction');
insert into PERMISSIONS values ('read_all_auction');
insert into PERMISSIONS values ('update_all_user');
insert into PERMISSIONS values ('create_message');

select count(*) from PERMISSIONS;

insert into ROLE_PERMISSION values ('rp1','Admin','read_all_auction');
insert into ROLE_PERMISSION values ('rp2','Admin','read_auction');
insert into ROLE_PERMISSION values ('rp3','Admin','delete_auction');
insert into ROLE_PERMISSION values ('rp4','Admin','create_message');
insert into ROLE_PERMISSION values ('rp5','Manger','read_auction');
insert into ROLE_PERMISSION values ('rp6','Manger','update_all_user');
insert into ROLE_PERMISSION values ('rp7','Manger','create_message');
insert into ROLE_PERMISSION values ('rp8','User','create_message');

select count(*) from ROLE_PERMISSION;

insert into ROLE_USER values ('1000','rp4');
insert into ROLE_USER values ('1002','rp2');
insert into ROLE_USER values ('1001','rp5');
insert into ROLE_USER values ('1003','rp1');
insert into ROLE_USER values ('1005','rp8');
insert into ROLE_USER values ('1006','rp7');
insert into ROLE_USER values ('1009','rp7');
insert into ROLE_USER values ('1008','rp5');
insert into ROLE_USER values ('1004','rp1');
insert into ROLE_USER values ('1007','rp6');

select count(*) from ROLE_USER;

insert into SECURITY_QUESTIONS values ('qn1','What is the name of your pet?');
insert into SECURITY_QUESTIONS values ('qn2','What is your mothers maiden name?');
insert into SECURITY_QUESTIONS values ('qn3','When did you join your current company?');
insert into SECURITY_QUESTIONS values ('qn4','When is your anniversary?');
insert into SECURITY_QUESTIONS values ('qn5','What was the make of your first car?');

select count(*) from SECURITY_QUESTIONS;


insert into SECURITY_ANSWERS values ('qn1',1000, 'StephenJohn');
insert into SECURITY_ANSWERS values ('qn2',1001, 'Cat');
insert into SECURITY_ANSWERS values ('qn4',1002, 'DOG');
insert into SECURITY_ANSWERS values ('qn4',1003, 'MONKEY');
insert into SECURITY_ANSWERS values ('qn5',1004, 'BMW');
insert into SECURITY_ANSWERS values ('qn3',1005, '02-10-2010');
insert into SECURITY_ANSWERS values ('qn4',1006, 'John');

select count(*) from SECURITY_ANSWERS;


insert into AUCTION values (5000,TO_DATE('2017/03/03', 'yyyy/mm/dd'),TO_DATE('2017/03/03', 'yyyy/mm/dd'),'Car','','','','Nissan','white',102000,2000.00,'1.8S','A','2005','Good condition','1800',1001);
insert into AUCTION values (5001,TO_DATE('2017/02/02', 'yyyy/mm/dd'),TO_DATE('2017/03/10', 'yyyy/mm/dd'),'Car','','','','Toyota','Green',80000,2500.00,'ZV','A','2007','Nice condition','2100',1002);
insert into AUCTION values (5002,TO_DATE('2017/03/01', 'yyyy/mm/dd'),TO_DATE('2017/03/23', 'yyyy/mm/dd'),'Car','','','','Nissan','Blue',75000,4500.00,'2.2S','A','2010','Good condition','4000',1003);
insert into AUCTION values (5003,TO_DATE('2017/03/04', 'yyyy/mm/dd'),TO_DATE('2017/03/13', 'yyyy/mm/dd'),'Car','','','','Hyndai','Black',98000,2500.00,'','A','2005','Good condition','2250',1000);
insert into AUCTION values (5005,TO_DATE('2017/03/06', 'yyyy/mm/dd'),TO_DATE('2017/03/07', 'yyyy/mm/dd'),'Furniture','Wood','12x12x12','cot','','brown','',500.00,'','A','2015','Good condition','400',1008);
insert into AUCTION values (5006,TO_DATE('2017/03/03', 'yyyy/mm/dd'),TO_DATE('2017/03/23', 'yyyy/mm/dd'),'Furniture','Wood','18x200x20','dining table','','sandal','',780.00,'','A','2016','Good condition','700',1004);
insert into AUCTION values (5007,TO_DATE('2017/01/03', 'yyyy/mm/dd'),TO_DATE('2017/03/24', 'yyyy/mm/dd'),'Furniture','Wood','14x19x25','sofa','','black','',1000.00,'','A','2014','Perfect condition','850',1007);
insert into AUCTION values (5008,TO_DATE('2017/02/03', 'yyyy/mm/dd'),TO_DATE('2017/03/30', 'yyyy/mm/dd'),'Electronics','Cellphone','','','Apple','Silver','',450.00,'Iphone 6S','A','2016','Good condition','425',1005);
insert into AUCTION values (5004,TO_DATE('2017/01/03', 'yyyy/mm/dd'),TO_DATE('2017/03/08', 'yyyy/mm/dd'),'Electronics','Laptop','','','HP','Red','',335.00,'Spectra','A','2017','Good condition','315',1006);

select count(*) from AUCTION;

insert into BIDS_ON values (6000,5000,100,TO_DATE('2017/03/03', 'yyyy/mm/dd'),1001);
insert into BIDS_ON values (6001,5000,101,TO_DATE('2017/02/02', 'yyyy/mm/dd'),1002);
insert into BIDS_ON values (6002,5000,500,TO_DATE('2017/03/01', 'yyyy/mm/dd'),1002);
insert into BIDS_ON values (6003,5000,1800,TO_DATE('2017/03/04', 'yyyy/mm/dd'),1001);
insert into BIDS_ON values (6005,5001,98000,TO_DATE('2017/03/06', 'yyyy/mm/dd'),1002);
insert into BIDS_ON values (6006,5001,1000,TO_DATE('2017/03/03', 'yyyy/mm/dd'),1004);
insert into BIDS_ON values (6007,5001,335,TO_DATE('2017/01/03', 'yyyy/mm/dd'),1004);
insert into BIDS_ON values (6008,5002,101,TO_DATE('2017/02/03', 'yyyy/mm/dd'),1001);
insert into BIDS_ON values (6004,5002,101,TO_DATE('2017/01/03', 'yyyy/mm/dd'),1002);
 

 select count(*) from BIDS_ON;
 


