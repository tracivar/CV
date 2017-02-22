using System;
using System.Collections;
using System.Text;

namespace WebDesignNew
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void fillPage()
        {
            ArrayList bloggersList = ConnectionClass.GetBloggersByCountry(DropDownList1.SelectedValue);
            StringBuilder sb = new StringBuilder();

            foreach (bloggers bloggers in bloggersList) ;


        }
    }
}