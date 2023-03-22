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
    public partial class ExamForm : Form
    {
        public int stdId { get; set; }
        public int exId { get; set; }
        public int crsId { get; set; }
        ExaminationSystemEntities context= new ExaminationSystemEntities(); 
        
        List<int> qids= new List<int>();
        List<Question> questions = new List<Question>();  
        
        List <Label> labels = new List<Label>();
        List<ComboBox> comboBox = new List<ComboBox>();
        public ExamForm(int i ,int j ,int k)
        {
            InitializeComponent();
            stdId = i;
            exId = k;
            crsId = j;
        }

        private void ExamForm_Load(object sender, EventArgs e)
        {
            var obj = context.Student_Exam_Question
                .Where(ob => ob.Std_id == stdId && ob.ex_id == exId);
            int x = 30;
            int y = 0;
            int i = 0;
            foreach(var ob in obj)
            {
              qids.Add(ob.q_id);
            }
            
            foreach(var id in qids)
            {
                var q = context.Questions.Find(id);
                questions.Add(q);
                Label lb = new Label();
                #region labelProperties
                lb.AutoSize = true;
                lb.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
                lb.Location = new System.Drawing.Point(x, y);
                lb.Name = $"label{i}";
                lb.Size = new System.Drawing.Size(218, 32);
                lb.TabIndex = 28;
                lb.Text = q.question1;
                #endregion
                labels.Add(lb);
                y += 100;
                i++;
            }


            //this.CourseBox.FormattingEnabled = true;
            //this.CourseBox.Location = new System.Drawing.Point(673, 51);
            //this.CourseBox.Name = "CourseBox";
            //this.CourseBox.Size = new System.Drawing.Size(252, 24);
            //this.CourseBox.TabIndex = 26;



        }
    }
}
