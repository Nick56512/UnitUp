using GroupManager.Core.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Repositories
{
    public class StudentRepository : GenericRepository<Student>
    {
        public StudentRepository(DbContext context) : base(context)
        {
        }
    }
}
