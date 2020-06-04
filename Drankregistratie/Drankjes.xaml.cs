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
    /// Interaction logic for Drankjes.xaml
    /// </summary>
    public partial class Drankjes : UserControl
    {
        DataClasses1DataContext db;
        private dranken hetItem;
        public Drankjes(dranken hetItem, DataClasses1DataContext db)
        {
            this.db = db;
            this.hetItem = hetItem;
            InitializeComponent();
            txtNaam.Text = hetItem.NAAM;
            txtSoort.Text = hetItem.SOORT;
            txtPrijs.Text = hetItem.PRIJS.ToString();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            hetItem.NAAM = txtNaam.Text;
            hetItem.SOORT = txtSoort.Text;
            hetItem.PRIJS = Convert.ToDecimal(txtPrijs.Text);
            db.SubmitChanges();
        }

        private void btnSave1_Click(object sender, RoutedEventArgs e)
        {
            dranken deDrank = new dranken();
            deDrank.NAAM = txtNaam.Text;
            deDrank.SOORT = txtSoort.Text;
            deDrank.PRIJS = Convert.ToDecimal(txtPrijs.Text);
            db.drankens.InsertOnSubmit(deDrank);
            db.SubmitChanges();
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            int id = 0;
            if (Int32.TryParse(hetItem.ID.ToString(), out id))
            {
                var hetProduct = (from dranken in db.drankens
                                  where dranken.ID == id
                                  select dranken).Single();

                db.drankens.DeleteOnSubmit(hetProduct);
                db.SubmitChanges();
            }
        }
    }
}
