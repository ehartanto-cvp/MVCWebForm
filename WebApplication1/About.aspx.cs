using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public IQueryable<ViewModel> BindPrograms()
        {
            QSPrototypeEntities context = new QSPrototypeEntities();
            var programs = from c in context.FUNDINGPROGRAMs select new ViewModel { Id = c.Id, Description = c.Name };

            return programs;
        }
    }
}