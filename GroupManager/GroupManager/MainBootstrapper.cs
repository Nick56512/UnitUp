using Caliburn.Micro;
using GroupManager.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace GroupManager
{
    public class MainBootsrapper:BootstrapperBase
    {
        public MainBootsrapper() {
            Initialize();
        }
        protected override async void OnStartup(object sender, StartupEventArgs e)
        {
            await DisplayRootViewForAsync<MainViewModel>();
        }
    }
}
