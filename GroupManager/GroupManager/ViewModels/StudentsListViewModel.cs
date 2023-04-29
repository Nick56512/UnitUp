using BusinessLogic.Repositories;
using Caliburn.Micro;
using GroupManager.Core.Model;
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
        public Guid GroupId { get; set; }
        IStudentsRepository _studentsRepository;

        BindableCollection<Student> _students;
        public BindableCollection<Student> Students 
        { 
            get=>_students;

            set { 
                _students= value;
                NotifyOfPropertyChange(nameof(Students));
            }
        
        }
        public StudentsListViewModel(IStudentsRepository _studentsRepository)
        {
            this._studentsRepository = _studentsRepository;
        }
        private void UploadStudents()
        {
            if (GroupId != Guid.Empty)
            {
                //Students = new BindableCollection<Student>(_studentsRepository
                //    .GetStudentsFromGroup(GroupId));
                Students=new BindableCollection<Student>
                {
                    new Student{Name="Вікуся", Lastname="Думініке", Patronymic="Сергіївна"},
                    new Student{Name="Олександр", Lastname="Мітцих", Patronymic="Максимович"},
                    new Student{Name="Максим", Lastname="Гетьман", Patronymic="Юрійович"},
                    new Student{Name="Георгій", Lastname="Бистріцький", Patronymic="Олегович"},
                    
                };
                //St
            }
        }
        protected override void OnViewReady(object view)
        {
            base.OnViewReady(view);
            UploadStudents();
        }





        public void Back()
        {
            var mainViewModel=IoC.Get<MainViewModel>();
            Switcher.SwitchAsync(mainViewModel, new System.Threading.CancellationToken());
        }
    }
}
