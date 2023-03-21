namespace ExaminationSystem
{
    partial class AddDepartment
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtbxDeptId = new System.Windows.Forms.TextBox();
            this.txtbxDeptName = new System.Windows.Forms.TextBox();
            this.txtbxDeptLoc = new System.Windows.Forms.TextBox();
            this.cbxDeptManager = new System.Windows.Forms.ComboBox();
            this.btnOk = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txtbxDeptId
            // 
            this.txtbxDeptId.Location = new System.Drawing.Point(164, 21);
            this.txtbxDeptId.Name = "txtbxDeptId";
            this.txtbxDeptId.Size = new System.Drawing.Size(100, 20);
            this.txtbxDeptId.TabIndex = 0;
            this.txtbxDeptId.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtbxDeptId_KeyPress);
            // 
            // txtbxDeptName
            // 
            this.txtbxDeptName.Location = new System.Drawing.Point(164, 86);
            this.txtbxDeptName.Name = "txtbxDeptName";
            this.txtbxDeptName.Size = new System.Drawing.Size(100, 20);
            this.txtbxDeptName.TabIndex = 1;
            // 
            // txtbxDeptLoc
            // 
            this.txtbxDeptLoc.Location = new System.Drawing.Point(164, 149);
            this.txtbxDeptLoc.Name = "txtbxDeptLoc";
            this.txtbxDeptLoc.Size = new System.Drawing.Size(100, 20);
            this.txtbxDeptLoc.TabIndex = 2;
            // 
            // cbxDeptManager
            // 
            this.cbxDeptManager.FormattingEnabled = true;
            this.cbxDeptManager.Location = new System.Drawing.Point(431, 13);
            this.cbxDeptManager.Name = "cbxDeptManager";
            this.cbxDeptManager.Size = new System.Drawing.Size(121, 21);
            this.cbxDeptManager.TabIndex = 3;
            // 
            // btnOk
            // 
            this.btnOk.Location = new System.Drawing.Point(97, 229);
            this.btnOk.Name = "btnOk";
            this.btnOk.Size = new System.Drawing.Size(75, 23);
            this.btnOk.TabIndex = 4;
            this.btnOk.Text = "Ok";
            this.btnOk.UseVisualStyleBackColor = true;
            this.btnOk.Click += new System.EventHandler(this.btnOk_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(338, 229);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 5;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(14, 28);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(78, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Department ID";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(14, 89);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(90, 13);
            this.label2.TabIndex = 7;
            this.label2.Text = "Deparment Name";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(14, 152);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(107, 13);
            this.label3.TabIndex = 8;
            this.label3.Text = "Department Location";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(298, 21);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(105, 13);
            this.label4.TabIndex = 9;
            this.label4.Text = "Deparment Manager";
            // 
            // AddDepartment
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(583, 286);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOk);
            this.Controls.Add(this.cbxDeptManager);
            this.Controls.Add(this.txtbxDeptLoc);
            this.Controls.Add(this.txtbxDeptName);
            this.Controls.Add(this.txtbxDeptId);
            this.Name = "AddDepartment";
            this.Text = "Department";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtbxDeptId;
        private System.Windows.Forms.TextBox txtbxDeptName;
        private System.Windows.Forms.TextBox txtbxDeptLoc;
        private System.Windows.Forms.ComboBox cbxDeptManager;
        private System.Windows.Forms.Button btnOk;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
    }
}