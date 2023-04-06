using BusinessLogic.Repositories;
using Caliburn.Micro;
using GroupManager.Core.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace GroupManager.ViewModels
{
    public class MainViewModel:PropertyChangedBase
    {
        IRepository<Group> _groupRepository;
        public MainViewModel(
            IRepository<Group> repository)
        {
            _groupRepository = repository;
        }

    }
}
