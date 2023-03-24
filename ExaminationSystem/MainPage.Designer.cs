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
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnDepartment
            // 
            this.btnDepartment.Location = new System.Drawing.Point(478, 303);
            this.btnDepartment.Margin = new System.Windows.Forms.Padding(4);
            this.btnDepartment.Name = "btnDepartment";
            this.btnDepartment.Size = new System.Drawing.Size(132, 28);
            this.btnDepartment.TabIndex = 0;
            this.btnDepartment.Text = "Add Department";
            this.btnDepartment.UseVisualStyleBackColor = true;
            this.btnDepartment.Click += new System.EventHandler(this.btnDepartment_Click);
            // 
            // btnQuestion
            // 
            this.btnQuestion.Location = new System.Drawing.Point(510, 132);
            this.btnQuestion.Margin = new System.Windows.Forms.Padding(4);
            this.btnQuestion.Name = "btnQuestion";
            this.btnQuestion.Size = new System.Drawing.Size(117, 32);
            this.btnQuestion.TabIndex = 1;
            this.btnQuestion.Text = "Add Question";
            this.btnQuestion.UseVisualStyleBackColor = true;
            this.btnQuestion.Click += new System.EventHandler(this.btnQuestion_Click);
            // 
            // InstructorBrn
            // 
            this.InstructorBrn.Location = new System.Drawing.Point(322, 132);
            this.InstructorBrn.Margin = new System.Windows.Forms.Padding(4, 2, 4, 2);
            this.InstructorBrn.Name = "InstructorBrn";
            this.InstructorBrn.Size = new System.Drawing.Size(123, 32);
            this.InstructorBrn.TabIndex = 2;
            this.InstructorBrn.Text = "Add Instructor";
            this.InstructorBrn.UseVisualStyleBackColor = true;
            this.InstructorBrn.Click += new System.EventHandler(this.InstructorBrn_Click);
            // 
            // AddStudentBtn
            // 
            this.AddStudentBtn.Location = new System.Drawing.Point(238, 218);
            this.AddStudentBtn.Margin = new System.Windows.Forms.Padding(4);
            this.AddStudentBtn.Name = "AddStudentBtn";
            this.AddStudentBtn.Size = new System.Drawing.Size(100, 28);
            this.AddStudentBtn.TabIndex = 3;
            this.AddStudentBtn.Text = "Add Student";
            this.AddStudentBtn.UseVisualStyleBackColor = true;
            this.AddStudentBtn.Click += new System.EventHandler(this.AddStudentBtn_Click);
            // 
            // AddTopicBtn
            // 
            this.AddTopicBtn.Location = new System.Drawing.Point(440, 218);
            this.AddTopicBtn.Margin = new System.Windows.Forms.Padding(4);
            this.AddTopicBtn.Name = "AddTopicBtn";
            this.AddTopicBtn.Size = new System.Drawing.Size(100, 28);
            this.AddTopicBtn.TabIndex = 4;
            this.AddTopicBtn.Text = "Add Topic";
            this.AddTopicBtn.UseVisualStyleBackColor = true;
            this.AddTopicBtn.Click += new System.EventHandler(this.AddTopicBtn_Click);
            // 
            // CourseBtn
            // 
            this.CourseBtn.Location = new System.Drawing.Point(147, 132);
            this.CourseBtn.Margin = new System.Windows.Forms.Padding(4, 2, 4, 2);
            this.CourseBtn.Name = "CourseBtn";
            this.CourseBtn.Size = new System.Drawing.Size(110, 23);
            this.CourseBtn.TabIndex = 5;
            this.CourseBtn.Text = "Add Course";
            this.CourseBtn.UseVisualStyleBackColor = true;
            this.CourseBtn.Click += new System.EventHandler(this.CourseBtn_Click);
            // 
            // btnExam
            // 
            this.btnExam.Location = new System.Drawing.Point(147, 303);
            this.btnExam.Margin = new System.Windows.Forms.Padding(4);
            this.btnExam.Name = "btnExam";
            this.btnExam.Size = new System.Drawing.Size(100, 28);
            this.btnExam.TabIndex = 6;
            this.btnExam.Text = "Start Exam";
            this.btnExam.UseVisualStyleBackColor = true;
            this.btnExam.Click += new System.EventHandler(this.btnExam_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.IndianRed;
            this.label1.Location = new System.Drawing.Point(254, 36);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(247, 29);
            this.label1.TabIndex = 7;
            this.label1.Text = "Examination System";
            // 
            // MainPage
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnExam);
            this.Controls.Add(this.CourseBtn);
            this.Controls.Add(this.AddTopicBtn);
            this.Controls.Add(this.AddStudentBtn);
            this.Controls.Add(this.InstructorBrn);
            this.Controls.Add(this.btnQuestion);
            this.Controls.Add(this.btnDepartment);
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "MainPage";
            this.Text = "Examination System";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnDepartment;
        private System.Windows.Forms.Button btnQuestion;
        private System.Windows.Forms.Button InstructorBrn;
        private System.Windows.Forms.Button AddStudentBtn;
        private System.Windows.Forms.Button AddTopicBtn;
        private System.Windows.Forms.Button CourseBtn;
        private System.Windows.Forms.Button btnExam;
        private System.Windows.Forms.Label label1;
    }
}

