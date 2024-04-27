namespace SeliverstovSports
{
    partial class MenuForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MenuForm));
            this.label3 = new System.Windows.Forms.Label();
            this.BackBT = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.ProductList = new System.Windows.Forms.DataGridView();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel5 = new System.Windows.Forms.Panel();
            this.ProductPicture = new System.Windows.Forms.PictureBox();
            this.panel4 = new System.Windows.Forms.Panel();
            this.QuantityLabel = new System.Windows.Forms.Label();
            this.panel3 = new System.Windows.Forms.Panel();
            this.CostLabel = new System.Windows.Forms.Label();
            this.ManufacturerLabel = new System.Windows.Forms.Label();
            this.DescriptionLabel = new System.Windows.Forms.Label();
            this.NameLabel = new System.Windows.Forms.Label();
            this.DeleteBT = new System.Windows.Forms.Button();
            this.AddBT = new System.Windows.Forms.Button();
            this.OrderBT = new System.Windows.Forms.Button();
            this.panel2 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ProductList)).BeginInit();
            this.panel1.SuspendLayout();
            this.panel5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ProductPicture)).BeginInit();
            this.panel4.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Comic Sans MS", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label3.Location = new System.Drawing.Point(106, 3);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(267, 26);
            this.label3.TabIndex = 13;
            this.label3.Text = "ООО «Спортивные товары»";
            // 
            // BackBT
            // 
            this.BackBT.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.BackBT.Font = new System.Drawing.Font("Comic Sans MS", 9.75F);
            this.BackBT.Location = new System.Drawing.Point(755, 12);
            this.BackBT.Name = "BackBT";
            this.BackBT.Size = new System.Drawing.Size(104, 38);
            this.BackBT.TabIndex = 10;
            this.BackBT.Text = "назад";
            this.BackBT.UseVisualStyleBackColor = false;
            this.BackBT.Click += new System.EventHandler(this.BackBT_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::SeliverstovSports.Properties.Resources.logo;
            this.pictureBox1.Location = new System.Drawing.Point(0, 3);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(100, 76);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 14;
            this.pictureBox1.TabStop = false;
            // 
            // ProductList
            // 
            this.ProductList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.ProductList.BackgroundColor = System.Drawing.Color.White;
            this.ProductList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.ProductList.GridColor = System.Drawing.SystemColors.ControlDarkDark;
            this.ProductList.Location = new System.Drawing.Point(0, 94);
            this.ProductList.Name = "ProductList";
            this.ProductList.ReadOnly = true;
            this.ProductList.Size = new System.Drawing.Size(872, 263);
            this.ProductList.TabIndex = 15;
            this.ProductList.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.ProductList_CellClick);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.panel1.Controls.Add(this.panel5);
            this.panel1.Controls.Add(this.panel4);
            this.panel1.Controls.Add(this.panel3);
            this.panel1.Controls.Add(this.DeleteBT);
            this.panel1.Controls.Add(this.AddBT);
            this.panel1.Controls.Add(this.OrderBT);
            this.panel1.ForeColor = System.Drawing.SystemColors.ControlText;
            this.panel1.Location = new System.Drawing.Point(0, 354);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(869, 105);
            this.panel1.TabIndex = 16;
            // 
            // panel5
            // 
            this.panel5.BackColor = System.Drawing.Color.White;
            this.panel5.Controls.Add(this.ProductPicture);
            this.panel5.Location = new System.Drawing.Point(12, 3);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(127, 94);
            this.panel5.TabIndex = 20;
            // 
            // ProductPicture
            // 
            this.ProductPicture.Location = new System.Drawing.Point(14, 6);
            this.ProductPicture.Name = "ProductPicture";
            this.ProductPicture.Size = new System.Drawing.Size(100, 76);
            this.ProductPicture.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.ProductPicture.TabIndex = 15;
            this.ProductPicture.TabStop = false;
            // 
            // panel4
            // 
            this.panel4.BackColor = System.Drawing.Color.White;
            this.panel4.Controls.Add(this.QuantityLabel);
            this.panel4.Location = new System.Drawing.Point(522, 3);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(121, 93);
            this.panel4.TabIndex = 20;
            // 
            // QuantityLabel
            // 
            this.QuantityLabel.AutoSize = true;
            this.QuantityLabel.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.QuantityLabel.Location = new System.Drawing.Point(10, 14);
            this.QuantityLabel.MaximumSize = new System.Drawing.Size(100, 0);
            this.QuantityLabel.Name = "QuantityLabel";
            this.QuantityLabel.Size = new System.Drawing.Size(85, 36);
            this.QuantityLabel.TabIndex = 19;
            this.QuantityLabel.Text = "Наличие на складе:";
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.Color.White;
            this.panel3.Controls.Add(this.CostLabel);
            this.panel3.Controls.Add(this.ManufacturerLabel);
            this.panel3.Controls.Add(this.DescriptionLabel);
            this.panel3.Controls.Add(this.NameLabel);
            this.panel3.Location = new System.Drawing.Point(164, 3);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(352, 94);
            this.panel3.TabIndex = 19;
            // 
            // CostLabel
            // 
            this.CostLabel.AutoSize = true;
            this.CostLabel.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.CostLabel.Location = new System.Drawing.Point(12, 68);
            this.CostLabel.Name = "CostLabel";
            this.CostLabel.Size = new System.Drawing.Size(43, 18);
            this.CostLabel.TabIndex = 18;
            this.CostLabel.Text = "Цена:";
            // 
            // ManufacturerLabel
            // 
            this.ManufacturerLabel.AutoSize = true;
            this.ManufacturerLabel.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.ManufacturerLabel.Location = new System.Drawing.Point(12, 50);
            this.ManufacturerLabel.Name = "ManufacturerLabel";
            this.ManufacturerLabel.Size = new System.Drawing.Size(111, 18);
            this.ManufacturerLabel.TabIndex = 17;
            this.ManufacturerLabel.Text = "Производитель:";
            // 
            // DescriptionLabel
            // 
            this.DescriptionLabel.AutoSize = true;
            this.DescriptionLabel.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.DescriptionLabel.Location = new System.Drawing.Point(12, 27);
            this.DescriptionLabel.Name = "DescriptionLabel";
            this.DescriptionLabel.Size = new System.Drawing.Size(116, 18);
            this.DescriptionLabel.TabIndex = 16;
            this.DescriptionLabel.Text = "Описание товара";
            // 
            // NameLabel
            // 
            this.NameLabel.AutoSize = true;
            this.NameLabel.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.NameLabel.Location = new System.Drawing.Point(12, 6);
            this.NameLabel.Name = "NameLabel";
            this.NameLabel.Size = new System.Drawing.Size(147, 18);
            this.NameLabel.TabIndex = 15;
            this.NameLabel.Text = "Наименование товара";
            // 
            // DeleteBT
            // 
            this.DeleteBT.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.DeleteBT.Font = new System.Drawing.Font("Comic Sans MS", 9.75F);
            this.DeleteBT.ForeColor = System.Drawing.SystemColors.ControlText;
            this.DeleteBT.Location = new System.Drawing.Point(649, 4);
            this.DeleteBT.Name = "DeleteBT";
            this.DeleteBT.Size = new System.Drawing.Size(104, 44);
            this.DeleteBT.TabIndex = 17;
            this.DeleteBT.Text = "Удалить товар";
            this.DeleteBT.UseVisualStyleBackColor = false;
            this.DeleteBT.Click += new System.EventHandler(this.DeleteBT_Click);
            // 
            // AddBT
            // 
            this.AddBT.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.AddBT.Font = new System.Drawing.Font("Comic Sans MS", 9.75F);
            this.AddBT.ForeColor = System.Drawing.SystemColors.ControlText;
            this.AddBT.Location = new System.Drawing.Point(649, 53);
            this.AddBT.Name = "AddBT";
            this.AddBT.Size = new System.Drawing.Size(104, 44);
            this.AddBT.TabIndex = 16;
            this.AddBT.Text = "Добавить товар";
            this.AddBT.UseVisualStyleBackColor = false;
            this.AddBT.Click += new System.EventHandler(this.AddBT_Click);
            // 
            // OrderBT
            // 
            this.OrderBT.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.OrderBT.Font = new System.Drawing.Font("Comic Sans MS", 9.75F);
            this.OrderBT.ForeColor = System.Drawing.SystemColors.ControlText;
            this.OrderBT.Location = new System.Drawing.Point(760, 4);
            this.OrderBT.Name = "OrderBT";
            this.OrderBT.Size = new System.Drawing.Size(104, 44);
            this.OrderBT.TabIndex = 15;
            this.OrderBT.Text = "Создать заказ";
            this.OrderBT.UseVisualStyleBackColor = false;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.panel2.Controls.Add(this.pictureBox1);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.BackBT);
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(872, 97);
            this.panel2.TabIndex = 17;
            // 
            // MenuForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(871, 458);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.ProductList);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "MenuForm";
            this.Text = "Меню";
            this.Load += new System.EventHandler(this.MenuForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ProductList)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel5.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.ProductPicture)).EndInit();
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button BackBT;
        private System.Windows.Forms.DataGridView ProductList;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.PictureBox ProductPicture;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Label QuantityLabel;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label CostLabel;
        private System.Windows.Forms.Label ManufacturerLabel;
        private System.Windows.Forms.Label DescriptionLabel;
        private System.Windows.Forms.Label NameLabel;
        private System.Windows.Forms.Button DeleteBT;
        private System.Windows.Forms.Button AddBT;
        private System.Windows.Forms.Button OrderBT;
    }
}