using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SeliverstovSports
{
    public partial class MenuForm : Form
    {
        public int curr_role;
        public int curr_id;
        public string connString;
        public int bt = 0;

        public MenuForm(int current_role, int current_id)
        {
            curr_id = current_id;
            curr_role = current_role;
            InitializeComponent();

        }
        private void GetSettings()
        {
            connString = Properties.Settings.Default.connString;
        }


        private void MenuForm_Load(object sender, EventArgs e)
        {       
            GetSettings();
            DeleteBT.Visible = false;
            AddBT.Visible = false;
            OrderBT.Visible = false;



            SqlConnection connect = new SqlConnection();

            try
            {
                SqlConnection SqlConnection = new SqlConnection(connString);
                SqlCommand sqlCommand = new SqlCommand(" SELECT [Article], [Name], [Cost], " +
                    "[Manufacturer], [CurrentDiscount]" +
                    "FROM [SeliverstovSport].[dbo].[Product]", SqlConnection);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(sqlCommand);

                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);
                ProductList.DataSource = dataSet.Tables[0];

                if (curr_role == 1)
                {
                    AddBT.Visible = true;
                    DeleteBT.Visible = true;

                }

                else if (curr_role == 3)
                {
                    OrderBT.Visible = true;
                }
                


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void ProductList_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            string product_no = Convert.ToString(ProductList.CurrentRow.Cells[0].Value);


            if (bt == 0)
            {
       
                SqlConnection SqlConnection = new SqlConnection(connString);
                SqlConnection.Open();
                SqlCommand Name = new SqlCommand($"SELECT [Name] FROM Product where [Article] = '{product_no}'", SqlConnection);
                SqlCommand Quant = new SqlCommand($"SELECT [QuantityInStock] FROM Product where Article = '{product_no}'", SqlConnection);
                SqlCommand Desc = new SqlCommand($"SELECT [Description] FROM Product where Article = '{product_no}'", SqlConnection);
                SqlCommand Manuf = new SqlCommand($"SELECT [Manufacturer] FROM Product where Article = '{product_no}'", SqlConnection);
                SqlCommand Cost = new SqlCommand($"SELECT [Cost] FROM Product where Article = '{product_no}'", SqlConnection);


                string lbname = Name.ExecuteScalar().ToString();
                string lbquant = Quant.ExecuteScalar().ToString();
                string lbdesc = Desc.ExecuteScalar().ToString();
                string lbmanuf = Manuf.ExecuteScalar().ToString();
                string lbcost = Cost.ExecuteScalar().ToString();



                QuantityLabel.Text = $"Наличие на складе: {lbquant}";
                NameLabel.Text = $"Наименование товара:{lbname}";
                DescriptionLabel.Text = $"Описание товара:{lbdesc}";
                ManufacturerLabel.Text = $"Производитель:{lbmanuf}";
                CostLabel.Text = $"Цена: {lbcost}";
            }
          
            else if (bt == 1)
            {
                this.Hide();
                FormDelete form1 = new FormDelete(product_no);
                form1.Show();

            }

            else if (bt == 2)
            {
                this.Hide();
                FormAdd form1 = new FormAdd(product_no);
                form1.Show();
            }

            
        }

        private void DeleteBT_Click(object sender, EventArgs e)
        {
            bt = 1;
        }

        private void AddBT_Click(object sender, EventArgs e)
        {
            bt = 2;
        }

        private void BackBT_Click(object sender, EventArgs e)
        {
            this.Hide();
            Application.OpenForms["Form1"].Show();
        }
    }
}
