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
    public partial class AddDepartment : Form
    {   
        ExaminationSystemEntities context=new ExaminationSystemEntities();
        public AddDepartment()
        {
            InitializeComponent();
            foreach(Instructor inst in context.Instructors)
            {
                cbxDeptManager.Items.Add(inst.ins_name);
            }
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            
            if (txtbxDeptId.Text != "" &&
                txtbxDeptName.Text != "" &&
                txtbxDeptLoc.Text != "" &&
                cbxDeptManager.SelectedItem!=null)
            {
                    int id;
                    if (!int.TryParse(txtbxDeptId.Text, out id))
                    { MessageBox.Show("enter number in ID field please"); return; }
                    Department dept = context.Departments.Find(id);
                    Instructor inst = context.Instructors.Where(ins => ins.ins_name == cbxDeptManager.SelectedItem.ToString()).First();
                    if (dept == null)
                    {
                    try
                    {
                        var str = context.Insert_Department(
                            id,
                            txtbxDeptName.Text,
                            txtbxDeptLoc.Text,
                            inst.ins_id
                            );
                    }
                    catch
                    {
                    MessageBox.Show("Department Added");
                        this.Close();

                    }

                    
                    }
                    else
                    {
                         MessageBox.Show("Duplicated Id");
                    }

            }
            else
            {
                MessageBox.Show("fill empty fields");
            }
            
        }

        private void txtbxDeptId_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = !char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar);
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
