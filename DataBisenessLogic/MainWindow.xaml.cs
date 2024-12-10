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

namespace DataBisenessLogic
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly JsonSer _jsonser;
        public MainWindow()
        {
            InitializeComponent();

            var db = new ServiceRepairOfHouseholdContext();
            _jsonser = new JsonSer(db);

            // получение данных в JSON
            string jsonClients = _jsonser.GetClientsJson();

            //tvb.Text= (jsonClients);
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {

        }
    }
}
