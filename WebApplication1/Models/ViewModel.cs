using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace WebApplication1.Models
{
    public class ViewModel
    {
        public int Id { get; set; }
        public string Description { get; set; }

        public IEnumerable<SelectListItem> ListItem { get; set; }
    }
}
