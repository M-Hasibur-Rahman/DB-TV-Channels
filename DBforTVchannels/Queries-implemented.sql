
--CREATE TABLE Category (
--    Category_ID int NOT NULL PRIMARY KEY, 
--    Channel_Category char(30) NOT NULL,
--);

--CREATE TABLE Channel (
--    Channel_ID int NOT NULL PRIMARY KEY,
--    Channel_Name char(30) NOT NULL,
--    Category_ID int, CONSTRAINT FK_1 FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID),
--    Expiry datetime NOT NULL
--);

--CREATE TABLE Viewers (
--    Email varchar(50) NOT NULL PRIMARY KEY,
--    Username char(30) NOT NULL,
--    Country char(30) NOT NULL
--);

--CREATE TABLE ViewerRequest (
--    Viewer_ID varchar(50) NOT NULL, CONSTRAINT FK_2 FOREIGN KEY (Viewer_ID) REFERENCES Viewers(Email),
--    Requested_Date_Time datetime NOT NULL,
--    Requested_Channel_ID int NOT NULL CONSTRAINT FK_3 FOREIGN KEY (Requested_Channel_ID) REFERENCES Channel(Channel_ID),
--    Current_Status varchar(50) NOT NULL,
--	Current_Status_Date_Time datetime NOT NULL,
--	primary key(Viewer_ID,Requested_Date_Time,Requested_Channel_ID)
--);

--CREATE TABLE Server_s (
--    Server_ID int NOT NULL PRIMARY KEY, 
--    Server_Name char(30) NOT NULL,
--    Capacity int NOT NULL,
--    Current_Views int NOT NULL,
--	Creation_Date_Time datetime NOT NULL,
--	Destruction_Date_Time datetime 
--);

--CREATE TABLE Server_User (
--    Server_ID int NOT NULL, CONSTRAINT FK_6 FOREIGN KEY (Server_ID) REFERENCES Server_s(Server_ID),
--    Email varchar(50) NOT NULL, CONSTRAINT FK_7 FOREIGN KEY (Email) REFERENCES Viewers(Email),
--    primary key(Server_ID,Email)
--);

--CREATE TABLE Channel_Server (
--    Server_ID int NOT NULL, CONSTRAINT FK_4 FOREIGN KEY (Server_ID) REFERENCES Server_s(Server_ID),
--    Channel_ID int NOT NULL, CONSTRAINT FK_5 FOREIGN KEY (Channel_ID) REFERENCES Channel(Channel_ID),
--    primary key(Server_ID,Channel_ID)
--);

Insert into dbo.Channel(Channel_ID, Channel_Name, Category_ID, Expiry)
values (1,'HBO',10,'20240423 10:34:09 AM');
Insert into dbo.Channel(Channel_ID, Channel_Name, Category_ID, Expiry)
values (2,'CartoonNetwork',11,'20250423 12:34:09 PM');
Insert into dbo.Channel(Channel_ID, Channel_Name, Category_ID, Expiry)
values (3,'MTV',12,'20250419 11:34:34 AM');
Insert into dbo.Channel(Channel_ID, Channel_Name, Category_ID, Expiry)
values (4,'ABC',13,'20250411 12:45:32 PM');
Insert into dbo.Channel(Channel_ID, Channel_Name, Category_ID, Expiry)
values (5,'SevenNetwork',14,'20250414 16:30:10 PM');


Insert into dbo.Category(Category_ID, Channel_Category)
values (10,'Comedy');
Insert into dbo.Category(Category_ID, Channel_Category)
values (11,'Animation');
Insert into dbo.Category(Category_ID, Channel_Category)
values (12,'Entertainment');
Insert into dbo.Category(Category_ID, Channel_Category)
values (13,'Sports');
Insert into dbo.Category(Category_ID, Channel_Category)
values (14,'Action');


