using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TechSupportApp.Prog_Class
{
    public class Technician
    {
        private int techID { get; }
        private string name { get; set; }
        private string email { get; set; }
        private int phone { get; set; }
        private string password { get; }
        private int level { get; }

        public Technician()
        {

        }
    }
}