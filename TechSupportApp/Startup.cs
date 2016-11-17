using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TechSupportApp.Startup))]
namespace TechSupportApp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
