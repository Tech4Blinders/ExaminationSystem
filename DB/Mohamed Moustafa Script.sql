alter procedure Insert_Student @std_id int, @std_Fname varchar(50), @std_Lname varchar(50), @std_address varchar(50), @std_phone varchar(11), @std_age int, @std_dpt int, @std_email varchar(50)
as
begin
	if not exists (select Std_id from Student where Std_id = @std_id)
		insert into Student(Std_id, Std_Fname, Std_Lname, Std_Address, Std_Phone, age, deptid, email)
		values(@std_id, @std_Fname, @std_Lname, @std_address, @std_phone, @std_age, @std_dpt, @std_email)
	else
		select 'Student with id = ' + cast(@std_id as varchar(10)) +' already esists!';
end

-------------------------------------------------------------

alter procedure Update_Student @std_id int, @std_Fname varchar(50), @std_Lname varchar(50), @std_address varchar(50), @std_phone varchar(11), @std_age int, @std_dpt int, @std_email varchar(50)
as
begin
	if exists (select Std_id from Student where Std_id = @std_id)
		update Student set Std_Fname = @std_Fname, Std_Lname = @std_Lname, Std_Address = @std_address, Std_Phone = @std_phone, age = @std_age, deptid = @std_dpt, email = @std_email
	else
		select 'There is no student with id = ' + cast(@std_id as varchar(10));
end

-------------------------------------------------------------

alter procedure Delete_Student @std_id int
as
begin
	if exists (select Std_id from Student where Std_id = @std_id)
		delete from Student where Std_id = @std_id
	else
		select 'There is no student with id = ' + cast(@std_id as varchar(10)) + ' to delete!';
end

--------------------------------------------------------------

create procedure Show_All_Students
as
begin
	select * from Student
end

---------------------------------------------------------------

alter procedure Insert_Department @dept_id int, @dept_name varchar(50), @dept_loc varchar(50), @supervisor_id int
as
begin
	if not exists(select dept_id from Department where dept_id = @dept_id)
		begin
			if exists (select ins_id from Instructor where ins_id = @supervisor_id)
				insert into Department values (@dept_id, @dept_name, @dept_loc, @supervisor_id);
			else
				select 'There is no instructor with id = ' + cast(@supervisor_id as varchar(10)) + ' to be supervisor!'; 
		end
	else
		select 'Department with id = ' + cast(@dept_id as varchar(10)) + ' already exist!';
end

-----------------------------------------------------------------

create procedure Update_Department @dept_id int, @dept_name varchar(50), @dept_loc varchar(50), @supervisor_id int
as
begin
	if exists(select dept_id from Department where dept_id = @dept_id)
		begin
			if exists (select ins_id from Instructor where ins_id = @supervisor_id)
				update Department set dept_id = @dept_id, dept_name = @dept_name, dept_loc = @dept_loc, instid = @supervisor_id;
			else
				select 'There is no instructor with id = ' + cast(@supervisor_id as varchar(10)) + ' to be supervisor!'; 
		end
	else
		select 'There is no department with id = ' + cast(@dept_id as varchar(10)) + ' to be updated!' ;
end

-------------------------------------------------------------------

create procedure Delete_Department @dept_id int
as
begin
	if not exists (select deptid from Student where deptid = @dept_id)
		begin
			if not exists (select deptid from Instructor where deptid = @dept_id)
				delete from Department where dept_id = @dept_id;
			else
				update Instructor set deptid = null where deptid = @dept_id;
				exec Delete_Department @dept_id
		end
	else
		update Student set deptid = null where deptid = @dept_id;
		exec Delete_Department @dept_id
end

---------------------------------------------------------------------

create procedure Show_All_Departments
as
begin
	select * from Department;
end

---------------------------------------------------------------------

alter procedure Insert_Student_Exam_Course @std_id int, @crs_id int, @ex_id int, @grade int
as
begin
	if not exists (select Std_id, crs_id, ex_id from Student_Exam_Course where Std_id = @std_id and crs_id = @crs_id and ex_id = @ex_id)
		begin
			if exists (select Std_id from Student where Std_id = @std_id)
			begin
				if exists (select crs_id from Course where crs_id = @crs_id)
					begin
						if exists (select ex_id from Exam where ex_id = @ex_id)
							insert into Student_Exam_Course(Std_id, crs_id, ex_id, grade) values(@std_id, @crs_id, @ex_id, @grade)
						else
							select 'There is no exam with id = ' + CAST(@ex_id as varchar(10));
					end
				else
					select 'There is no course with id = ' + CAST(@crs_id as varchar(10));
			end
		else
			select 'There is no student with id = ' + CAST(@std_id as varchar(10));
		end
	else
		select 'Invalid Data!'
