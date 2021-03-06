﻿using ProductBLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI
{
    public partial class Product : System.Web.UI.Page
    {
        readonly BusinessLogic BL = new BusinessLogic();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridViewGetData.DataSource = BL.GetProduct();
                GridViewGetData.DataBind();
            }
        }

        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtMRP.Text))
            {
                _ = double.TryParse(txtMRP.Text, out double price);
                BL.InsertProduct(txtProductName.Text, ddlCategory.SelectedValue, txtProductDesc.Text, price);
                txtProductName.Text = "";
                txtProductDesc.Text = "";
                ddlCategory.SelectedValue = "-1";
                txtMRP.Text = "";
                txtProductName.Focus();
            }
            else
            {
                txtMRP.Focus();
            }
            GridViewGetData.DataSource = BL.GetProduct();
            GridViewGetData.DataBind();
            
            
        }

        protected void GridViewGetData_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gvR = GridViewGetData.SelectedRow;
            int id = int.Parse(gvR.Cells[1].Text);
            BL.DeleteProduct(id);
            GridViewGetData.DataSource = BL.GetProduct();
            GridViewGetData.DataBind();
            
        }
    }
}