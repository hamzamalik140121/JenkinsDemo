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
    public partial class media : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            database db = database.Instance();
            List<string> blogs = db.Blogs();
            int index = 0;
            int blogCount = blogs.Count;
            int blogOuter = 0;
            int blogInner = 0;
            for (int k = 0; k < 4; k++)
            {
                TableRow tr1 = new TableRow();
                for (int l = 0; l < 1; l++)
                {
                    if (index < blogCount)
                    {
                        TableCell tc1 = new TableCell();
                        blogOuter = index;
                        index = index + 1;
                        blogInner = index;
                        string ToDisplay = blogs[blogOuter].Substring(0, 150);
                        //inner1 = count = index + 1;
                        tc1.Text = "<div ><div class='post-media'><div class='blog-text'><a href='single.html'><h3 class='h-t'>"+ blogs[blogInner] +"</h3></a><div class='entry-meta'><h6 class='blg'><i class='fa fa-clock-o'></i> Jan 25, 2016</h6><div class='clearfix'></div><p>" + ToDisplay + "</p></div></div></div><fieldset class='rating'><legend>Please rate:</legend><input type='radio' id='" + blogs[blogInner] + "_star5' value='5' onclick='val(this)';/><label for='" + blogs[blogInner] + "_star5' title='Rocks!'>5 stars</label><input type='radio' id='" + blogs[blogInner] + "_star4'onclick='val(this)';  value='4' /><label for='" + blogs[blogInner] + "_star4' title='Pretty good'>4 stars</label><input type='radio' id='" + blogs[blogInner] + "_star3'  value='3' onclick='val(this)';/><label for='" + blogs[blogInner] + "_star3' title='Meh'>3 stars</label><input type='radio' id='" + blogs[blogInner] + "_star2' onclick='val(this)'; value='2' /><label for='" + blogs[blogInner] + "_star2' title='Kinda Bad'>2 stars</label><input type='radio' id='" + blogs[blogInner] + "_star1'  value='1' /><label for='" + blogs[blogInner] + "_star1' title='Sucks Big Time'>1 stars</label></fieldset></div>";
                        index = index + 1;
                        tr1.Cells.Add(tc1);
                    }
                }
                Blogs.Rows.Add(tr1);
            }
        

            recommendation r1 = new recommendation();
            List<string> video = r1.recommendVideos();
            int count = 0;
            int inner=0;
            //Random rnd = new Random();
            //count = rnd.Next(1, 10);
            int outer = 0;
            int inner1 = 0;
            int VideosCount = video.Count;
            for (int i = 0; i < 4; i++ )
            {
                TableRow tr1 = new TableRow();
                for (int j = 0; j < 4; j++){
                    if (count < VideosCount){
                        TableCell tc1 = new TableCell();
                        outer = count;
                        count = count+1;
                        inner = count;
                        inner1 = count = count + 1;
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