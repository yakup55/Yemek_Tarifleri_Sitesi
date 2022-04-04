using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public partial class Tarifler : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            SqlCommand komut = new SqlCommand("Select *From Tbl_Tarifler where TarifDurum=0", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList3.DataSource = oku;
            DataList3.DataBind();

            SqlCommand komut1 = new SqlCommand("Select *From Tbl_Tarifler where TarifDurum=1", bgl.baglanti());
            SqlDataReader oku1 = komut1.ExecuteReader();
            DataList4.DataSource = oku1;
            DataList4.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}