end

-----------------------------------------------------------------------------

create procedure Update_Student_Exam_Course @std_id int, @crs_id int, @ex_id int, @grade int
as
begin
	if exists(select Std_id, crs_id, ex_id from Student_Exam_Course where Std_id = @std_id and crs_id = @crs_id and ex_id = @ex_id)
		update Student_Exam_Course set grade = @grade where Std_id = @std_id and crs_id = @crs_id and ex_id = @ex_id
	else
		select 'Invalid Data!';
end

--------------------------------------------------------------------------------

create procedure Delete_Student_Exam_Course @std_id int, @crs_id int, @ex_id int
as
begin
	if exists(select Std_id, crs_id, ex_id from Student_Exam_Course where Std_id = @std_id and crs_id = @crs_id and ex_id = @ex_id)
		delete from Student_Exam_Course where Std_id = @std_id and crs_id = @crs_id and ex_id = @ex_id;
	else
		select 'Invalid Data!';
end

--------------------------------------------------------------------------------

create procedure Show_All_Student_Exam_Course
as
begin
	select * from Student_Exam_Course;
end

-------------------------------------------------------------------------------

create procedure Show_All_Student_Exam_Course_By_Course @crs_id int
as
begin
	select * from Student_Exam_Course where crs_id = @crs_id;
end

-------------------------------------------------------------------------------

create procedure Show_All_Student_Exam_Course_By_Exam @ex_id int
as
begin
	select * from Student_Exam_Course where ex_id = @ex_id;
end

-------------------------------------------------------------------------------

create procedure Show_All_Student_Exam_Course_By_Student @std_id int
as
begin
	select * from Student_Exam_Course where Std_id = @std_id;
end

-------------------------------------------------------------------------------

alter procedure Making_Exam @std_id int, @course_id int, @no_mcq int, @no_tf int, @exam_type varchar(max)
as
	begin
		if exists(select Std_id from Student where Std_id = @std_id)
			begin
				if exists(select crs_id from Course where crs_id = @course_id)
					begin
					-- step 1  [Table Exam]
						declare @exam_id  int ;
						select @exam_id = (select max(ex_id) from Exam) + 1;
						exec SP_Insert_Exam @exam_id,@exam_type, @no_mcq, @no_tf;
					-- step 2  [Table Student_Exam_Question]
						declare @quest_id  int;
						declare @i int = 0;
						while @i < @no_mcq
							BEGIN				
								select @quest_id = (select top 1 q_id from Question where q_score = 2 and crs_id = 1 ORDER BY NEWID())
								IF NOT EXISTS (SELECT Std_id, ex_id, q_id FROM Student_Exam_Question WHERE Std_id = @std_id AND ex_id = @exam_id AND q_id = @quest_id)
									BEGIN
										exec SP_Insert_StdQuesAnswer @std_id, @exam_id, @quest_id, null;
										set @i = @i + 1;
									END
							END

						set @i = 0;
						while @i < @no_tf
							BEGIN
								select @quest_id = (select top 1 q_id from Question where q_score = 1 and crs_id = 1 ORDER BY NEWID())
								IF NOT EXISTS (SELECT Std_id, ex_id, q_id FROM Student_Exam_Question WHERE Std_id = @std_id AND ex_id = @exam_id AND q_id = @quest_id)
									BEGIN
										exec SP_Insert_StdQuesAnswer @std_id, @exam_id, @quest_id, null;
										set @i = @i + 1;
									END
							END
						-- step 3
						exec Insert_Student_Exam_Course @std_id, @course_id, @exam_id, null
					end
				else
					select 'There is no course with id = ' + CAST(@course_id as varchar(10));
			end
		else
			select 'There is no student with id = ' + CAST(@std_id as varchar(10));
	end


Making_Exam 2, 1, 7, 3, 'Practical'


---------------------------------------------------------------------------------------------------------------

create procedure Generate_Exam @std_id int, @ex_id int, @crs_id int
as
begin
	select seq.q_id, q.question, q.choice_1, q.choice_2, q.choice_3, q.choice_4, q.q_score
	from Student_Exam_Question seq, Question as q
	where seq.q_id = q.q_id and seq.Std_id = @std_id and seq.ex_id = @ex_id;

	exec Insert_Student_Exam_Course @std_id, @crs_id, @ex_id, null
end

