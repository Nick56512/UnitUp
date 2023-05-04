using BusinessLogic.Repositories;
using Caliburn.Micro;
using GroupManager.Core.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GroupManager.ViewModels
{
    public class AboutStudentViewModel:Screen
    {
        public Student CurrentStudent { get; set; }
        IRepository<Student> _studentRepository;
        
        public void Back()
        {
            var studentsListView = IoC.Get<StudentsListViewModel>();
            //var res = _studentRepository as IStudentsRepository;
        }
    }
}
