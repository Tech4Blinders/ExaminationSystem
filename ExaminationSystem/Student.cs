//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ExaminationSystem
{
    using System;
    using System.Collections.Generic;
    
    public partial class Student
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Student()
        {
            this.Student_Exam_Course = new HashSet<Student_Exam_Course>();
            this.Student_Exam_Question = new HashSet<Student_Exam_Question>();
            this.Courses = new HashSet<Course>();
        }
    
        public int Std_id { get; set; }
        public string Std_Fname { get; set; }
        public string Std_Lname { get; set; }
        public string Std_Address { get; set; }
        public string Std_Phone { get; set; }
        public Nullable<int> age { get; set; }
        public Nullable<bool> isActive { get; set; }
        public Nullable<int> deptid { get; set; }
        public string email { get; set; }
    
        public virtual Department Department { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Student_Exam_Course> Student_Exam_Course { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Student_Exam_Question> Student_Exam_Question { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Course> Courses { get; set; }
    }
}
