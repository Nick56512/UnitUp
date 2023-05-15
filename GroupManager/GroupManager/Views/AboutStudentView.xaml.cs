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
    /// Interaction logic for AboutStudentView.xaml
    /// </summary>
    public partial class AboutStudentView : UserControl
    {
        public AboutStudentView()
        {
            InitializeComponent();
        }

        private void AddParent_Click(object sender, RoutedEventArgs e)
        {
            this.AddStudentParents.IsChecked = false;
            var dt = DataContext as AboutStudentViewModel;
            dt.AddParent();
            //ParentsForm.Height= 0;
        }

        private void AddPrivelege_Click(object sender, RoutedEventArgs e)
        {
            this.AddPrivelegesButton.IsChecked = false;
            var dt = DataContext as AboutStudentViewModel;
            dt.AddPrivelege();
        }
    }
}
