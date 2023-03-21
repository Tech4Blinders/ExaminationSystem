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
    public partial class AddCourse : Form
    {
        int[] courseDuration;
        ExaminationSystemEntities data = new ExaminationSystemEntities();

        public AddCourse()
        {
            InitializeComponent();
            courseDuration = new int[] { 10, 20, 30, 40, 50};
        }

        private void AddCourse_Load(object sender, EventArgs e)
        {
            foreach (int i in courseDuration)
            {
                comboBox1.Items.Add(i);
            }
        }

        private void CancelBtn_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void AddBtn_Click(object sender, EventArgs e)
        {
            if (IdTxtBox.Text != ""
                &&
                NameTxtBox.Text != ""
                &&
                DescTxtBox.Text != "")
            {
                int id;
                bool idParsed = int.TryParse(IdTxtBox.Text, out id);
                if (idParsed)
                {
                    var exists = data.Courses.Find(id);
                    if (exists == null)
                    {
                        Course newCourse = new Course();
                        newCourse.crs_id = id;
                        newCourse.crs_name = NameTxtBox.Text;
                        newCourse.crs_description = DescTxtBox.Text;
                        newCourse.crs_duration = int.Parse(comboBox1.Text);
                        data.Courses.Add(newCourse);
                        data.SaveChanges();
                        MessageBox.Show("Course Added");
                    }
                    else
                    {
                        MessageBox.Show("Course id already exists");
                    }
                }
                else
                {
                    MessageBox.Show("There is something wrong in id field");
                }
            }
            else
            {
                MessageBox.Show("Please fill all form fields");
            }
        }
    }
}
