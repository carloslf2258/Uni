using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Contacts
{
    public partial class Form1 : Form
    {
        private SqlConnection cn;
        private int currentContact;
        private bool adding;

        public Form1()
        {
            InitializeComponent();

            var btnProximo = new Button
            {
                Text = "Próximo",
                Location = new Point(20, 10) // garantes que está visível
            };
            btnProximo.Click += btnProximo_Click;

            // Se o teu formulário tiver um painel que ocupa tudo,
            // adiciona aqui: panelPrincipal.Controls.Add(btnProximo);
            this.Controls.Add(btnProximo);

            // Garante que fica no topo da pilha de desenho
            btnProximo.BringToFront();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            cn = getSGBDConnection();

            loadCustomersToolStripMenuItem_Click(null, null);
        }

        private void btnProximo_Click(object sender, EventArgs e)
        {
            // Criar e exibir a nova janela em branco
            Form novaJanela = new Form();
            novaJanela.Text = "Nova Página";
            novaJanela.Size = new Size(600, 400); // ajuste conforme necessário
            novaJanela.StartPosition = FormStartPosition.CenterScreen;
            novaJanela.Show();
        }


        private SqlConnection getSGBDConnection()
        {
            return new SqlConnection("data source= LAPTOP-AF0VHCF3\\SQLEXPRESS;integrated security=true;initial catalog=Northwind");
        }

        private bool verifySGBDConnection()
        {
            if (cn == null)
                cn = getSGBDConnection();

            if (cn.State != ConnectionState.Open)
                cn.Open();

            return cn.State == ConnectionState.Open;
        }


        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex >= 0)
            {
                currentContact = listBox1.SelectedIndex;
                ShowContact();
            }
        }

        private void loadCustomersToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("SELECT * FROM Customers", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            while (reader.Read())
            {
                Contact C = new Contact();
                C.CustomerID = reader["CustomerID"].ToString();
                C.CompanyName = reader["CompanyName"].ToString();
                C.ContactName = reader["ContactName"].ToString();
                C.Address1 = reader["Address"].ToString();
                C.City = reader["City"].ToString();
                C.State = reader["Region"].ToString();
                C.ZIP = reader["PostalCode"].ToString();
                C.Country = reader["Country"].ToString();
                C.tel = reader["Phone"].ToString();
                C.FAX = reader["Fax"].ToString();
                listBox1.Items.Add(C);
            }

            cn.Close();


            currentContact = 0;
            ShowContact();
        }

        private void SubmitContact(Contact C)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT Customers (CustomerID, ContactName) " + "VALUES (@CustomerID, @ContactName) ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@CustomerID", C.CustomerID);
            cmd.Parameters.AddWithValue("@ContactName", C.ContactName);
            cmd.Connection = cn;

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to update contact in database. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }


        private void UpdateContact(Contact C)
        {
            int rows = 0;

            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE Customers " + "    ContactName = @ContactName, ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@CustomerID", C.CustomerID);

            cmd.Parameters.AddWithValue("@ContactName", C.ContactName);
            cmd.Connection = cn;

            try
            {
                rows = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to update contact in database. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                if (rows == 1)
                    MessageBox.Show("Update OK");
                else
                    MessageBox.Show("Update NOT OK");

                cn.Close();
            }
        }


        private void RemoveContact(string ContactID)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE Customers WHERE CustomerID=@contactID ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@contactID", ContactID);
            cmd.Connection = cn;

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to delete contact in database. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }


        // Helper routines
        public void LockControls()
        {
            txtID.ReadOnly = true;
            txtContact.ReadOnly = true;

        }

        public void UnlockControls()
        {
            txtID.ReadOnly = false;
            txtContact.ReadOnly = false;
        }

        public void ShowButtons()
        {
            LockControls();
            bttnAdd.Visible = true;
            bttnDelete.Visible = true;
            bttnEdit.Visible = true;
            bttnOK.Visible = false;
            bttnCancel.Visible = false;
        }

        public void ClearFields()
        {
            txtID.Text = "";
            txtContact.Text = "";

        }

        public void ShowContact()
        {
            if (listBox1.Items.Count == 0 | currentContact < 0)
                return;
            Contact contact = new Contact();
            contact = (Contact)listBox1.Items[currentContact];
            txtID.Text = contact.CustomerID;

            txtContact.Text = contact.ContactName;

        }

        public void HideButtons()
        {
            UnlockControls();
            bttnAdd.Visible = false;
            bttnDelete.Visible = false;
            bttnEdit.Visible = false;
            bttnOK.Visible = true;
            bttnCancel.Visible = true;
        }

        private bool SaveContact()
        {
            Contact contact = new Contact();
            try
            {
                contact.CustomerID = txtID.Text;
                contact.ContactName = txtContact.Text;


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                SubmitContact(contact);
                listBox1.Items.Add(contact);
            }
            else
            {
                UpdateContact(contact);
                listBox1.Items[currentContact] = contact;
            }
            return true;
        }


        private void bttnAdd_Click(object sender, EventArgs e)
        {
            adding = true;
            ClearFields();
            HideButtons();
            listBox1.Enabled = false;
        }

        private void bttnCancel_Click(object sender, EventArgs e)
        {
            listBox1.Enabled = true;
            if (listBox1.Items.Count > 0)
            {
                currentContact = listBox1.SelectedIndex;
                if (currentContact < 0)
                    currentContact = 0;
                ShowContact();
            }
            else
            {
                ClearFields();
                LockControls();
            }
            ShowButtons();
        }

        private void bttnEdit_Click(object sender, EventArgs e)
        {
            currentContact = listBox1.SelectedIndex;
            if (currentContact < 0)
            {
                MessageBox.Show("Please select a contact to edit");
                return;
            }
            adding = false;
            HideButtons();
            listBox1.Enabled = false;
        }

        private void bttnOK_Click(object sender, EventArgs e)
        {
            try
            {
                SaveContact();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            listBox1.Enabled = true;
            int idx = listBox1.FindString(txtID.Text);
            listBox1.SelectedIndex = idx;
            ShowButtons();
        }

        private void bttnDelete_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex > -1)
            {
                try
                {
                    RemoveContact(((Contact)listBox1.SelectedItem).CustomerID);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    return;
                }
                listBox1.Items.RemoveAt(listBox1.SelectedIndex);
                if (currentContact == listBox1.Items.Count)
                    currentContact = listBox1.Items.Count - 1;
                if (currentContact == -1)
                {
                    ClearFields();
                    MessageBox.Show("There are no more contacts");
                }
                else
                {
                    ShowContact();
                }
            }
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
