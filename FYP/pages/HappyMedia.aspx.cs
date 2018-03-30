using FYP.classes;
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
    public partial class HappyMedia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            recommendation r1 = new recommendation();
            List<string> video = r1.recommendHappyVideos();
            int count = 0;
            int inner = 0;
            int outer = 0;
            int inner1 = 0;
            int VideosCount = video.Count;
            for (int i = 0; i < 4; i++)
            {
                TableRow tr1 = new TableRow();
                for (int j = 0; j < 4; j++)
                {
                    if (count < VideosCount)
                    {
                        TableCell tc1 = new TableCell();
                        outer = count;
                        count = count + 1;
                        inner = count;
                        count = count + 1;
                        inner1 = count ;
                        tc1.Text = "<div ><a class='play-icon popup-with-zoom-anim' href='#small-dialog'><iframe type='text/html' width='200' height='300' src='" + video[outer] + "' frameborder='0'></iframe></a><fieldset class='rating'><legend>Please rate:</legend><input type='radio' id='" + video[inner] + "_" + video[inner1] + "_star5' value='5' onclick='val(this)';/><label for='" + video[inner] + "_" + video[inner1] + "_star5' title='Rocks!'>5 stars</label><input type='radio' id='" + video[inner] + "_" + video[inner1] + "_star4'onclick='val(this)';  value='4' /><label for='" + video[inner] + "_" + video[inner1] + "_star4' title='Pretty good'>4 stars</label><input type='radio' id='" + video[inner] + "_" + video[inner1] + "_star3'  value='3' onclick='val(this)';/><label for='" + video[inner] + "_" + video[inner1] + "_star3' title='Meh'>3 stars</label><input type='radio' id='" + video[inner] + "_" + video[inner1] + "_star2' onclick='val(this)'; value='2' /><label for='" + video[inner] + "_" + video[inner1] + "_star2' title='Kinda Bad'>2 stars</label><input type='radio' id='" + video[inner] + "_" + video[inner1] + "_star1'  value='1' /><label for='" + video[inner] + "_" + video[inner1] + "_star1' title='Sucks Big Time'>1 stars</label></fieldset></div>";
                        count = count + 1;
                        tr1.Cells.Add(tc1);
                    }
                }
                videos.Rows.Add(tr1);
            }
        }


        [WebMethod]

        public static Boolean StoreRating(string id)
        {
            FASAD f1 = FASAD.Instance();
            Boolean status = false;
            status = f1.storeRating(id);
            return status;
        }

    }
}