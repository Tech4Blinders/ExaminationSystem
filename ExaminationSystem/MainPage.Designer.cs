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
            this.AddStudentBtn = new System.Windows.Forms.Button();
            this.AddTopicBtn = new System.Windows.Forms.Button();
            this.CourseBtn = new System.Windows.Forms.Button();
            this.btnExam = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnDepartment
            // 
            this.btnDepartment.Location = new System.Drawing.Point(513, 32);
            this.btnDepartment.Name = "btnDepartment";
            this.btnDepartment.Size = new System.Drawing.Size(75, 23);
            this.btnDepartment.TabIndex = 0;
            this.btnDepartment.Text = "Department";
            this.btnDepartment.UseVisualStyleBackColor = true;
            this.btnDepartment.Click += new System.EventHandler(this.btnDepartment_Click);
            // 
            // btnQuestion
            // 
            this.btnQuestion.Location = new System.Drawing.Point(513, 125);
            this.btnQuestion.Name = "btnQuestion";
            this.btnQuestion.Size = new System.Drawing.Size(75, 23);
            this.btnQuestion.TabIndex = 1;
            this.btnQuestion.Text = "Question";
            this.btnQuestion.UseVisualStyleBackColor = true;
            this.btnQuestion.Click += new System.EventHandler(this.btnQuestion_Click);
            // 
            // InstructorBrn
            // 
            this.InstructorBrn.Location = new System.Drawing.Point(11, 35);
            this.InstructorBrn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.InstructorBrn.Name = "InstructorBrn";
            this.InstructorBrn.Size = new System.Drawing.Size(64, 19);
            this.InstructorBrn.TabIndex = 2;
            this.InstructorBrn.Text = "Instructor";
            this.InstructorBrn.UseVisualStyleBackColor = true;
            this.InstructorBrn.Click += new System.EventHandler(this.InstructorBrn_Click);
            // 
            // AddStudentBtn
            // 
            this.AddStudentBtn.Location = new System.Drawing.Point(262, 171);
            this.AddStudentBtn.Name = "AddStudentBtn";
            this.AddStudentBtn.Size = new System.Drawing.Size(75, 23);
            this.AddStudentBtn.TabIndex = 3;
            this.AddStudentBtn.Text = "Add Student";
            this.AddStudentBtn.UseVisualStyleBackColor = true;
            this.AddStudentBtn.Click += new System.EventHandler(this.AddStudentBtn_Click);
            // 
            // AddTopicBtn
            // 
            this.AddTopicBtn.Location = new System.Drawing.Point(369, 171);
            this.AddTopicBtn.Name = "AddTopicBtn";
            this.AddTopicBtn.Size = new System.Drawing.Size(75, 23);
            this.AddTopicBtn.TabIndex = 4;
            this.AddTopicBtn.Text = "Add Topic";
            this.AddTopicBtn.UseVisualStyleBackColor = true;
            this.AddTopicBtn.Click += new System.EventHandler(this.AddTopicBtn_Click);
            // 
            // CourseBtn
            // 
            this.CourseBtn.Location = new System.Drawing.Point(11, 98);
            this.CourseBtn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.CourseBtn.Name = "CourseBtn";
            this.CourseBtn.Size = new System.Drawing.Size(64, 19);
            this.CourseBtn.TabIndex = 5;
            this.CourseBtn.Text = "Course";
            this.CourseBtn.UseVisualStyleBackColor = true;
            this.CourseBtn.Click += new System.EventHandler(this.CourseBtn_Click);
            // 
            // btnExam
            // 
            this.btnExam.Location = new System.Drawing.Point(513, 206);
            this.btnExam.Name = "btnExam";
            this.btnExam.Size = new System.Drawing.Size(75, 23);
            this.btnExam.TabIndex = 6;
            this.btnExam.Text = "Exam";
            this.btnExam.UseVisualStyleBackColor = true;
            this.btnExam.Click += new System.EventHandler(this.btnExam_Click);
            // 
            // MainPage
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(600, 366);
            this.Controls.Add(this.btnExam);
            this.Controls.Add(this.CourseBtn);
            this.Controls.Add(this.AddTopicBtn);
            this.Controls.Add(this.AddStudentBtn);
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
        private System.Windows.Forms.Button AddStudentBtn;
        private System.Windows.Forms.Button AddTopicBtn;
        private System.Windows.Forms.Button CourseBtn;
        private System.Windows.Forms.Button btnExam;
    }
}

