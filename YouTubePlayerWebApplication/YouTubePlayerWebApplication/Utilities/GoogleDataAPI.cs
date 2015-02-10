using System;
using Google.YouTube;

namespace YouTubePlayerWebApplication.Utilities
{
    public class GoogleDataAPI
    {
        public static YouTubeRequest GetYouTubeRequestObject()
        {
            var settings = new YouTubeRequestSettings("YouTubePlayerWebApplication", String.Empty);
            return new YouTubeRequest(settings);
        }
    }
}