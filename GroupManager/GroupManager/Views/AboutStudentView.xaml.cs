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
        int previousIndex = -1;
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

        private void StudentsList_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            var dataContext = DataContext as StudentsListViewModel;
            dataContext.AboutStudent();
        }

        private void TabControl_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                var item = (mainTab.SelectedItem as TabItem);
                if (item != null)
                {
                    var dc = (DataContext as AboutStudentViewModel);
                    int index = mainTab.SelectedIndex;
                    if (index != previousIndex)
                    {
                        if (index == 0)
                        {
                            dc.AddCertificate = Visibility.Collapsed;
                            if (dc.ViewMode == Mode.Update)
                            {
                                dc.ReadonlyVisibility = Visibility.Collapsed;
                                dc.UpdateVisibility = Visibility.Visible;
                            }
                            else
                            {
                                dc.ReadonlyVisibility = Visibility.Visible;
                                dc.UpdateVisibility = Visibility.Collapsed;
                            }
                        }
                        else if (index == 1)
                        {
                            if (dc.ViewMode == Mode.ReadOnly)
                            {
                                dc.AddCertificate = Visibility.Visible;
                                dc.ReadonlyVisibility = Visibility.Collapsed;
                                dc.UpdateVisibility = Visibility.Collapsed;
                            }
                            else
                            {
                                dc.AddCertificate = Visibility.Collapsed;
                                dc.ReadonlyVisibility = Visibility.Collapsed;
                                dc.UpdateVisibility = Visibility.Collapsed;
                            }
                        }
                        previousIndex = index;
                    }
                }
            }
            catch(Exception ex) { }

        }

        private void StudentsList_MouseDoubleClick_1(object sender, MouseButtonEventArgs e)
        {
            var dataContext = DataContext as AboutStudentViewModel;
            dataContext.AboutCertificate();
        }
    }
}
