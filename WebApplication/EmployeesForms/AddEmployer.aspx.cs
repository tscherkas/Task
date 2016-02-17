using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeesForms
{
    public partial class AddEmployer : System.Web.UI.Page
    {
        public int jobNumber { get; set; }
        public EmployeesDBEntities db { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new EmployeesDBEntities();
        }

        public void FormView1_InsertItem()
        {
            var item = new EmployeesForms.Employees();
            TryUpdateModel(item);
            item.Job_id = jobNumber;
            if (ModelState.IsValid)
            {
                db.Employees.Add(item);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var employer = new Employees();
            employer.First_name = FirstNameTextBox.Text;
            employer.Last_name = LastNameTextBox.Text;
            employer.Salary = Double.Parse(SalaryTextBox.Text);
            employer.Job_id = Int32.Parse(JobDropDownList.SelectedValue);
            db.Employees.Add(employer);
            db.SaveChanges();
        }
    }
}