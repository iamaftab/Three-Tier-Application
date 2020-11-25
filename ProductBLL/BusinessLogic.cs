using ProductDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductBLL
{
    public class BusinessLogic
    {
        readonly DataAccess DA = new DataAccess();
        public void InsertProduct(string productName, string category, string productDesc, double price)
        {
            DA.InsertData(productName, category, productDesc, price);
        }

        public object GetProduct()
        {
            return DA.GetData();
        }
        public void DeleteProduct(int id)
        {
            DA.DeleteData(id);
        }
    }
}
