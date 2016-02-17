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
        public JobsEmployeesEntities db { get; set; }
        public Employees model { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new JobsEmployeesEntities();
            model = new Employees();
        }
        protected void makeModel()
        {
            model.First_name = FirstNameTextBox.Text;
            model.Last_name = LastNameTextBox.Text;
            model.Salary = double.Parse(SalaryTextBox.Text);
            model.Job_id = int.Parse(JobDropDownList.SelectedValue);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                makeModel();
                db.Employees.Add(model);
                db.SaveChanges();
                Response.Redirect("~/", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            catch(Exception ex)
            {
                Response.Redirect("~/Error");
            }
        }
    }
}