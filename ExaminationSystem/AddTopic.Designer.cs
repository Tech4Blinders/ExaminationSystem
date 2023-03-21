namespace ExaminationSystem
{
    partial class AddTopic
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
            this.CancelBtn = new System.Windows.Forms.Button();
            this.label9 = new System.Windows.Forms.Label();
            this.SubmitBtn = new System.Windows.Forms.Button();
            this.CourseBox = new System.Windows.Forms.ComboBox();
            this.label8 = new System.Windows.Forms.Label();
            this.topicNameTextbox = new System.Windows.Forms.TextBox();
            this.topicIDTextbox = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // CancelBtn
            // 
            this.CancelBtn.BackColor = System.Drawing.Color.Red;
            this.CancelBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CancelBtn.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.CancelBtn.Location = new System.Drawing.Point(673, 470);
            this.CancelBtn.Name = "CancelBtn";
            this.CancelBtn.Size = new System.Drawing.Size(124, 49);
            this.CancelBtn.TabIndex = 29;
            this.CancelBtn.Text = "Cancel";
            this.CancelBtn.UseVisualStyleBackColor = false;
            this.CancelBtn.Click += new System.EventHandler(this.CancelBtn_Click);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(468, 370);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(218, 32);
            this.label9.TabIndex = 28;
            this.label9.Text = "Add New Topic";
            // 
            // SubmitBtn
            // 
            this.SubmitBtn.BackColor = System.Drawing.Color.Chartreuse;
            this.SubmitBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.SubmitBtn.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.SubmitBtn.Location = new System.Drawing.Point(331, 470);
            this.SubmitBtn.Name = "SubmitBtn";
            this.SubmitBtn.Size = new System.Drawing.Size(124, 49);
            this.SubmitBtn.TabIndex = 27;
            this.SubmitBtn.Text = "Submit";
            this.SubmitBtn.UseVisualStyleBackColor = false;
            this.SubmitBtn.Click += new System.EventHandler(this.SubmitBtn_Click);
            // 
            // CourseBox
            // 
            this.CourseBox.FormattingEnabled = true;
            this.CourseBox.Location = new System.Drawing.Point(673, 51);
            this.CourseBox.Name = "CourseBox";
            this.CourseBox.Size = new System.Drawing.Size(252, 24);
            this.CourseBox.TabIndex = 26;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(554, 56);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(50, 16);
            this.label8.TabIndex = 25;
            this.label8.Text = "Course";
            // 
            // topicNameTextbox
            // 
            this.topicNameTextbox.Location = new System.Drawing.Point(346, 133);
            this.topicNameTextbox.Name = "topicNameTextbox";
            this.topicNameTextbox.Size = new System.Drawing.Size(133, 22);
            this.topicNameTextbox.TabIndex = 24;
            // 
            // topicIDTextbox
            // 
            this.topicIDTextbox.Location = new System.Drawing.Point(346, 56);
            this.topicIDTextbox.Name = "topicIDTextbox";
            this.topicIDTextbox.Size = new System.Drawing.Size(133, 22);
            this.topicIDTextbox.TabIndex = 22;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(127, 133);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(82, 16);
            this.label2.TabIndex = 20;
            this.label2.Text = "Topic Name";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(127, 59);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(58, 16);
            this.label1.TabIndex = 19;
            this.label1.Text = "Topic ID";
            // 
            // AddTopic
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1174, 574);
            this.Controls.Add(this.CancelBtn);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.SubmitBtn);
            this.Controls.Add(this.CourseBox);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.topicNameTextbox);
            this.Controls.Add(this.topicIDTextbox);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "AddTopic";
            this.Text = "AddTopic";
            this.Load += new System.EventHandler(this.AddTopic_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button CancelBtn;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button SubmitBtn;
        private System.Windows.Forms.ComboBox CourseBox;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox topicNameTextbox;
        private System.Windows.Forms.TextBox topicIDTextbox;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
    }
}