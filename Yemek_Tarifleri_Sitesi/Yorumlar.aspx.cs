using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            //onaylı yorumlar listesi
            SqlCommand komut = new SqlCommand("Select*From Tbl_Yorumlar where YorumOnay=1", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            //onaysız yorumlar
            SqlCommand komut1 = new SqlCommand("Select*From Tbl_Yorumlar where YorumOnay=0", bgl.baglanti());
            SqlDataReader oku1 = komut1.ExecuteReader();
            DataList2.DataSource = oku1;
            DataList2.DataBind();

            Panel1.Visible = false;
            Panel3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel1.Visible = true;
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }
    }
}