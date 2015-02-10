using System;
using System.Collections.Generic;
using System.Web.UI;
using Google.GData.YouTube;
using Google.GData.Client;
using Google.YouTube; //For Video class

using YouTubePlayerWebApplication.Utilities;

namespace YouTubePlayerWebApplication
{
    public partial class _Default : Page
    {     

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        var query = new YouTubeQuery(YouTubeQuery.DefaultVideoUri);
        //order results by the number of views (most viewed first)
        query.OrderBy = "viewCount";
        query.NumberToRetrieve = 10;
        query.Query = txtSearch.Text;
        query.SafeSearch = YouTubeQuery.SafeSearchValues.None;  
        var videoFeed = GoogleDataAPI.GetYouTubeRequestObject().Get<Video>(query);
        IList<Video> videoList = new List<Video>();
        foreach (var video in videoFeed.Entries)
        {
            videoList.Add(video);
        }
        VideosListView.DataSource = videoList;
        VideosListView.DataBind();
    }     
    }
}


