using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string kategoriid="";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["kategoriid"];
            SqlCommand komut = new SqlCommand("Select*From Tbl_Yemekler where Kategoriid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();

        }
    }
}