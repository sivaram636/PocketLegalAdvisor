using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.IO;
namespace WebApplication1
{
    public partial class DetailsPage : System.Web.UI.Page
    {
        public string strValue;
        public XDocument doc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string appdatafolder = Path.Combine(HttpContext.Current.Request.PhysicalApplicationPath, "App_Data", "Laws.xml");
                doc = XDocument.Load(appdatafolder);
                strValue = Request.QueryString["SearchText"].ToString().ToUpper();
                loadRules();

            }
           
        }

        public void loadRules()
        {
                       
            try
            {
               
                var servers = (from rules in doc.Descendants("lawdetails")
                               where rules.Element("Description").Value.ToUpper().Contains(strValue)
                               select rules.Element("Description").Value).ToList();

                lstRules.DataSource = servers;
                lstRules.DataBind();

            }
            catch (Exception ex)
            {

                throw;
            }
        }

        /// <summary>
        /// Function to read data from xml using linq
        /// reference:http://www.codeproject.com/Articles/42336/An-Introduction-to-LINQ-to-XML
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void lstRules_SelectedIndexChanged(object sender, EventArgs e)
        {

            
            string strselectedValue = lstRules.SelectedValue.ToString().ToUpper().Trim();
            string appdatafolder = Path.Combine(HttpContext.Current.Request.PhysicalApplicationPath, "App_Data", "Laws.xml");
            doc = XDocument.Load(appdatafolder);
                
            List<Rules> servers = (from rules in doc.Descendants("lawdetails")
                           where rules.Element("Description").Value.ToUpper().Trim().Equals(strselectedValue)
                           select new Rules { Penalty = rules.Element("Penalty").Value, 
                                             Section= rules.Element("Section").Value}).ToList();

            
            var str = (from p in servers
                       select "Penalty:" + p.Penalty + Environment.NewLine + ", Section:" + p.Section).ToList();
            lstDescription.DataSource = str;
            lstDescription.DataBind();


        }

        protected void lstRules_TextChanged(object sender, EventArgs e)
        {
            string test = lstRules.SelectedItem.Value;
        }
    }
}