namespace SeliverstovSports
{
    partial class Form1
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.LoginTB = new System.Windows.Forms.TextBox();
            this.PasswordTB = new System.Windows.Forms.TextBox();
            this.CheckBT = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.GuestBT = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // LoginTB
            // 
            this.LoginTB.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.LoginTB.Location = new System.Drawing.Point(145, 223);
            this.LoginTB.Name = "LoginTB";
            this.LoginTB.Size = new System.Drawing.Size(100, 20);
            this.LoginTB.TabIndex = 0;
            this.LoginTB.Text = "m4ic8j5qgstw@gmail.com";
            // 
            // PasswordTB
            // 
            this.PasswordTB.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.PasswordTB.Location = new System.Drawing.Point(145, 306);
            this.PasswordTB.Name = "PasswordTB";
            this.PasswordTB.Size = new System.Drawing.Size(100, 20);
            this.PasswordTB.TabIndex = 1;
            this.PasswordTB.Text = "2L6KZG";
            this.PasswordTB.UseSystemPasswordChar = true;
            // 
            // CheckBT
            // 
            this.CheckBT.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.CheckBT.Font = new System.Drawing.Font("Comic Sans MS", 9.75F);
            this.CheckBT.Location = new System.Drawing.Point(136, 361);
            this.CheckBT.Name = "CheckBT";
            this.CheckBT.Size = new System.Drawing.Size(119, 56);
            this.CheckBT.TabIndex = 2;
            this.CheckBT.Text = "Авторизоваться";
            this.CheckBT.UseVisualStyleBackColor = false;
            this.CheckBT.Click += new System.EventHandler(this.CheckBT_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label1.Location = new System.Drawing.Point(176, 198);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 18);
            this.label1.TabIndex = 3;
            this.label1.Text = "Логин";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Comic Sans MS", 9.75F);
            this.label2.Location = new System.Drawing.Point(176, 272);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 18);
            this.label2.TabIndex = 4;
            this.label2.Text = "Пароль";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Comic Sans MS", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label3.Location = new System.Drawing.Point(66, 159);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(267, 26);
            this.label3.TabIndex = 5;
            this.label3.Text = "ООО «Спортивные товары»";
            // 
            // GuestBT
            // 
            this.GuestBT.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.GuestBT.Font = new System.Drawing.Font("Comic Sans MS", 9.75F);
            this.GuestBT.Location = new System.Drawing.Point(136, 423);
            this.GuestBT.Name = "GuestBT";
            this.GuestBT.Size = new System.Drawing.Size(119, 56);
            this.GuestBT.TabIndex = 6;
            this.GuestBT.Text = "Войти как гость";
            this.GuestBT.UseVisualStyleBackColor = false;
            this.GuestBT.Click += new System.EventHandler(this.GuestBT_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::SeliverstovSports.Properties.Resources.logo;
            this.pictureBox1.Location = new System.Drawing.Point(145, 52);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(100, 76);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 7;
            this.pictureBox1.TabStop = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(403, 514);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.GuestBT);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.CheckBT);
            this.Controls.Add(this.PasswordTB);
            this.Controls.Add(this.LoginTB);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.Text = "Авторизация";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox LoginTB;
        private System.Windows.Forms.TextBox PasswordTB;
        private System.Windows.Forms.Button CheckBT;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button GuestBT;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}

