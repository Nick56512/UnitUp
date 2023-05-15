using BusinessLogic.Repositories;
using Caliburn.Micro;
using GroupManager.Core.Model;
using GroupManager.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace GroupManager.ViewModels
{
    public class ShellViewModel:Conductor<object>
    {
        public ShellViewModel() { 

            Switcher.Conductor = this;
            SwitchToMainContent();
        }
        public void SwitchToMainContent()
        {
            var mainViewModel=IoC.Get<MainViewModel>();
            Switcher.SwitchAsync(mainViewModel, new CancellationToken());
        }
        public static IRepository<Student> GetStudentRepository()
        {
            return IoC.Get<StudentRepository>();
        }
    }
}
