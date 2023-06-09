USE [ExaminationSystem]
GO
/****** Object:  StoredProcedure [dbo].[SP_Add_Ins_Crs]    Script Date: 24/03/2023 04:33:53 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	  create Proc [dbo].[SP_Add_Ins_Crs] @ins_id int , @crs_id int
		  as 
		   insert into Inst_Course values
		   (@ins_id , @crs_id)
GO
/****** Object:  StoredProcedure [dbo].[SP_AddInstructor]    Script Date: 24/03/2023 04:33:54 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

		  create Proc [dbo].[SP_AddInstructor] @insid int , @instname nvarchar(50) , @inssal money , @insphone nvarchar(11)
		  as 
		   insert into Instructor (ins_id , ins_name ,ins_salary , ins_phone ) values
		   (@insid ,@instname , @inssal , @insphone)
		    
GO
/****** Object:  StoredProcedure [dbo].[SP_AddInstructors]    Script Date: 24/03/2023 04:33:54 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

		  create Proc [dbo].[SP_AddInstructors] @insid int , @instname nvarchar(50) , @inssal money , @insphone nvarchar(11)
		  as 
		    while(@insid<10)
			begin
		   insert into Instructor (ins_id , ins_name ,ins_salary , ins_phone ) values
		   (@insid ,concat(@instname,@insid) , @inssal*@insid , concat(@insphone,@insid))
			set @insid= @insid+1
			end
GO
/****** Object:  StoredProcedure [dbo].[SP_Delete_Ins_Crs]    Script Date: 24/03/2023 04:33:54 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create Proc [dbo].[SP_Delete_Ins_Crs] @ins_id int , @crs_id int 
		  as 
		    delete Inst_Course
			where ins_id =@ins_id and crs_id=@crs_id
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteInstructor]    Script Date: 24/03/2023 04:33:54 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	  create Proc [dbo].[SP_DeleteInstructor] @insid int 
	  as
	  delete Instructor 
	  where ins_id =@insid
GO
/****** Object:  StoredProcedure [dbo].[SP_GET_Answeres_Of_Student_In_Exam]    Script Date: 24/03/2023 04:33:54 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create proc [dbo].[SP_GET_Answeres_Of_Student_In_Exam] @exid int , @stdid int
	  as
	  select q.question ,  seq.Answer
		from Exam e join Student_Exam_Question seq
		on  e.ex_id=seq.ex_id join Question Q 
		ON Q.q_id =seq.q_id JOIN  Student s
		 on seq.Std_id =s.Std_id 
		 where e.ex_id=@exid and s.Std_id = @stdid
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Course_And_Student_By_Instructor_ID]    Script Date: 24/03/2023 04:33:54 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	  
	CREATE proc [dbo].[SP_Get_Course_And_Student_By_Instructor_ID] @insid int
	as
	   select c.crs_name , count(s.Std_id) [Number of Students]
	   from Instructor i join Inst_Course ic 
	   on i.ins_id =ic.ins_id join Course c
	   on c.crs_id = ic.crs_id join Std_Course sc
	   on c.crs_id=sc.crs_id join Student s
	   on s.Std_id=sc.std_id
	   where i.ins_id = @insid
	   group by c.crs_name
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Grade_Of_Student_By_ID]    Script Date: 24/03/2023 04:33:54 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	create proc [dbo].[SP_Get_Grade_Of_Student_By_ID] @stdid int 
	as
	  select sec.Grade
	  from Student_Exam_Course sec join Course c 
	  on c.crs_id = sec.crs_id 
	  where sec.Std_id = @stdid 
	  
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Questtions_And_Choices_Of_Exam]    Script Date: 24/03/2023 04:33:54 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[SP_Get_Questtions_And_Choices_Of_Exam] @exid int
   as
   
	    select q.question , q.choice_1 , q.choice_2 , q.choice_3 , q.choice_4
		from Exam e join Student_Exam_Question seq
		on  e.ex_id=seq.ex_id join Question q
		on q.q_id = seq.q_id
		where e.ex_id = @exid 
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Students_From_Department]    Script Date: 24/03/2023 04:33:54 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

     create proc [dbo].[SP_Get_Students_From_Department] @depno int
	 as 
	  select * from Student 
	  where deptid= @depno
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Topics_OF_Course]    Script Date: 24/03/2023 04:33:54 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	   create proc [dbo].[SP_Get_Topics_OF_Course] @crsid int
	   as
	   select t.topic_id , t.topic_name
		from Topic t join Course c 
		on c.crs_id = t.crs_id
		where c.crs_id=@crsid
GO
/****** Object:  StoredProcedure [dbo].[SP_Show_Ins_Crs]    Script Date: 24/03/2023 04:33:54 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
				 
		  create Proc [dbo].[SP_Show_Ins_Crs] 
		  as 
		   select i.ins_name , c.crs_name
		   from Instructor i join Inst_Course ic
		   on i.ins_id =ic.ins_id join Course c
		   on c.crs_id = ic.crs_id
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Ins_Crs]    Script Date: 24/03/2023 04:33:54 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE Proc [dbo].[SP_Update_Ins_Crs] @ins_id int , @crs_id int 
		  as 
		    update Inst_Course 
			set crs_id = @crs_id 
			where ins_id =@ins_id
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateInstructorData]    Script Date: 24/03/2023 04:33:54 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

    create Proc [dbo].[SP_UpdateInstructorData] @insid int , @instname nvarchar(50) , @inssal money , @insphone nvarchar(11)
	  as
	  update Instructor 
	  set ins_name=@instname , ins_salary=@inssal , @insphone=@insphone
	  where ins_id =@insid
GO
