CREATE table Artist(Artist_ID int AUTO_INCREMENT not null primary key, 
					FirstName varchar(20) not null, 
					LastName varchar(20) not null, 
					Address varchar(100) not null, 
					Phone int not null);


insert into Artist(FirstName,LastName,Address,Phone) 
		values("Abebe","Tesema","5 kilo",978780),
		("Daniel","Tigabu","6 kilo",934248),
		("Asfawu","Beyene","4 kilo",942342),
		("Abenezer","Bekele","Adama",934240);
CREATE table Employee(Employee_id int AUTO_INCREMENT not null primary key, 
					FirstName varchar(20) not null, 
					LastName varchar(20) not null,
					DOE varchar(20) not null, 
					DOR varchar(100) not null, 
					task varchar(100) not null,
					salary float not null);

insert into Employee(FirstName,LastName,DOE,DOR,task,salary) 
		values("Leul","Belete","23/11/2004","2/4/2040","ticket saler",4880.50),
		("Ermias","Tesema","21/1/2011","15/5/2030","Manager",7880.50),
		("Kebede","Asres","20/7/2009","5/6/2039","secretery",5880.50),
		("Yared","Yohannis","15/8/2012","22/7/2041","cleaning service",3880.50),
		("Dawit","Beyene","5/4/2001","25/8/2035","guide",6880.50);
create table Visitors(Customer_ID int primary key not null auto_increment, 
			Customer_Email varchar(40) not null unique, 
			First_Name varchar(40) not null, 
			Last_Name varchar(40) not null, 
			Address varchar(100) not null, 
			Phone_Number int not null unique);

insert into Visitors(Customer_ID, Customer_Email, First_Name, Last_Name, Address, Phone_Number) 
			values(1, "abelg@gmail.com", "Abel", "Girma", "AddisAbaba/KolfeKeranyo/100", 0910564738), 
				(2, "bilalmame@yahoo.com", "Bilal", "Muhammed", "AddisAbaba/Lideta/200", 0921904378), 
				(3, "chalimak@gmail.com", "Chala", "Mekonnen", "AddisAbaba/AddisKetema/300", 0931427586);		
create table Sold_paintings(Painting_ID int primary key not null , 
				B_name varchar(25) not null , 
				Date varchar(20) not null, 
				foreign key(Painting_ID) references Paintings(Painting_ID));

insert into Sold_paintings(Painting_ID, B_name, Date) 
				values("1", "daniel Jira","2022"), 
					("2", "Bati gada","2021"), 
					("3", "Lenco Bati","2020");

create table Orders(Order_ID int primary key not null auto_increment, 
			Order_price varchar(50) not null, 
			Order_date varchar(50) not null, 
			Due_date varchar(50) not null);

insert into Orders(Order_ID, Order_price, Order_Date, Due_date)
			values("1", "$550", "May 20,2022", "July 23,2022"), 
				("2", "$770", "January 05,2022", "April 15,2022"),
				("3", "$735", "November 10,2021", "May 2,2021")
                                ,("4","$820", "December 4,2020", "March 10,2020");
create table Rental(
Rental_ID int primary key not null, 
Rental_start_date varchar(50) not null unique, 
Rental_end_date varchar(50) not null, 
Rental_price varchar(500) not null
);

insert into Rental(Rental_ID, Rental_start_date, Rental_end_date, Rental_price) 
values(001, "11/07/22", "10/08/22", "2,000/week"), 
      (002, "28/06/22", "21/07/22", "10,000/week"), 
      (003, "1/05/22", "13/07/22", "1100/week"),
      (004, "4/07/22", "30/07/22", "20,500/week");
create table Exhibition(
Exhibition_ID int primary key not null, 
Gallery_name varchar(100) not null, 
Start_date varchar(50) not null, 
End_date varchar(50) not null, 
Location varchar(100) not null
);

insert into Exhibition(Exhibition_ID, Gallery_name, Start_date, End_date, Location)
values(011, "The Space of Creativity", "02/08/22", "12/08/22", "Bole"), 
      (012, "Oromiyaa Art Gallery", "21/07/22", "10/08/22", "4kilo"),
      (013, "Art Hub", "29/07/22", "28/08/22", "4kilo"),
      (014, "Vivas Fine Art", "2/07/22", "27/07/22", "Piassa");

create table Payment(
Payment_ID int not null primary key, 
Payment_bill varchar(50) not null, 
Payment_status varchar(100) not null,         
Payment_type varchar(50) not null, 
Payment_date varchar(50) not null
);

insert into Payment(Payment_ID, Payment_bill, Payment_status, Payment_type, Payment_date)
values(020, "21,000 birr", "complete","in cash", "01/07/22"),
      (021, "17,000 birr", "complete","in cash", "06/07/22"),
      (022, "102,000 birr", "partially completed","in check", "05/08/22"),
      (023, "2,000 birr", "complete","credit card", "20/07/22");


	create table Paintings(Painting_ID int primary key not null auto_increment, 
				Title varchar(40) not null, 
				Published_Year year(4) not null, 
				Type varchar(40) not null, 
				Cost float not null);

	insert into Paintings(Painting_ID, Title, Published_Year, Type, Cost)
				values(1, "The empowered woman", 2003, "Realism", 15000), 
					(2, "Ethiopian beauty", 1980, "Portrait", 25000),
					(3, "Ethiopian colours", 2001, "Abstract", 16500);

	create table Auctions(Auctioned_ID int not null primary key, foreign key(Auctioned_ID) references Paintings(Painting_ID), 
				Auctioned_Name varchar(20) not null, 
				Minimum_Bid float not null, 
				Auction_Date varchar(20) not null, 
				Auction_Address varchar(20) not null);

	insert into Auctions(Auctioned_ID, Auctioned_Name, Minimum_Bid, Auction_Date, Auction_Address)
				values(2, "Ethiopian beauty", 25000, "10/7/2022", "Eliana hotel");
				



CREATE table Gallery(Gallery_ID int AUTO_INCREMENT not null primary key, 
					 Gallery_Name varchar(40) not null,
					 URL varchar(40) not null, 
					 Location varchar(100) not null );


insert into Gallery(Gallery_Name,URL,Location) 
		values("The Space of Creativity","www.TheSpaceOfCreativity.com", "Bole"),
		("The Art Zone","www.TheArtZone.com", "Piassa"),
		("Art Hub","www.ArtHub.com", "4 kilo"),
		("Vivas Fine Art","www.VivasFineArt.com", "Bole");



