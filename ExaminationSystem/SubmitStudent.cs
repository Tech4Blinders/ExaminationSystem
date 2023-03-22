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
    public partial class SubmitStudent : Form
    {
        ExaminationSystemEntities context =new ExaminationSystemEntities();

        public int ID { get; set; }
        public int CrsID { get; set; }
        public int ExamID{ get; set; }
        public SubmitStudent()
        {
            InitializeComponent();

            foreach(Course crs in context.Courses) 
            {
                cbxCrsName.Items.Add(crs.crs_name);
            }

        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            if(txtbxStdId.Text=="" || cbxCrsName.SelectedItem == null)
            {
                MessageBox.Show("fill required fields");
                return;
            }
            int id = 0;
            if(! int.TryParse(txtbxStdId.Text,out id))
            {
                MessageBox.Show("enter valid number");
                return;
            }

            Student std = context.Students.Find(id);
            Course crs = context.Courses.Where(cr => cr.crs_name == cbxCrsName.SelectedItem.ToString()).FirstOrDefault();

            if (std == null)
            {
                MessageBox.Show("you are not in the system");
                return;
            }
            else
            {
                ID = id;
                CrsID = crs.crs_id;
                try
                {
                    context.Making_Exam(ID, CrsID, 7, 3, "practical");
                }
                catch
                {   
                    MessageBox.Show("good luck");
                    var obj= context.Student_Exam_Question.Where(i => i.Std_id == ID).OrderByDescending(d => d.ex_id).FirstOrDefault();
                    ExamID = obj.ex_id;
                    this.DialogResult = DialogResult.OK;

                    

                }

            }





        }
    }
}
