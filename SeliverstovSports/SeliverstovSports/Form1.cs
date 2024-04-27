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
    public partial class Form1 : Form
    {
        public string connString;
        public int current_role;
        public int current_id;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            GetSettings();
        }

        private void GetSettings()
        {
            connString = Properties.Settings.Default.connString;
        }

        private void GuestBT_Click(object sender, EventArgs e)
        {
            this.Hide();

            MenuForm menu = new MenuForm(current_id, current_role);
            menu.Show();

        }

        private void CheckBT_Click(object sender, EventArgs e)
        {
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = connString;

            try
            {
                connect.Open();
                SqlCommand open = new SqlCommand();
                open.CommandType = CommandType.StoredProcedure;
                open.CommandText = "checkPassword";
                open.Parameters.AddWithValue("@Login", LoginTB.Text);
                open.Parameters.AddWithValue("@Password", PasswordTB.Text);
                open.Connection = connect;
                SqlDataReader sqlReader = open.ExecuteReader();
                sqlReader.Read();

    
                if (sqlReader.HasRows)
                {
                    current_id = sqlReader.GetInt32(0);
                    current_role = sqlReader.GetInt32(1);

                    this.Hide();
                    MenuForm menu = new MenuForm(current_id, current_role);
                    menu.Show();
             
                }
                else
                {
                    MessageBox.Show("Неправильный логин или пароль");

                }
            }
            
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
