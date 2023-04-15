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
        string groupName;
        public string GroupName
        {
            set
            {
                groupName= value;
                NotifyOfPropertyChange(() => GroupName);
            }
            get
            {
                return groupName;
            }
        }
        public string Date { get; set; }

        public MainViewModel(
            IRepository<Group> repository)
        {
            _groupRepository = repository;
            UploadGroups();
        }
        private async void UploadGroups()
        {
            string strDate = DateTime.UtcNow.ToString("dddd, MM MMMM");
            Date = char.ToUpper(strDate[0]) + strDate.Substring(1);
            var reverseList = (await _groupRepository.GetAllAsync())
                .ToArray()
                .Reverse();
            Groups=new BindableCollection<Group>(reverseList);
        }

        public void AddGroup()
        {
            Group newGroup = new Group
            {
                Name = GroupName,
                Id = Guid.NewGuid(),
            };
            Groups.Insert(0,newGroup);
            _groupRepository.Add(newGroup);
            GroupName = "";
            //Groups = new BindableCollection<Group>(Groups);
        }
        

        protected override async void OnViewLoaded(object view)
        {
            base.OnViewLoaded(view);
           
        }
        public void ExitProgram()
        {
            System.Windows.Application.Current.Shutdown();
        }
    }
}
