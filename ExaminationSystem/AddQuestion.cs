using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Windows.Forms;

namespace ExaminationSystem
{
    public partial class AddQuestion : Form
    {
        ExaminationSystemEntities context = new ExaminationSystemEntities();
        public AddQuestion()
        {
            InitializeComponent();

            foreach(var course in context.Courses)
            {
                cbxCrsName.Items.Add(course.crs_name);
            }
            cbxQuesType.Items.AddRange(new string[] { "mcq","T-F" });
            cbxScore.Items.AddRange(new string[] { "1","2" });

            btnAdd.Enabled = false;

            txtbxQuestion.Visible=false;
            txtbxCh1.Visible=false;
            txtbxCh2.Visible=false;
            txtbxCh3.Visible=false;
            txtbxCh4.Visible=false;
            cbxAnswer.Visible = false;
            cbxScore.Visible= false;
            label2.Visible=false;
            label3.Visible=false;
            label4.Visible=false;
            label5.Visible=false;
            label6.Visible=false;
            label7.Visible=false;
            label8.Visible=false;

        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            foreach(Control c in Controls)
            {
                if(c is ComboBox)
                {
                   ComboBox cbx= c as ComboBox;
                    if(cbx.SelectedItem == null)
                    {
                        MessageBox.Show("select from list Please");
                        return;
                    }
                }
                if(c is TextBox)
                {
                    TextBox txtbx= c as TextBox;
                    if(txtbx.Text == "")
                    {
                        if(cbxQuesType.SelectedItem.ToString() == "T-F")
                        {
                            if(txtbx.Name!=txtbxCh3.Name && txtbx.Name != txtbxCh4.Name)
                            {
                                MessageBox.Show("fill required Data");
                                return;
                            }
                        }
                        else
                        {
                            MessageBox.Show("fill required Data");
                            return;

                        }
                    }
                    
                }
            }

            int id;
            if (!int.TryParse(txtbxQuesId.Text, out id))
            { MessageBox.Show("enter number in ID field please"); return; }

            Question ques = context.Questions.Find(id);
            Course crs = context.Courses.Where(cr => cr.crs_name == cbxCrsName.SelectedItem.ToString()).FirstOrDefault();
            if (ques == null)
            {
                if (cbxQuesType.SelectedItem.ToString() == "mcq")
                {
                    try
                    {
                        context.SP_Insert_Question(
                            id,
                            txtbxQuestion.Text,
                            txtbxCh1.Text,
                            txtbxCh2.Text,
                            txtbxCh3.Text,
                            txtbxCh4.Text,
                            cbxAnswer.SelectedItem.ToString(),
                            float.Parse(cbxScore.SelectedItem.ToString()),
                            crs.crs_id

                            );
                    }
                    catch
                    {
                        MessageBox.Show("Question Added");
                    }
                }
                else
                {
                    try
                    {
                        context.SP_Insert_Question(
                            id,
                            txtbxQuestion.Text,
                            txtbxCh1.Text,
                            txtbxCh2.Text,
                            null,
                            null,
                            cbxAnswer.SelectedItem.ToString(),
                            float.Parse(cbxScore.SelectedItem.ToString()),
                            crs.crs_id

                            );
                    }
                    catch
                    {
                        MessageBox.Show("Question Added");
                    }
                }
                foreach (Control c in Controls)
                {
                    if (c is TextBox)
                    {
                        TextBox txtbx = c as TextBox;
                        txtbx.Text = "";
                    }
                }
            }

        }

        private void txtbxQuesId_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = !char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar);

        }

        private void cbxQuesType_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnAdd.Enabled = true;

            txtbxQuestion.Visible = true;
            label2.Visible = true;

            txtbxCh1.Visible = true;
            label3.Visible = true;

            txtbxCh2.Visible = true;
            label4.Visible = true;

            cbxAnswer.Visible = true;
            label7.Visible = true;

            cbxScore.Visible = true;
            cbxScore.Enabled = false;
            label8.Visible = true;
            
            if (cbxQuesType.SelectedItem.ToString() == "mcq")
            {
                txtbxCh3.Visible = true;
                label5.Visible = true;
                txtbxCh4.Visible = true;
                label6.Visible = true;
                cbxScore.SelectedItem = "2";
                cbxAnswer.Items.Clear();
                cbxAnswer.Items.AddRange(new string[] { "1", "2", "3", "4" });

            }
            else if(cbxQuesType.SelectedItem.ToString() == "T-F")
            {
                txtbxCh3.Visible = false;
                label5.Visible = false;

                txtbxCh4.Visible =false;
                label6.Visible = false;

                cbxScore.SelectedItem = "1";
                cbxAnswer.Items.Clear();
                cbxAnswer.Items.AddRange(new string[] { "1", "2" });

            }
        }
    }
}
