------------Course Table ----------------
-------------Select----------------------
create procedure SP_Select_Course
as 
select * from Course

SP_Select_Course

------------------------------------------------------
---------------Insert-------------------------------

alter procedure SP_Insert_Course (@crs_id int , @crs_name nvarchar(50), @crs_description nvarchar(100),@crs_duration int)
as 
if exists (select crs_id from Course where crs_id=@crs_id)
select 'Duplicated ID'
else
insert into Course values (@crs_id,@crs_name,@crs_description,@crs_duration)

insert into Course (crs_id,crs_name,crs_description,crs_duration)
values (3,'js','pd',30)

SP_Insert_Course 4 , 'bootstrap','PD',10

-------------------------------------------------
--------------Update-----------------------------

create procedure SP_Update_Course(@crs_id int , @crs_name nvarchar(50), @crs_description nvarchar(100),@crs_duration int)
as
if not exists (select crs_id from Course where crs_id=@crs_id)
select 'ID is not found'
else
Begin
update Course 
set 
crs_id=@crs_id,
crs_name=@crs_name,
crs_description=@crs_description,
crs_duration=@crs_duration
where crs_id=@crs_id
End

SP_Update_Course 5,'jquery','pd',30

------------------------------------------------
------------delete------------------------------

create procedure SP_Delete_Course (@crs_id int)
as 
if not exists (select crs_id from Course where crs_id=@crs_id)
select 'ID is not found'
else 
begin 
delete from Course
where crs_id=@crs_id
end

SP_Delete_Course 4

------------------------------------------------
------------------------------------------------

------------Question Table----------------------

--------------Insert----------------------------

alter procedure SP_Insert_Question
(@q_id int , 
@question nvarchar(max),
@choice_1 nvarchar(max),
@choice_2 nvarchar(max),
@choice_3 nvarchar(max),
@choice_4 nvarchar(max),
@q_ans    nvarchar(max),
@q_score  float,
@crs_id int)
as 
if exists (select q_id from Question where q_id=@q_id)
select 'Duplicated ID'
else if not exists(select crs_id from Course where crs_id=@crs_id)
select 'course not found'
else
insert into Question values 
(@q_id, 
@question ,
@choice_1 ,
@choice_2 ,
@choice_3 ,
@choice_4 ,
@q_ans    ,
@q_score ,
@crs_id)

SP_Insert_Question 2,'are u ready?','yes','no','not sure','maybe','yes',1,3

-------------------------------------------------------------------------
-----------------Select-------------------------------
create procedure SP_Select_Question
as 
select * from Question

SP_Select_Question
-------------------------------------------------------
------------------Update

alter procedure SP_Update_Question
(@q_id int , 
@question nvarchar(max),
@choice_1 nvarchar(max),
@choice_2 nvarchar(max),
@choice_3 nvarchar(max),
@choice_4 nvarchar(max),
@q_ans    nvarchar(max),
@q_score  float,
@crs_id int)
as 
if not exists (select q_id from Question where q_id=@q_id)
select 'Question not found'
else if not exists(select crs_id from Course where crs_id=@crs_id)
select 'course not found'
else
begin
Update Question
set 
q_id=@q_id,
question= @question ,
choice_1= @choice_1 ,
choice_2= @choice_2 ,
choice_3= @choice_3 ,
choice_4= @choice_4 ,
q_ans= @q_ans    ,
q_score= @q_score ,
crs_id= @crs_id
where q_id=@q_id
end

-----------------------------------------------------
----------------Delete------------------------------

create procedure SP_Delete_Question (@q_id int)
as 
if not exists (select q_id from Question where q_id=@q_id)
select 'ID is not found'
else 
begin 
delete from Question
where q_id=@q_id
end

SP_Delete_Question 2

-----------------------------------------------------
--------------get Answers----------------------------

alter procedure GetAnswers( @Std_id int , @ex_id int)
as
begin
select Q.q_ans,S.Answer,Q.q_score
from Student_Exam_Question S,Question Q
where Std_id= @Std_id and ex_id=@ex_id and S.q_id=Q.q_id
end
GetAnswers 1,1
----------------------------------------------------
-------------calcResult--------------------------

alter proc CalcResult  @Std_id int , @ex_id int 
as
declare @m table ( Answer nvarchar(max),stdAnswer nvarchar(max),q_score int)
insert into @m
exec GetAnswers @Std_id,@ex_id
select sum(q_score) as result
from @m
where Answer=stdAnswer

execute CalcResult 1 ,1

