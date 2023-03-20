alter procedure GetAnswers( @Std_id int , @ex_id int)
as
	begin
		select Q.q_ans,S.Answer,Q.q_score
		from Student_Exam_Question S,Question Q
		where Std_id= @Std_id and ex_id=@ex_id and S.q_id=Q.q_id
	end;
GetAnswers 1,1
------------------------------------------------------------------------------
------------------------------------------------------------------------------
alter proc CalcResult ( @Std_id int , @ex_id int )
as
	declare @m table ( Answer nvarchar(max),stdAnswer nvarchar(max),q_score int)
		insert into @m
		exec GetAnswers @Std_id,@ex_id
	declare @x int
		select @x = sum(q_score)
					from @m
					where Answer=stdAnswer
	return @x
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
DECLARE @return_value int
EXEC	@return_value = CalcResult 1 ,1
SELECT @return_value
SELECT	'Return Value' = @return_value
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
CREATE PROCEDURE SubmitGrade ( @Std_id int , @ex_id int , @course_id int )
as
	DECLARE @grade int
	EXEC	@grade = CalcResult @Std_id , @ex_id
	EXEC    Update_Student_Exam_Course @Std_id, @course_id, @ex_id, @grade
