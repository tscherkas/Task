//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EmployeesForms
{
    using System;
    using System.Collections.Generic;
    
    public partial class Jobs
    {
        public Jobs()
        {
            this.Employees = new HashSet<Employees>();
        }
    
        public int Job_id { get; set; }
        public string Job_nm { get; set; }
    
        public virtual ICollection<Employees> Employees { get; set; }
    }
}
