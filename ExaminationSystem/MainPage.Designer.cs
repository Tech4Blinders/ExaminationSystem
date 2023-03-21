namespace ExaminationSystem
{
    partial class MainPage
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
            this.btnDepartment = new System.Windows.Forms.Button();
            this.btnQuestion = new System.Windows.Forms.Button();
            this.InstructorBrn = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnDepartment
            // 
            this.btnDepartment.Location = new System.Drawing.Point(598, 39);
            this.btnDepartment.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnDepartment.Name = "btnDepartment";
            this.btnDepartment.Size = new System.Drawing.Size(88, 28);
            this.btnDepartment.TabIndex = 0;
            this.btnDepartment.Text = "Department";
            this.btnDepartment.UseVisualStyleBackColor = true;
            this.btnDepartment.Click += new System.EventHandler(this.btnDepartment_Click);
            // 
            // btnQuestion
            // 
            this.btnQuestion.Location = new System.Drawing.Point(598, 154);
            this.btnQuestion.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnQuestion.Name = "btnQuestion";
            this.btnQuestion.Size = new System.Drawing.Size(88, 28);
            this.btnQuestion.TabIndex = 1;
            this.btnQuestion.Text = "Question";
            this.btnQuestion.UseVisualStyleBackColor = true;
            this.btnQuestion.Click += new System.EventHandler(this.btnQuestion_Click);
            // 
            // InstructorBrn
            // 
            this.InstructorBrn.Location = new System.Drawing.Point(13, 43);
            this.InstructorBrn.Name = "InstructorBrn";
            this.InstructorBrn.Size = new System.Drawing.Size(75, 23);
            this.InstructorBrn.TabIndex = 2;
            this.InstructorBrn.Text = "Instructor";
            this.InstructorBrn.UseVisualStyleBackColor = true;
            this.InstructorBrn.Click += new System.EventHandler(this.InstructorBrn_Click);
            // 
            // MainPage
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(700, 450);
            this.Controls.Add(this.InstructorBrn);
            this.Controls.Add(this.btnQuestion);
            this.Controls.Add(this.btnDepartment);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "MainPage";
            this.Text = "Examination System";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnDepartment;
        private System.Windows.Forms.Button btnQuestion;
        private System.Windows.Forms.Button InstructorBrn;
    }
}

