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
    public class MainViewModel:Screen
    {
        IRepository<Group> _groupRepository;
        BindableCollection<Group> _groups { get; set; }
        public BindableCollection<Group> Groups
        {
            get => _groups;
            set
            {
                _groups= value;
                NotifyOfPropertyChange(() => Groups);
            }
        }
        public MainViewModel(
            IRepository<Group> repository)
        {
            _groupRepository = repository;
            //UploadGroups();
        }
        private async void UploadGroups()
        {
            Groups=new BindableCollection<Group>(await _groupRepository.GetAllAsync());
        }

        public void AddGroup()
        {
            Group newGroup = new Group
            {
                Id=Guid.NewGuid(),
                Name = "Naew",
            };
            _groupRepository.Add(newGroup);
        }

        protected override async void OnViewLoaded(object view)
        {
            base.OnViewLoaded(view);
            Groups = new BindableCollection<Group>(await _groupRepository.GetAllAsync());
            Groups.Add(new Group { Name = "PV-02" });
        }

    }
}
