using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeesForms
{
    public partial class _Default : Page
    {
        public EmployeesDBEntities db { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (db == null)
                db = new EmployeesDBEntities();    
        }

        protected void JobsDataSource_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
        {
            e.Context = (db as IObjectContextAdapter).ObjectContext;
        }
    }
}