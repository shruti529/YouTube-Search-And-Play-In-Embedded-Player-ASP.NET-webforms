using System;
using System.Collections.Generic;
using System.Web.UI;
using Google.GData.YouTube;
using Google.GData.Client;
using Google.YouTube; //For Video class
using System.Web;

namespace YouTubePlayerWebApplication
{
    public partial class PlayVideo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            player.Attributes["src"] = "http://www.youtube.com/embed/" + Request.QueryString["VideoId"] + "?enablejsapi=1&origin=http://example.com";                       
        }
    }
}