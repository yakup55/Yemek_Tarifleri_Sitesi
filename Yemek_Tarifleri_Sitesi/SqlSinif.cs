using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public class SqlSinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=MSI;Initial Catalog=Dbo_Yemektarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}