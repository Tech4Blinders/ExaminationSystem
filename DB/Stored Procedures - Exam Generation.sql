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
								select @quest_id = (select top 1 q_id from Question where q_score = 2 and crs_id = @course_id ORDER BY NEWID())
								IF NOT EXISTS (SELECT Std_id, ex_id, q_id FROM Student_Exam_Question WHERE Std_id = @std_id AND ex_id = @exam_id AND q_id = @quest_id)
									BEGIN
										exec SP_Insert_StdQuesAnswer @std_id, @exam_id, @quest_id, null;
										set @i = @i + 1;
									END
							END

						set @i = 0;
						while @i < @no_tf
							BEGIN
								select @quest_id = (select top 1 q_id from Question where q_score = 1 and crs_id = @course_id ORDER BY NEWID())
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



