using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SeliverstovSports
{
    public partial class FormDelete : Form
    {
        public string order_no;

        public FormDelete(string ord_no)
        {
            order_no = ord_no;
            InitializeComponent();
        }
    }
}
