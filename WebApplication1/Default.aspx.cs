using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Configuration;
using System.Xml;
using System.IO;
namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string strsearch = txtSearch.Text.ToString().Trim();

            string url = "DetailsPage.aspx?SearchText=";
            url += strsearch;

            Response.Redirect(url);
        }

        
    }
}