Insert into dbo.Viewers(Email, Username, Country)
values ('rhss@gmail.com','Rohans','India');
Insert into dbo.Viewers(Email, Username, Country)
values ('goji@gmail.com','German','Turkey');
Insert into dbo.Viewers(Email, Username, Country)
values ('simon_98@gmail.com','Simon','USA');
Insert into dbo.Viewers(Email, Username, Country)
values ('frk19@gmail.com','Frank','Scotland');
Insert into dbo.Viewers(Email, Username, Country)
values ('sven@gmail.com','Svensson','Sweden');


Insert into dbo.ViewerRequest(Viewer_ID, Requested_Date_Time, Requested_Channel_ID, Current_Status, Current_Status_Date_Time)
values ('rhss@gmail.com','20210423 10:34:09 AM',2,'served','20210621 11:34:09 PM');
Insert into dbo.ViewerRequest(Viewer_ID, Requested_Date_Time, Requested_Channel_ID, Current_Status, Current_Status_Date_Time)
values ('simon_98@gmail.com','20210423 10:34:09 AM',1,'closed','20210423 11:40:10 PM');
Insert into dbo.ViewerRequest(Viewer_ID, Requested_Date_Time, Requested_Channel_ID, Current_Status, Current_Status_Date_Time)
values ('frk19@gmail.com','20210423 10:34:09 AM',5,'open','20210906 03:56:22 PM');
Insert into dbo.ViewerRequest(Viewer_ID, Requested_Date_Time, Requested_Channel_ID, Current_Status, Current_Status_Date_Time)
values ('rhss@gmail.com','20210423 10:34:09 AM',4,'rejected','20211120 09:24:24 PM');
Insert into dbo.ViewerRequest(Viewer_ID, Requested_Date_Time, Requested_Channel_ID, Current_Status, Current_Status_Date_Time)
values ('simon_98@gmail.com','20210423 10:34:09 AM',3,'served','20210715 07:14:23 PM');
Insert into dbo.ViewerRequest(Viewer_ID, Requested_Date_Time, Requested_Channel_ID, Current_Status, Current_Status_Date_Time)
values ('frk19@gmail.com','20210423 10:34:09 AM',2,'served','20200501 05:37:22 PM');
Insert into dbo.ViewerRequest(Viewer_ID, Requested_Date_Time, Requested_Channel_ID, Current_Status, Current_Status_Date_Time)
values ('sven@gmail.com','20210423 10:34:09 AM',1,'rejected','20200119 10:23:39 PM');
Insert into dbo.ViewerRequest(Viewer_ID, Requested_Date_Time, Requested_Channel_ID, Current_Status, Current_Status_Date_Time)
values ('rhss@gmail.com','20210423 10:34:09 AM',4,'open','20230213 18:27:59 PM');
Insert into dbo.ViewerRequest(Viewer_ID, Requested_Date_Time, Requested_Channel_ID, Current_Status, Current_Status_Date_Time)
values ('goji@gmail.com','20210423 10:34:09 AM',2,'closed','20220821 11:15:19 PM');
Insert into dbo.ViewerRequest(Viewer_ID, Requested_Date_Time, Requested_Channel_ID, Current_Status, Current_Status_Date_Time)
values ('sven@gmail.com','20210423 10:34:09 AM',3,'served','20190424 01:18:29 PM');
Insert into dbo.ViewerRequest(Viewer_ID, Requested_Date_Time, Requested_Channel_ID, Current_Status, Current_Status_Date_Time)
values ('goji@gmail.com','20210423 10:34:09 AM',1,'closed','20190521 12:45:29 PM');


Insert into dbo.Server_User(Server_ID, Email)
values (41,'sven@gmail.com');
Insert into dbo.Server_User(Server_ID, Email)
values (42,'goji@gmail.com');
Insert into dbo.Server_User(Server_ID, Email)
values (43,'sven@gmail.com');
Insert into dbo.Server_User(Server_ID, Email)
values (44,'rhss@gmail.com');
Insert into dbo.Server_User(Server_ID, Email)
values (40,'frk19@gmail.com');
Insert into dbo.Server_User(Server_ID, Email)
values (40,'sven@gmail.com');


