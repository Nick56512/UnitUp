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
    public class ChooseCharacteristicViewModel:Screen
    {
        public Group CurrentGroup { get; set; }
        public Student CurrentStudent { get; set; }
        public CharacteristicMode Mode { get; set; }

        public void MilitaryMode()
        {
            Mode = CharacteristicMode.ForMilitary;
            OpenCharacteristicView();

        }
        public void PromMode()
        {
            Mode = CharacteristicMode.ForProm;
            OpenCharacteristicView();
        }

        public void OpenCharacteristicView()
        {
            var createCharacteristic = IoC.Get<CharacteristicFormViewModel>();
            createCharacteristic.CurrentGroup = CurrentGroup;
            createCharacteristic.CurrentStudent = CurrentStudent;
            createCharacteristic.ModeCh = Mode;
            Switcher.SwitchAsync(createCharacteristic, new System.Threading.CancellationToken());
        }
    }
}
