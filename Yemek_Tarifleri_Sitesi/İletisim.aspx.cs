using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public partial class İletisim : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar(MesajGonderen,MesajBaslik,MesajMail,Mesajicerik) values(@t1,@t2,@t3,@t4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@t1", GonderenAdSoyad.Text);
            komut.Parameters.AddWithValue("@t2", GonderenMail.Text);
            komut.Parameters.AddWithValue("@t3", GonderenKonu.Text);
            komut.Parameters.AddWithValue("@t4", GonderenMesaj.Text);
  
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Mesajınız alınmıştır");
        }
    }
}