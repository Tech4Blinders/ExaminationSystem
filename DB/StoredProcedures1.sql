--=============Table Topic===================--
-- SELECT
CREATE PROCEDURE SP_Select_Topic (@topicId int)
as
	if EXISTS (SELECT topic_id FROM Topic WHERE topic_id = @topicId)
		SELECT topic_name
		FROM Topic
		WHERE @topicId = topic_id
	else 
		SELECT 'Topic doesnot exist';

-- INSERT
CREATE PROCEDURE SP_Insert_Topic (@topicId int , @topicName nvarchar(50) , @courseId int)
as
	if EXISTS (SELECT topic_id FROM Topic WHERE topic_id = @topicId)
		SELECT 'Topic Already Exists'
	else if NOT EXISTS (SELECT crs_id FROM Course WHERE crs_id = @courseId)
		SELECT 'Course doesnot exist'
	else
		INSERT INTO Topic VALUES (@topicId , @topicName , @courseId);
-- UPDATE
CREATE PROCEDURE SP_Update_Topic (@topicId int , @topicName nvarchar(50))
as
	if EXISTS (SELECT topic_id FROM Topic WHERE topic_id = @topicId)
		UPDATE TOPIC SET topic_name = @topicName WHERE topic_id = @topicId
	else 
		SELECT 'Topic doesnot exist';
-- DELETE
CREATE PROCEDURE SP_Delete_Topic (@topicId int)
as
	if EXISTS (SELECT topic_id FROM Topic WHERE topic_id = @topicId)
		DELETE FROM Topic WHERE topic_id = @topicId
	else 
		SELECT 'Topic doesnot exist';
--===========================================================================================--
--===========================================================================================--
--=============Table Exam===================--
-- SELECT
CREATE PROCEDURE SP_Select_Exam (@examId int)
as
		if EXISTS (SELECT ex_id FROM Exam WHERE ex_id = @examId)
			SELECT ex_id as [Exam ID] , ex_type as [Exam Type]
			FROM Exam
			WHERE ex_id = @examId
	else 
		SELECT 'Exam doesnot exist';
-- INSERT
ALTER PROCEDURE SP_Insert_Exam (@examId int , @examType nvarchar(MAX),@nMCQ int,@nTF int)
as
	INSERT INTO Exam (ex_id , ex_type , no_mcq , no_tf) VALUES (@examId , @examType , @nMCQ , @nTF);
-- UPDATE
CREATE PROCEDURE SP_Update_Exam (@examId int , @examType nvarchar(MAX), @nMCQ int, @nTF int)
as
	if EXISTS (SELECT ex_id FROM Exam WHERE ex_id = @examId)
		UPDATE Exam 
		SET ex_type = @examType ,
			no_mcq = @nMCQ ,
			no_tf  = @nTF
		WHERE ex_id = @examId
	else 
		SELECT 'Exam doesnot exist';
-- DELETE
CREATE PROCEDURE SP_Delete_Exam (@examId int)
as
	if EXISTS (SELECT ex_id FROM Exam WHERE ex_id = @examId)
	   AND NOT EXISTS (SELECT ex_id FROM Student_Exam_Course WHERE ex_id = @examId)
	   AND NOT EXISTS (SELECT ex_id FROM Student_Exam_Question WHERE ex_id = @examId)
		DELETE FROM Exam WHERE ex_id = @examId
	else 
		SELECT 'Exam has relations';
--=============Table Student_Exam_Question===================--
-- SELECT
CREATE PROCEDURE SP_Select_StdQuesAnswer (@studId int , @examId int , @quesId int)
as
	if EXISTS (SELECT Std_id FROM Student WHERE Std_id = @studId)
		AND EXISTS (SELECT ex_id FROM Exam WHERE ex_id = @examId)
		AND EXISTS (SELECT q_id FROM Question WHERE q_id = @quesId)
			SELECT Answer 
			FROM Student_Exam_Question
			WHERE Std_id = @studId
			AND   ex_id = @examId 
			AND   q_id = @quesId
	else 
			SELECT 'Answer doesnot exist';

CREATE PROCEDURE SP_Select_StdQuesAnswer (@studId int , @examId int , @quesId int)
as
	if EXISTS (SELECT Answer FROM Student_Exam_Question WHERE Std_id = @studId AND   ex_id = @examId AND   q_id = @quesId)
			SELECT Answer FROM Student_Exam_Question WHERE Std_id = @studId AND   ex_id = @examId AND   q_id = @quesId
	else 
			SELECT 'Answer doesnot exist';
-- INSERT
alter PROCEDURE SP_Insert_StdQuesAnswer (@studId int , @examId int , @quesId int, @Answer nvarchar(50))
as
	if EXISTS (SELECT Std_id, ex_id, q_id FROM Student_Exam_Question WHERE Std_id = @studId AND ex_id = @examId AND q_id = @quesId)
		SELECT 'invalid data'
	else
		INSERT INTO Student_Exam_Question VALUES (@studId , @examId , @quesId , @Answer);
-- UPDATE
CREATE PROCEDURE SP_Update_StdQuesAnswer (@studId int , @examId int , @quesId int, @Answer nvarchar(50))
as
	if EXISTS (SELECT Answer FROM Student_Exam_Question WHERE Std_id = @studId AND   ex_id = @examId AND   q_id = @quesId)
		UPDATE Student_Exam_Question 
		SET Answer = @Answer
		WHERE Std_id = @studId
	else 
		SELECT 'Answer to this question doesnot exist';
-- DELETE
CREATE PROCEDURE SP_Delete_StdQuesAnswer (@studId int , @examId int , @quesId int)
as
	if EXISTS (SELECT Answer FROM Student_Exam_Question WHERE Std_id = @studId AND   ex_id = @examId AND   q_id = @quesId)
		DELETE FROM Student_Exam_Question WHERE Std_id = @studId
	else 
		SELECT 'Answer to this Question doesnot exist';

