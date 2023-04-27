using GroupManager.Core.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Repositories
{
    public interface IStudentsRepository
    {
        IQueryable<Student> GetStudentsFromGroup(Guid groupId);
    }
}
