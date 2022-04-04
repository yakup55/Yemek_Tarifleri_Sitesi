using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public partial class GununYemegiAdmin : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            SqlCommand komut = new SqlCommand("Select*From Tbl_Yemekler ", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList4.DataSource = oku;
            DataList4.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
    }
}