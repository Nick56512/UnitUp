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
    public class DeleteRequestCertificateViewModel:Screen
    {
        public Student CurrentStudent { get; set; }
        public Group CurrentGroup { get; set; }
        public Certificate Certificate { get; set; }
        IRepository<Student> studentRepository;
        IRepository<Certificate> certificateRepo;
        public DeleteRequestCertificateViewModel(IRepository<Student> _student,IRepository<Certificate>_certificateRepository)
        {
            this.studentRepository = _student;
            this.certificateRepo = _certificateRepository;
        }
        public void DeleteCertificate()
        {
            if (Certificate is null)
                return;

            certificateRepo.Delete(Certificate);
            ReturnBack();
        }
        public void ReturnBack()
        {
            var certificatePage = IoC.Get<ListCertificatesViewModel>();
            certificatePage.CurrentGroup = CurrentGroup;
            certificatePage.CurrentStudent = CurrentStudent;
            Switcher.SwitchAsync(certificatePage, new System.Threading.CancellationToken());
        }
    }
}
