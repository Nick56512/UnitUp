using Caliburn.Micro;
using GroupManager.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GroupManager.ViewModels
{
    public class RadioCharacteristicFormViewModel
    {
        public CharacteristicModel CharacteristicModel { get; set; }
        CharacteristicManager manager;
        public RadioCharacteristicFormViewModel(CharacteristicManager manager) { 
            this.manager = manager;
        }
        public void Back()
        {
            var res = IoC.Get<CharacteristicFormViewModel>();
            Switcher.SwitchAsync(res, new System.Threading.CancellationToken());
        }
        public void CreateCharacteristic()
        {
            manager.CreateCharacteristic(CharacteristicModel);
        }
    }
}
