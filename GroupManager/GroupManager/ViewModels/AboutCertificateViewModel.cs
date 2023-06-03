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
    public class AboutCertificateViewModel:Screen
    {
        IRepository<Student> _studentsRepository;
        IRepository<Certificate> _certificateRepository;
        bool readOnlyTextBoxes;

        public AboutCertificateViewModel(
            IRepository<Student>_studentRepository,
            IRepository<Certificate>_certificateRepository
            )
        {
            this._studentsRepository = _studentRepository;
            this._certificateRepository= _certificateRepository;
            
        }
        public bool ReadOnlyTextBoxes
        {
            get => readOnlyTextBoxes;

            set
            {
                readOnlyTextBoxes = value;
                NotifyOfPropertyChange(() => ReadOnlyTextBoxes);
            }
        }
        string currentAvatarPath;
        public string CurrentAvatarPath
        {
            get
            {
                return currentAvatarPath;
            }

            set
            {
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
        public Group CurrentGroup { get; set; }
        public Student CurrentStudent { get; set; }
        public Certificate CurrentCertificate { get; set; }



    }
}
