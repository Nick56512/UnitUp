using BusinessLogic.Repositories;
using Caliburn.Micro;
using GroupManager.Core.Model;
using GroupManager.Core.Models;
using GroupManager.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GroupManager.ViewModels
{
    public class CharacteristicFormViewModel:Screen
    {
        CharacteristicModel characteristic;
        public CharacteristicModel CharacteristicModel
        {
            get => characteristic;
            set
            {
                characteristic= value;
                NotifyOfPropertyChange(() => CharacteristicModel);
            }
        }
        public Group CurrentGroup { get; set; }
        public Student CurrentStudent { get; set; }


        IRepository<Student> _studRepos;
        IRepository<Parents> _parentsRepos;


        public CharacteristicFormViewModel(
            IRepository<Student> _studRepository,
            IRepository<Parents> _parRepository)
        {
            this._studRepos = _studRepository;
            this._parentsRepos = _parRepository;
            CharacteristicModel=new CharacteristicModel();
        }
        public void Back()
        {
            var aboutStudentViewModel = IoC.Get<AboutStudentViewModel>();
            aboutStudentViewModel.ViewMode = Mode.ReadOnly;
            aboutStudentViewModel.CurrentStudent = CurrentStudent;
            aboutStudentViewModel.CurrentGroup = CurrentGroup;
            aboutStudentViewModel.StudentPriveleges = new BindableCollection<string>
                (CurrentStudent.Privileges.Select(x => x.Header));
            aboutStudentViewModel.Parents = new BindableCollection<Parents>(
                    _parentsRepos.GetAll().Where(x => x.StudentId == CurrentStudent.Id));
            aboutStudentViewModel.ReadOnlyTextBoxes = true;
            Switcher.SwitchAsync(aboutStudentViewModel, new System.Threading.CancellationToken());
        }
        public void MoveToNext()
        {
            var radio = IoC.Get<RadioCharacteristicFormViewModel>();
            radio.CharacteristicModel = CharacteristicModel;
            radio.CurrentStudent = CurrentStudent;
            radio.CurrentGroup = CurrentGroup;
            Switcher.SwitchAsync(radio, new System.Threading.CancellationToken());
        }
    }
}