Insert into dbo.Channel_Server(Server_ID, Channel_ID)
values (40,2);
Insert into dbo.Channel_Server(Server_ID, Channel_ID)
values (42,4);
Insert into dbo.Channel_Server(Server_ID, Channel_ID)
values (41,2);
Insert into dbo.Channel_Server(Server_ID, Channel_ID)
values (44,3);
Insert into dbo.Channel_Server(Server_ID, Channel_ID)
values (42,1);
Insert into dbo.Channel_Server(Server_ID, Channel_ID)
values (43,5);

Insert into dbo.Server_s(Server_ID, Server_Name, Capacity, Current_Views, Creation_Date_Time, Destruction_Date_Time)
values (40,'DNS',5000,1543,'20180821 11:15:19 AM','20180821 11:15:19 AM');
Insert into dbo.Server_s(Server_ID, Server_Name, Capacity, Current_Views, Creation_Date_Time, Destruction_Date_Time)
values (41,'Microsoft',12000,11988,'20180821 11:15:19 AM','20180821 11:15:19 AM');
Insert into dbo.Server_s(Server_ID, Server_Name, Capacity, Current_Views, Creation_Date_Time, Destruction_Date_Time)
values (42,'ICP',6000,4562,'20180821 11:15:19 AM','20180821 11:15:19 AM');
Insert into dbo.Server_s(Server_ID, Server_Name, Capacity, Current_Views, Creation_Date_Time, Destruction_Date_Time)
values (43,'Windows',24000,19888,'20180821 11:15:19 AM','20180821 11:15:19 AM');
Insert into dbo.Server_s(Server_ID, Server_Name, Capacity, Current_Views, Creation_Date_Time, Destruction_Date_Time)
values (44,'Regix',15000,13987,'20180821 11:15:19 AM','20180821 11:15:19 AM');


--Part2. 3)

update Server_s 
set Current_Views= (select count(*) from Server_User
where Server_User.Server_ID=Server_s.Server_ID);

--Part3)
--Design of Indexes
--First of all we can agree that Primary keys are already clustered indexes and that foregn keys that are not primary should be indexed as non-clustered indexes.
--We can create indexes on Channel_Server’s Server_ID,Channel_ID and reorganize data by Serve_ID then Channel_ID as it will enable us to check a Channel User faster and what Server it is watching and then the corresponding Channel_ID. This is unique.
--And so we create a non-clustured index of reflecting above information:
Create NONCLUSTERED Index ChannelUserServerID
ON Channel_Server (Server_ID,Channel_ID)

--Similarly, with the same reason above for Server_User we
--Create an index on Server_User Server_ID,Email and reorganize data by Server_ID then Channel_ID which is non-clustured and is not unique
Create NONCLUSTERED Index ServerUserEmail
ON Server_User (Server_ID,Email)

--We can create the below index since, Channel_Category is not that frequent and is not --updated that frequently
Create NONCLUSTERED Index CatIDinChannel
ON Channel (Category_ID)
 
--We can create an index on Category based on Category_ID to find channels based on that category faster.
--non-clustered including channel Category
Create NONCLUSTERED Index ChanCatinCat
ON Category (Category_ID)
INCLUDE (Channel_Category)

--We can index Viewers based on the email/viewer_id(which is also email) to query the viewers existence as a viewer and its requests
--non-clustered and unique
Create NONCLUSTERED Index Viewer_user_id
ON Viewers (Email)

--non-clustured and not unique
Create NONCLUSTERED Index Viewer_user_id
ON ViewerRequest (Viewer_ID)

--We can create index to check whether a server is about to be destructed or not
--non-clustured and unique
Create NONCLUSTERED Index serverdest
ON Server_s (Server_ID,Destruction_Date_Time)

--SImilarly a index of viewer request and its status can be made 
--non-clustured and unique
Create NONCLUSTERED Index viewerstat
ON ViewerRequest (Viewer_ID,Current_Status)


