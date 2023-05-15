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
    public class StudentsListViewModel:Screen
    {
        public Group CurrentGroup { get; set; }
        IRepository<Student> _studentsRepository;
        IRepository<Certificate> _certificateRepository;
        IRepository<Parents> _parentsRepository;

        BindableCollection<Student> _students;
        public BindableCollection<Student> Students 
        { 
            get=>_students;

            set { 
                _students= value;
                NotifyOfPropertyChange(nameof(Students));
            }
        
        }
        public Student SelectedStudent { get; set; }
        public StudentsListViewModel(
            IRepository<Student> _studentsRepository,
            IRepository<Certificate> certificateRepository,
            IRepository<Parents>parentsRepository)
        {
            this._studentsRepository = _studentsRepository;
            _certificateRepository = certificateRepository;
            this._parentsRepository = parentsRepository;
        }
        private void UploadStudents()
        {
            if (CurrentGroup!=null)
            {
                Students = new BindableCollection<Student>(_studentsRepository.GetAll()
                    .Where(x=>x.GroupId==CurrentGroup.Id));
                   
                //Students=new BindableCollection<Student>
                //{
                //    new Student{Name="Вікуся", Lastname="Думініке", Patronymic="Сергіївна"},
                //    new Student{Name="Олександр", Lastname="Мітцих", Patronymic="Максимович"},
                //    new Student{Name="Максим", Lastname="Гетьман", Patronymic="Юрійович"},
                //    new Student{Name="Георгій", Lastname="Бистріцький", Patronymic="Олегович"},
                    
                //};
                //St
            }
        }
        protected override void OnViewReady(object view)
        {
            base.OnViewReady(view);
            UploadStudents();
        }

        public bool CanSearchByLastName(string lastname)
        {
            return !string.IsNullOrEmpty(lastname);
        }

        public async void SearchByLastName(string lastname)
        {
            Students = new BindableCollection<Student>(
                    (await _studentsRepository.GetAllAsync())
                    .Where(x=>x.Lastname.ToLower().Contains(lastname.ToLower()))
                );
        }
        public void AddNewStudent()
        {
            var aboutStudentViewModel=IoC.Get<AboutStudentViewModel>();
            aboutStudentViewModel.ViewMode = Mode.Update;
            aboutStudentViewModel.CurrentGroup = CurrentGroup;
            Switcher.SwitchAsync(aboutStudentViewModel,new System.Threading.CancellationToken());
        }
        public void AboutStudent()
        {
            if (SelectedStudent != null)
            {
                var aboutStudentViewModel = IoC.Get<AboutStudentViewModel>();
                aboutStudentViewModel.ViewMode = Mode.ReadOnly;
                aboutStudentViewModel.CurrentStudent = SelectedStudent;
                aboutStudentViewModel.CurrentGroup = CurrentGroup;
                aboutStudentViewModel.Parents = new BindableCollection<Parents>(
                        _parentsRepository.GetAll().Where(x => x.StudentId == SelectedStudent.Id));

                Switcher.SwitchAsync(aboutStudentViewModel, new System.Threading.CancellationToken());
            }
        }


        public void DeleteStudent()
        {
            if (SelectedStudent is null)
                return;
            var certificates=_certificateRepository
                .GetAll().Where(x=>x.StudentId==SelectedStudent.Id);
            foreach (var cert in certificates)
            {
                _certificateRepository.Delete(cert);
            }
            var parents= _parentsRepository.GetAll().Where(x => x.StudentId == SelectedStudent.Id);
            if (parents != null)
            {
                foreach (var parent in parents)
                {
                    _parentsRepository.Delete(parent);
                }
            }
            _studentsRepository.Delete(SelectedStudent);
            //Students=new BindableCollection<Student>()
            Students.Remove(SelectedStudent);
        }
        public void Back()
        {
            var mainViewModel=IoC.Get<MainViewModel>();
            Switcher.SwitchAsync(mainViewModel, new System.Threading.CancellationToken());
        }
    }
}
