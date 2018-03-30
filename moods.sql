create table moods.login(
username varchar(15),
password varchar(15)
);
drop table moods.login;
insert into moods.login(username , password) values("hamza" , "123456");
select * from moods.login;


create table moods.UserProfile(
id int auto_increment,
firstname varchar(55),
lastname varchar(55),
username varchar(55),
password varchar(55),
email  varchar(105),
age varchar(5),
gender varchar(10),
primary key(id)
);
drop table moods.UserProfile;
insert into moods.login(username , password) values("hamza" , "123456");
select * from moods.UserProfile;

select * from moods.UserProfile where username  = "hamzamalik" and password = "123"
select * from moods.UserProfile where username  = "hamza"and password = '123';

create table moods.UserLikes(
like_id int auto_increment,
username varchar(55),
likeTag varchar(55),

primary key(like_id)
);
select * from moods.UserLikes;
select * from moods.userlog1;

insert into moods.UserLikes(username , likeTag) values("fastian" , "geography");

select * from moods.Videos a , moods.userLikes b where b.username  = 'fastian'and a.videoTag = b.likeTag;



create table moods.Videos(
video_id int auto_increment,
videoLink varchar(105),
VideoTag varchar(55),

primary key(video_id)
);

drop table moods.Videos;
insert into moods.Videos(videoLink , VideoTag) values("https://www.youtube.com/embed/_eMAXOp2PvA" , "geography");

select * from moods.Videos;


create table moods.Emotions(
record_id int auto_increment,
username varchar(105),
emotion varchar(55),
DateOf varchar(70),
primary key(record_id)
);
select * from moods.Emotions;


create table moods.UserLog(
log_id int auto_increment,
username varchar(105),
VideoID varchar(55),
VideoCat varchar(70),
Rating varchar(25),
Emotion varchar(55),
DateOf varchar(70),
primary key(log_id)
);
drop table moods.UserLog 
select * from moods.Videos where VideoTag = "fashion" || VideoTag =  "tech"
select * from moods.UserLog where VideoCat = "fashion";

create table moods.UserLog1(
log_id int auto_increment,
username varchar(105),
VideoID varchar(55),
VideoCat varchar(70),
Rating varchar(25),
Emotion varchar(55),
DateOf varchar(70),
primary key(log_id)
);
drop table moods.UserLog
select * from moods.UserLog1 
select * from moods.Videos where VideoTag = "fashion" || VideoTag =  "tech"



insert into moods.UserLog(username , VideoID, VideoCat , Rating,Emotion,DateOf) values("hamzamalik" , "2","fashion","5","neutral","3/6/2018")
select * from moods.Videos a  where a.video_id not in (select VideoID from moods.userlog)



create table moods.Blogs(
blog_id int auto_increment,
BlogText text,
BlogCat varchar(75),
TypeOF varchar(25),
DateOf varchar(70),
primary key(blog_id)
);

select * from moods.Blogs
select * from moods.Blogs a , moods.userLikes b where b.username  = 'hamzamalik'and a.BlogCat = b.likeTag;
drop table moods.Blogs;

insert into moods.Blogs(BlogText , BlogCat , TypeOF,DateOf) values("China keeps tight rein on credit

China's efforts to stop the economy from overheating by clamping down on credit will continue into 2005, state media report.

The curbs were introduced earlier this year to ward off the risk that rapid expansion might lead to soaring prices. There were also fears that too much stress might be placed on the fragile banking system. Growth in China remains at a breakneck 9.1%, and corporate investment is growing at more than 25% a year. The breakneck pace of economic expansion has kept growth above 9% for more than a year. Rapid tooling-up of China's manufacturing sector means a massive demand for energy - one of the factors which has kept world oil prices sky-high for most of this year. In theory, the government has a 7% growth target, but continues to insist that the overshoot does not mean a hard landing in the shape of an overbalancing economy. A low exchange rate - China's yuan is pegged to a rate of 8.28 to the dollar, which seems to be in relentless decline - means Chinese exports are cheap on world markets. China has thus far resisted international pressure to break the link or at least to shift the level of its peg. To some extent, the credit controls do seem to be taking effect. Industrial output grew 15.7% in the year to October, down from 23% in February, and inflation slowed to 4.3% - although retail sales are still booming.
","bussiness","negative","3/6/2018")




select * from moods.Blogs;





