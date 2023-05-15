using BusinessLogic.Repositories;
using Caliburn.Micro;
using GroupManager.Core.Model;
using GroupManager.Core.Models;
using GroupManager.Models;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Markup.Localizer;

namespace GroupManager.ViewModels
{
    public enum Mode
    {
        Update,
        ReadOnly
    }
    public class AboutStudentViewModel:Screen
    {
        BindableCollection<Parents> parents;
        public BindableCollection<Parents> Parents 
        { 
            get=>parents;
            set
            {
                parents=value;
                NotifyOfPropertyChange(()=>Parents);
            } 
        
        }
        string currentAvatarPath;
        public string CurrentAvatarPath 
        {
            get
            {
                return currentAvatarPath;
            }

            set {
                currentAvatarPath = value;
                NotifyOfPropertyChange(nameof(CurrentAvatarPath));
            } 
        
        }
        Mode viewMode;
        public Mode ViewMode 
        {
            get
            {
                return viewMode;
            }

            set
            {
                viewMode = value;
                switch (viewMode)
                {
                    case Mode.Update:
                        {
                            UpdateVisibility = Visibility.Visible;
                            ReadonlyVisibility = Visibility.Collapsed;
                        }
                        break;
                    case Mode.ReadOnly:
                        {
                            UpdateVisibility = Visibility.Collapsed;
                            ReadonlyVisibility = Visibility.Visible;
                        }
                        break;
                }
                NotifyOfPropertyChange(nameof(ViewMode));
            }
        }
        Parents parent;
        public Parents Parent { 
            get=>parent;
            set
            {
                parent=value;
                NotifyOfPropertyChange(()=>Parent);
            }
        }
        public Group CurrentGroup { get; set; }

        Student currentStudent;
        public Student CurrentStudent {
            get=>currentStudent;
            set
            {
                currentStudent = value;
                CurrentAvatarPath =currentStudent.Avatar;
                NotifyOfPropertyChange(nameof(CurrentStudent));
            } 
        
        }
        IRepository<Student> _studentRepository;
        IRepository<Parents> _parentsRepository;

        Visibility updateVisibility;
        public Visibility UpdateVisibility
        {
            get => updateVisibility;
            set
            {
                updateVisibility = value;
                NotifyOfPropertyChange(nameof(UpdateVisibility));
            }
        }

        Visibility readonlyVisibility;
        public Visibility ReadonlyVisibility
        {
            get => readonlyVisibility;
            set
            {
                readonlyVisibility = value;
                NotifyOfPropertyChange(nameof(ReadonlyVisibility));
            }
        }





        public AboutStudentViewModel(
            IRepository<Student> _studentRepository, IRepository<Parents> parentsRepository)
        {
            this._studentRepository = _studentRepository;
            CurrentStudent = new Student();
            Parent= new Parents();
            string path=Directory.GetCurrentDirectory();
            CurrentAvatarPath = path + "\\StudentsAvatars\\empty.png";
            
            _parentsRepository = parentsRepository;
        }

        public void Back()
        {
            var studentsListView = IoC.Get<StudentsListViewModel>();
            studentsListView.CurrentGroup = CurrentGroup;
            Switcher.SwitchAsync(studentsListView,new System.Threading.CancellationToken());
        }
        public void UploadAvatar()
        {
            if (ViewMode == Mode.Update)
            {
                OpenFileDialog openFileDialog = new OpenFileDialog();
                openFileDialog.Filter = "Files|*.jpg;*.jpeg;*.png";

                if ((bool)openFileDialog.ShowDialog())
                {
                    CurrentAvatarPath = openFileDialog.FileName;
                }
            }
        }
        public void AddParent()
        {
            if (Parents is null)
            {
                Parents=new BindableCollection<Parents>();
            }
            Parent.Id=Guid.NewGuid();
            Parent.StudentId = CurrentStudent.Id;
            _parentsRepository.Add(Parent);
            Parents.Add(Parent);
            Parent = new Parents();

        }
        public void SaveStudent()
        {
            try
            {
                if (CurrentAvatarPath != CurrentStudent.Avatar)
                {
                    if (!string.IsNullOrEmpty(CurrentStudent.Avatar))
                    {
                        File.Delete(CurrentStudent.Avatar);
                    }
                    string path = Path.GetFileName(CurrentAvatarPath);
                    string str=Directory.GetCurrentDirectory();
                    CurrentStudent.Avatar = $"{str}/StudentsAvatars/{path}";
                    File.Copy(CurrentAvatarPath, CurrentStudent.Avatar);
                }
            }
            catch { }
            if (CurrentStudent.Id == Guid.Empty)
            {
                CurrentStudent.Id = Guid.NewGuid();
                CurrentStudent.GroupId= CurrentGroup.Id;
                _studentRepository.Add(CurrentStudent);
                var backPage = IoC.Get<StudentsListViewModel>();
                backPage.CurrentGroup= CurrentGroup;
                Switcher.SwitchAsync(backPage,new System.Threading.CancellationToken());

            }
            else _studentRepository.Update(CurrentStudent);
        }
        public void CreateCharacteristic()
        {
            var createCharacteristic = IoC.Get<CharacteristicFormViewModel>();
            Switcher.SwitchAsync(createCharacteristic, new System.Threading.CancellationToken());
        }
    }
}
