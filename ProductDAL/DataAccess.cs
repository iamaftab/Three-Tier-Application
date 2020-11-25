using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductDAL
{
    public class DataAccess
    {
        readonly SqlConnection conn = new SqlConnection("data source=ALPHA\\SQLEXPRESS; database='ProductDB'; integrated security='true'");
        public void InsertData(string productName, string category, string productDesc, double price)
        {
            SqlCommand cmd = new SqlCommand("InsertData", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pName", productName);
            cmd.Parameters.AddWithValue("@pCat", category);
            cmd.Parameters.AddWithValue("@pDesc", productDesc);
            cmd.Parameters.AddWithValue("@price", price);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

        }
        public object GetData()
        {
            SqlCommand cmd = new SqlCommand("GetData", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            var data = cmd.ExecuteReader();
            return data;
        }
        public void DeleteData(int id)
        {
            SqlCommand cmd = new SqlCommand("DeletaData", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pId", id);
            conn.Open();
            cmd.ExecuteReader();
            conn.Close();


        }
    }
}
