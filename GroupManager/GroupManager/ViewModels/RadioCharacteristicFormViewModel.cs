using Caliburn.Micro;
using GroupManager.Models;
using Microsoft.Win32;
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
            res.CharacteristicModel= CharacteristicModel;
            Switcher.SwitchAsync(res, new System.Threading.CancellationToken());
        }
        public void CreateCharacteristic()
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = "Doc file (.doc)|*.doc";
            if (saveFileDialog.ShowDialog() == true)
            {
                manager.CreateCharacteristic(CharacteristicModel,saveFileDialog.FileName);
            }
        }
    }
}
