using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace BddFull
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection cn;
            OleDbCommand cmd;
            OleDbDataReader r;
            string oradb = "Provider=MSDAORA;Data Source=/;Password=;User ID=";
            String connString = oradb;
            string linha = TextBox1.Text;
            try
            {
                //Cria conexão Oracle usando MSDAORA

                cn = new OleDbConnection();
                cn.ConnectionString = connString;
                cn.Open();
                cmd = new OleDbCommand();
                //exemplo de consulta -> 
                //cmd.CommandText = "select * from tabela where n = '"+linha+"'";
                cmd.CommandText = "";
                cmd.Connection = cn;
                r = cmd.ExecuteReader();
                if (r.Read())
                {
                    DateTime dataHoraAtivacao = DateTime.ParseExact(r.GetValue(5).ToString(), "yyyyMMddHHmmss", null);
                    DateTime dataHoraPortabilidade = DateTime.ParseExact(r.GetValue(10).ToString(), "yyyyMMddHHmmss", null);

                    tblResultado.Visible = true;
                    lblBilhete.Text = r.GetValue(0).ToString();
                    lblTelefone.Text = r.GetValue(1).ToString();
                    lblRN1.Text = r.GetValue(2).ToString();
                    lblIDReceptora.Text = r.GetValue(3).ToString();
                    lblEOT.Text = r.GetValue(4).ToString();
                    lblDataHoraAtivacao.Text = dataHoraAtivacao.ToString("dd/MM/yyyy HH:mm:ss");
                    lblLNP.Text = r.GetValue(6).ToString();
                    lblMotivo.Text = r.GetValue(7).ToString();
                    lblTipoLinha.Text = r.GetValue(8).ToString();
                    lblCNL.Text = r.GetValue(9).ToString();
                    lblDataHoraJanelaPort.Text = dataHoraPortabilidade.ToString("dd/MM/yyyy HH:mm:ss");
                }
                else
                {
                    tblResultado.Visible = false;
                    ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "mensagem", "<script type=\"text/javascript\"> alert('Número de telefone não encontrado!'); </script> ", false);
                };

                cn.Close();

            }
            catch (OleDbException)

            {

            }

        }
    }
}