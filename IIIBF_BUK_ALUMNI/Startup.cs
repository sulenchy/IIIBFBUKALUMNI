using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(IIIBF_BUK_ALUMNI.Startup))]
namespace IIIBF_BUK_ALUMNI
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
