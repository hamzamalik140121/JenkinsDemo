using FYP.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP.pages
{

    public partial class profile : System.Web.UI.Page
    {
         
        public static string []likes = new string[10];
        public static int iter=0;

        protected void Page_Load(object sender, EventArgs e)
        {
            user.Text = Session["sessionName"].ToString();

        }

        [WebMethod]
        public static Boolean SaveLikes(string LikeValue)
        {
            FASAD f1 = FASAD.Instance();
            Boolean status = f1.SaveLikes(LikeValue);
            //likes[iter] = LikeValue;
            //iter++;
            return status;
        }

    }

}