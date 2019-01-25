 
create table USERS(
ubId varchar2(50) primary key,
fname varchar2(50),
mname varchar2(50),
lname varchar2(50),
sex char(1),
email varchar2(50),
phoneno number(15),
dateofbirth varchar2(15),
userType varchar2(10),
sellerFlag varchar2(1),
bidderFlag varchar2(1),
adminFlag varchar2(1),
username varchar2 (50) NOT NULL,
password varchar2 (50) NOT NULL );

 
create table ROLE(
rolename varchar2(50) primary key);

create table PERMISSIONS(
permissionCode varchar2(50) primary key);

 
create table ROLE_PERMISSION(
rolepermissionId varchar2(50) primary key,
rolename varchar2(50) references ROLE(rolename),
permissionCode varchar2(50) references PERMISSIONS(permissionCode)
);
 
 
create table ROLE_USER(
ubId varchar2(50) references USERS(ubId),
rolepermissionId varchar2(50) references ROLE_PERMISSION(rolepermissionId));

 
create table SECURITY_QUESTIONS(
questioncode varchar2(50) primary key,
question varchar2(1000));
 
create table SECURITY_ANSWERS(
questioncode varchar2(50) references SECURITY_QUESTIONS(questioncode),
ubid varchar2(50) references USERS(ubId),
answers varchar2(255));
 
create table AUCTION(
audId varchar2(50) primary key,
startdate DATE,
enddate DATE,
auctionType varchar2(50),
material varchar2(50),
dimensions varchar2(50),
typematerial varchar2(50),
brand varchar2(50),
color varchar2(50),
miles Number,
quotedprice Number(10,2),
model varchar2(50),
status varchar2(50),
year varchar2(50),
descr varchar2(50),
biddingprice Number(10,2),
ubid varchar2(50) references USERS(ubId));

 
create table SHIPPING_SUMMARY(
audId varchar2(50) references AUCTION(audId),
delivery_address varchar2(100),
delivery_method varchar2(100),
payment_method varchar2(50),
delivery_status varchar2(1),
bidderubid varchar2(50) references USERS(ubId)
);

create table BIDS_ON(
auction_bidder_Id Number primary key, 
audId varchar2(50) references AUCTION(audId),
 bidding_price Number(10,2),
createdDateTime  DATE,
bidderubid varchar2(50) references USERS(ubId)
);
 
create table MESSAGE(
audId varchar2(50) references AUCTION(audId),
messageType varchar2(50),
messagebody varchar2(1000),
ubid varchar2(50) references USERS(ubId));
 
create table FAVORITES(
audId varchar2(50) references AUCTION(audId),
creationDate DATE,
ubid varchar2(50) references USERS(ubid)); 
 
create table IMAGE(
audId varchar2(50),
imagepath varchar2(50)
);


create table FEEDBACK(
audId varchar2(50) references AUCTION(audId),
ratings varchar2(50),
comments varchar2(50),
ubid varchar2(50) references USERS(ubId));


