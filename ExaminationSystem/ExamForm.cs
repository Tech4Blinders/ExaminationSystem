using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Core.Objects;
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
        List<string> answers=new List<string>();

        public ExamForm(int i ,int j ,int k)
        {
            InitializeComponent();
            stdId = i;
            exId = k;
            crsId = j;
            this.AutoScroll = true;
        }

        private void ExamForm_Load(object sender, EventArgs e)
        {
            var obj = context.Student_Exam_Question
                .Where(ob => ob.Std_id == stdId && ob.ex_id == exId);
            int x = 30;
            int y = 50;
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
                lb.Font = new Font("Microsoft Sans Serif",10F, FontStyle.Bold, GraphicsUnit.Point, ((byte)(0)));
                lb.Location = new Point(x, y);
                lb.Name = $"label{i}";
                lb.Size = new Size(218, 32);
                lb.TabIndex = 28;
                lb.Text = q.question1 + "\n\n\n" +
                          "1)  " + q.choice_1 + "\n\n" +
                          "2)  " + q.choice_2 + "\n\n";
                lb.Text += q.choice_3 ==null ? " " : $"3)  {q.choice_3}" + "\n\n";
                lb.Text+=  q.choice_4 ==null ? " " : $"4)  {q.choice_4}" + "\n\n";
                #endregion

                labels.Add(lb);
                this.Controls.Add(lb);

                ComboBox cbx = new ComboBox();
                comboBox.Add(cbx);
                cbx.Location = new Point(this.Width-200, y);
                cbx.Name = $"comboBox{i}";
                if (q.q_score == 2)
                {
                    cbx.Items.AddRange(new string[] {"1","2","3","4"});
                }
                else
                {
                    cbx.Items.AddRange(new string[] { "1", "2" });

                }
                this.Controls.Add(cbx);


                y += 300;
                i++;
            }
            Button btn=new Button();
            btn.Location = new Point(this.Width / 2, y);
            btn.Text = "submit";
            Controls.Add(btn);
            btn.Click += new EventHandler(btn_click);
        }
        public void btn_click(object sender, EventArgs e)
        {
            for(int i=0;i<qids.Count;i++)
            {
              var str= context.SP_Update_StdQuesAnswer(stdId, exId, qids[i], comboBox[i].SelectedItem.ToString());
                
            }
            var str2= context.SubmitGrade(stdId, exId,crsId);
            MessageBox.Show("hello");

        }
    }
}
