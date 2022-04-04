using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public partial class Hakkımızda : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select*From Tbl_Hakkimizda", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList3.DataSource = oku;
            DataList3.DataBind();
        }
    }
}