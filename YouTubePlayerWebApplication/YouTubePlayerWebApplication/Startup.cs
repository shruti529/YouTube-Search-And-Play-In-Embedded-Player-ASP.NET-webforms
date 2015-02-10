using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(YouTubePlayerWebApplication.Startup))]
namespace YouTubePlayerWebApplication
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
