using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ExaminationSystem
{

    public partial class AddTopic : Form
    {
        ExaminationSystemEntities context;
        public AddTopic()
        {
            InitializeComponent();
            context = new ExaminationSystemEntities();
        }

        private void AddTopic_Load(object sender, EventArgs e)
        {
            foreach (Course course in context.Courses)
            {
                CourseBox.Items.Add(course.crs_name);
            }
        }

        private void SubmitBtn_Click(object sender, EventArgs e)
        {
            if
            (
                topicIDTextbox.Text != "" &&
                topicNameTextbox.Text != "" &&
                CourseBox.SelectedItem != null
            )
            {
                int ID;
                bool isIdParsed = int.TryParse(topicIDTextbox.Text, out ID);

                if (!isIdParsed) MessageBox.Show("Invalid Topic ID");
                else
                {
                    Topic topic = context.Topics.Find(ID);
                    if (topic != null) MessageBox.Show("Duplicate Topic ID!");
                    else
                    {
                        Course course = context.Courses.Where(c => c.crs_name == CourseBox.SelectedItem.ToString()).First();
                        try
                        {
                            context.SP_Insert_Topic(ID, topicNameTextbox.Text, course.crs_id);
                        }
                        catch
                        {
                            MessageBox.Show("Topic Added Successfully!");
                            this.Close();
                        }
                    }
                }
            }
            else
            {
                MessageBox.Show("Missing Data!");
            }
        }

        private void CancelBtn_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
