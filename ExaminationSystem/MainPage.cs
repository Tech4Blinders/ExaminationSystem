using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ExaminationSystem
{
    public partial class MainPage : Form
    {
        public MainPage()
        {
            InitializeComponent();
        }

        private void btnDepartment_Click(object sender, EventArgs e)
        {
            AddDepartment add=new AddDepartment();
            add.ShowDialog();

        }

        private void btnQuestion_Click(object sender, EventArgs e)
        {
            AddQuestion add=new AddQuestion();
            add.ShowDialog();
        }

        private void InstructorBrn_Click(object sender, EventArgs e)
        {
            AddInstructor addIns = new AddInstructor();
            addIns.ShowDialog();
        }

        private void AddStudentBtn_Click(object sender, EventArgs e)
        {
            AddStudent newStdForm = new AddStudent();
            newStdForm.ShowDialog();

        }

        private void AddTopicBtn_Click(object sender, EventArgs e)
        {
            AddTopic newTopicForm = new AddTopic();
            newTopicForm.ShowDialog();
        }

        private void CourseBtn_Click(object sender, EventArgs e)
        {
            AddCourse addCrs = new AddCourse();
            addCrs.ShowDialog();
        }

        private void btnExam_Click(object sender, EventArgs e)
        {
            int id = 0;
            int crsid = 0;
            int exid = 0;
            SubmitStudent sub=new SubmitStudent();
            sub.ShowDialog();
            if (sub.DialogResult == DialogResult.OK)
            {
                id = sub.ID;
                crsid = sub.CrsID;
                exid = sub.ExamID;
                ExamForm exam = new ExamForm(id,crsid,exid);
                exam.ShowDialog();
                

            }
        }
    }
}
