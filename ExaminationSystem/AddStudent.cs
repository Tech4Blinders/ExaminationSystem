using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace ExaminationSystem
{
    public partial class AddStudent : Form
    {
        ExaminationSystemEntities context;
        public AddStudent()
        {
            InitializeComponent();
            context = new ExaminationSystemEntities();
        }

        private void AddStudent_Load(object sender, EventArgs e)
        {

            foreach (Department dept in context.Departments)
            {
                DepartmentBox.Items.Add(dept.dept_name);
            }

        }

        private void SubmitBtn_Click(object sender, EventArgs e)
        {
            if
            (
                studentIDTextbox.Text != "" &&
                studentFnameTextbox.Text != "" &&
                studentLnameTextbox.Text != "" &&
                studentAddressTextBox.Text != "" &&
                studentPhoneTextbox.Text != "" &&
                studentAgeTextbox.Text != "" &&
                studentEmailTextbox.Text != "" &&
                DepartmentBox.SelectedItem != null
            )
            {
                int ID;
                int Age;
                bool isIdParsed = int.TryParse(studentIDTextbox.Text, out ID);
                bool isAgeParsed = int.TryParse(studentAgeTextbox.Text, out Age);

                if (!isIdParsed) MessageBox.Show("Invalid Student ID");
                else if (!isAgeParsed) MessageBox.Show("Invalid Age");
                else
                {
                    Student std = context.Students.Find(ID);
                    if (std != null) MessageBox.Show("Duplicate Student ID!");
                    else if (studentPhoneTextbox.Text.Length > 11) MessageBox.Show("Invalid Phone Number!");
                    else if (!studentEmailTextbox.Text.Contains('@')) MessageBox.Show("Invalid Email!");
                    else
                    {
                        Department dept = context.Departments.Where(d => d.dept_name == DepartmentBox.SelectedItem.ToString()).First();
                        try
                        {
                            context.Insert_Student(ID, studentFnameTextbox.Text, studentLnameTextbox.Text, studentAddressTextBox.Text, studentPhoneTextbox.Text, Age, dept.dept_id, studentEmailTextbox.Text);
                        }
                        catch
                        {
                            MessageBox.Show("Student Added Successfully!");
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
