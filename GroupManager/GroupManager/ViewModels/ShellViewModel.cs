using Caliburn.Micro;
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
            var mainViewModel=IoC.Get<AboutStudentViewModel>();
            Switcher.SwitchAsync(mainViewModel, new CancellationToken());
        }
    }
}
