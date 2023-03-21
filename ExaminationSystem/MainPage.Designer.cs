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
            // MainPage
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(600, 366);
            this.Controls.Add(this.btnQuestion);
            this.Controls.Add(this.btnDepartment);
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Name = "MainPage";
            this.Text = "Examination System";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnDepartment;
        private System.Windows.Forms.Button btnQuestion;
    }
}

