using GroupManager.Core.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GroupManager.Core.Models
{
    public class Parents
    {
        public string Name { get; set; }
        public string Lastname { get; set; }
        public string Patronymic { get; set; }
        public string PhoneNumber { get; set; }

        public virtual IList<Student> Students { get; set; }
    }
}
