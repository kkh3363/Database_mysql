
use madangdb;

DROP TABLE if exists neworders;
DROP TABLE if exists newbook;
DROP TABLE if exists newcustmer;

create table newbook(
	bookid integer ,
    bookname varchar(20),
    publisher varchar(20),
    price	integer,
    primary key (bookid)
);

CREATE TABLE `newcustmer` (
  `custid` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`custid`)
) ;

CREATE TABLE `neworders` (
  `orderid` int NOT NULL,
  `custid` int DEFAULT NULL,
  `bookid` int DEFAULT NULL,
  `saleprice` int DEFAULT NULL,
  `orderdate` date DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  FOREIGN KEY (`bookid`) REFERENCES `newbook` (`bookid`),
  FOREIGN KEY (`custid`) REFERENCES `newcustmer` (`custid`)
) ;
