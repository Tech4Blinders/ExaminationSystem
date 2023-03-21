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
    public partial class AddInstructor : Form
    {
        ExaminationSystemEntities data = new ExaminationSystemEntities();
        public AddInstructor()
        {
            InitializeComponent();
        }

        private void AddInstructor_Load(object sender, EventArgs e)
        {
            foreach (Department dept in data.Departments)
            {
                comboBox1.Items.Add(dept.dept_name);
            }
        }



        private void AddInstBtn_Click(object sender, EventArgs e)
        {
            if (IdTxtBox.Text != ""
                &&
                NameTxtBox.Text != ""
                &&
                SalaryTxtBox.Text != ""
                &&
                PhoneTxtBox.Text != ""
                &&
                comboBox1.Text != "")
            {
                int id;
                bool idParsed = int.TryParse(IdTxtBox.Text, out id);
                if (idParsed)
                {
                    int salary;
                    bool salaryParsed = int.TryParse(SalaryTxtBox.Text,out salary);
                    if (salaryParsed)
                    {
                        bool charExist = false;
                        string phone = "";
                        int num;
                        for(int i = 0; i < PhoneTxtBox.Text.Length && !charExist; i++)
                        {
                            bool charParsed = int.TryParse(PhoneTxtBox.Text.Substring(i, 1),out num);
                            if (charParsed)
                            {
                                phone += num;
                            }
                            else
                            {
                                charExist = true;
                                phone = "";
                            }
                        }
                        if (!charExist)
                        {
                            var res = data.SP_AddInstructor(id, NameTxtBox.Text, salary, phone);
                            MessageBox.Show("Instructor Added");
                        }
                        else
                        {
                            MessageBox.Show("There is something wrong in phone field");
                        }
                    }
                    else
                    {
                        MessageBox.Show("There is something wrong in salary field");
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
