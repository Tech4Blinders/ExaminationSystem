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
    
    public partial class Topic
    {
        public int topic_id { get; set; }
        public string topic_name { get; set; }
        public Nullable<int> crs_id { get; set; }
    
        public virtual Course Course { get; set; }
    }
}