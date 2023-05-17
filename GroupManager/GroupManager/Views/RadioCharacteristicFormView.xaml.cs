using GroupManager.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GroupManager.Views
{
    /// <summary>
    /// Interaction logic for RadioCharacteristicFormView.xaml
    /// </summary>
    public partial class RadioCharacteristicFormView : UserControl
    {
        public RadioCharacteristicFormView()
        {
            InitializeComponent();
        }

        private void CheckBox_Checked(object sender, RoutedEventArgs e)
        {
            var check=sender as CheckBox;
           
            var dt = (DataContext as RadioCharacteristicFormViewModel);
            dt.CharacteristicModel.StudentRecomendations.Add(check.Content.ToString());
        }

        private void CheckBox_Unchecked(object sender, RoutedEventArgs e)
        {
            var check = sender as CheckBox;

            var dt = (DataContext as RadioCharacteristicFormViewModel);
            dt.CharacteristicModel.StudentRecomendations.Remove(check.Content.ToString());
        }

        private void RadioButton_Checked(object sender, RoutedEventArgs e)
        {
            var check = sender as RadioButton;

            var dt = (DataContext as RadioCharacteristicFormViewModel);
            dt.CharacteristicModel.PhysicalCharacteristic="Фізично "+check.Content.ToString();
        }

        private void RadioButton_Checked_1(object sender, RoutedEventArgs e)
        {
            var check = sender as RadioButton;

            var dt = (DataContext as RadioCharacteristicFormViewModel);
            string str= check.Content.ToString();
            if (str == "має")
            {
                dt.CharacteristicModel.Collective = "Підтримує дружні стосунки із студентами групи, має друзів";
            }
            else dt.CharacteristicModel.Collective = "Не підтримує дружні стосунки із студентами групи, не має друзів";
        }
    }
}
