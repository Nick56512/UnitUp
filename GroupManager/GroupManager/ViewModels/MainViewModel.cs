using BusinessLogic.Repositories;
using Caliburn.Micro;
using GroupManager.Core.Model;
using GroupManager.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

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
        Group selectedGroup;
        public Group SelectedGroup { 
            get=>selectedGroup;
            set {
                selectedGroup = value;
                NotifyOfPropertyChange(() => SelectedGroup);
            }
        }
        public MainViewModel(
            IRepository<Group> repository)
        {
            string strDate = DateTime.UtcNow.ToString("dddd, MM MMMM");
            Date = char.ToUpper(strDate[0]) + strDate.Substring(1);
            _groupRepository = repository;
            UploadGroups();
        }
        private async void UploadGroups()
        {
            var reverseList = (await _groupRepository.GetAllAsync())
                .ToArray()
                .Reverse();
            Groups=new BindableCollection<Group>(reverseList);
        }

        public async void AddGroup()
        {
            if (SelectedGroup == null)
            {
                Group newGroup = new Group
                {
                    Name = GroupName,
                    Id = Guid.NewGuid(),
                };
                _groupRepository.Add(newGroup);
                GroupName = "";
                Groups.Clear();
                var groupsList = (await _groupRepository.GetAllAsync())
                    .ToArray()
                    .Reverse();
                Groups.AddRange(groupsList);
            }
            else
            {
                SelectedGroup.Name=GroupName;
                _groupRepository.Update(SelectedGroup);
                Groups.Clear();
                var reverseList = (await _groupRepository.GetAllAsync())
                    .ToArray()
                    .Reverse();
                Groups.AddRange(reverseList);
            }
        }
        public async void RemoveGroup()
        {
            if (SelectedGroup != null)
            {
                await _groupRepository.RemoveAsync(SelectedGroup);
                Groups.Clear();
                var groupsList = (await _groupRepository.GetAllAsync())
                    .ToArray()
                    .Reverse();
                Groups.AddRange(groupsList);
            }
        }
        protected override void OnViewReady(object view)
        {
            base.OnViewReady(view);
            //MainView shellView = (MainView)view;
            //shellView.CommandBindings.Add(new CommandBinding(ApplicationCommands.Delete,RemoveGroup));
        }
        protected override void OnViewLoaded(object view)
        {
            base.OnViewLoaded(view);
           
        }
        public void ExitProgram()
        {
            System.Windows.Application.Current.Shutdown();
        }
    }
}
