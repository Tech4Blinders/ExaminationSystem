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
    
    public partial class Question
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Question()
        {
            this.Student_Exam_Question = new HashSet<Student_Exam_Question>();
        }
    
        public int q_id { get; set; }
        public string question1 { get; set; }
        public string choice_1 { get; set; }
        public string choice_2 { get; set; }
        public string choice_3 { get; set; }
        public string choice_4 { get; set; }
        public string q_ans { get; set; }
        public Nullable<double> q_score { get; set; }
        public Nullable<int> crs_id { get; set; }
    
        public virtual Course Course { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Student_Exam_Question> Student_Exam_Question { get; set; }
    }
}