--Part4 1) 1.For each viewer show channels that have never been requested by that viewer.

--select Viewers.Username, Channel_Name from Viewers  JOIN Channel ON NOT EXISTS (select Username from Viewers where EXISTS(select * from ViewerRequest where Viewers.Email = ViewerRequest.Viewer_ID)) GROUP BY Username,Channel_Name;
--select distinct vi.Username from Viewers vi 
--join ViewerRequest vr on vi.Email = vr.Viewer_ID
--where EXISTS 
--(select * from [Channel] ch 
--join ViewerRequest vr on ch.Channel_ID=vr.Requested_Channel_ID
--where vr.Requested_Channel_ID = ch.Channel_ID
--) Group by Username;

--select Username, Channel_Name from Viewers JOIN Channel ON NOT EXISTS (select Username from Viewers where EXISTS(select * from ViewerRequest where Viewers.Email = ViewerRequest.Viewer_ID)) GROUP BY Username,Channel_Name;


select Viewers.Email, Channel.Channel_Name from Viewers, Channel,ViewerRequest where
(Viewers.Email=ViewerRequest.Viewer_ID and (Channel.Channel_ID not in 
(select ViewerRequest.Requested_Channel_ID as Channel_ID from ViewerRequest where ViewerRequest.Viewer_ID=Viewers.Email))) 
group by Channel_Name,Viewers.Email			

--2.Identify channels for which the average viewing time per viewer exceeds average viewing time per user by 45%


--3.For each country list top 10 customers with largest ratio of total viewing time by total requests

--4.Identify 3 channels with largest share of short views among all completed views (status = ‘served’) A shot view is view for less than 15 sec.

--5.Identify customers who have already viewed every channel for total at least an hour in 2018.

--Part 5) 1.1.Assign an available server_id to the request by updating column server_id in table
--request with an available server_id and set request status to ‘served’ 
--Increase number of current_viewers by 1 for that server_id 

--declare @serv int;
--declare @statusrep varchar(30);

--declare res cursor local for


--open res

--fetch next from res into @serv, @statusrep

--while @@FETCH_STATUS=0
--Begin

--fetch next from res into @serv,@statusrep
--End

--close res
--deallocate res
--Requested channel in viewers then find all the servers that have chanell in the server channel.. out of all these server 
--check the no. of curr views of max


select * from Server_s;
select * from Channel_Server;
select * from ViewerRequest
order by Current_Status_Date_Time DESC; 

create or alter procedure storproc @req datetime, @mail varchar(30)
as 
begin
	declare @id int;
	declare @date datetime;
	declare @i int = 0;

	declare res cursor local for
	select ch.Channel_ID, ch.Expiry from Channel ch
	order by ch.Expiry ASC

	open res

	fetch next from res into @id, @date

	while @@FETCH_STATUS=0
	Begin
		IF (@date > @req)
			BEGIN
				SET @i = 1
				--- found
					IF ((select s.Capacity  from Server_s as s 
							where s.Server_ID IN (select Server_ID from Channel_Server cs where cs.Channel_ID = @id))> (select s.Current_Views  from Server_s as s 
							where s.Server_ID IN (select Server_ID from Channel_Server cs where cs.Channel_ID = @id)))
							BEGIN
							 PRINT 'KK';
							END
					ELSE 
						BEGIN
							INSERT INTO Server_s values (5, 'ran', 5, 0, getdate(), NULL);
							INSERT iNTO Channel_Server values (5, @id);
						END
				Break

			END
		ELSE
			BEGIN 
				fetch next from res into @id,@date
				continue
			END
	End
	
	IF (@i = 0)
			BEGIN				
				Insert into dbo.ViewerRequest(Viewer_ID, Requested_Date_Time, Requested_Channel_ID, Current_Status, Current_Status_Date_Time)
				values (@mail,@req,2,'rejected',@req);	
				RETURN
			END
	close res
	deallocate res;
end

exec storproc @req='2098-01-01 13:00:00', @mail = 'goji@gmail.com'
