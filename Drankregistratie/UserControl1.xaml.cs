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

namespace Drankregistratie
{
    /// <summary>
    /// Interaction logic for UserControl1.xaml
    /// </summary>
    public partial class UserControl1 : UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public UserControl1()
        {
            InitializeComponent();
            drankenDG.ItemsSource = db.drankens.ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            (this.Parent as Panel).Children.Remove(this);
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            var item = (dranken)drankenDG.SelectedItem;
            drankjesDG.Children.Clear();
            Drankjes ep = new Drankjes(item, db);
            drankjesDG.Children.Add(ep);
        }

        private void btnSave1_Click(object sender, RoutedEventArgs e)
        {
            var item = (dranken)drankenDG.SelectedItem;
            drankjesDG.Children.Clear();
            Drankjes eps = new Drankjes(item, db);
            drankjesDG.Children.Add(eps);
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            var item = (dranken)drankenDG.SelectedItem;
            drankjesDG.Children.Clear();
            Drankjes eps = new Drankjes(item, db);
            drankjesDG.Children.Add(eps);
        }

        private void btnZoek_Click(object sender, RoutedEventArgs e)
        {
            string sWaarde = txtZoek.Text;
            var lijst = db.drankens.Where(p => Convert.ToString(p.ID).Contains(sWaarde));
            drankenDG.ItemsSource = lijst;
        }
    }
}
