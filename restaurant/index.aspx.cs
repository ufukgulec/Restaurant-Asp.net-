using restaurant.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restaurant
{
    public partial class index : System.Web.UI.Page
    {
        restaurantEntities db = new restaurantEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            RepeaterAnasayfa.DataSource = db.anasayfas.ToList();
            RepeaterAnasayfa.DataBind();
            Repeater1.DataSource = db.hakkimizdas.ToList();
            Repeater1.DataBind();
            ListViewNeden.DataSource = db.nedenbizs.ToList();
            ListViewNeden.DataBind();
            DataListkategori.DataSource = db.kategoris.ToList();
            DataListkategori.DataBind();
            ListViewMenu.DataSource = db.menus.ToList();
            ListViewMenu.DataBind();
            DataListSpe.DataSource = db.specials.ToList();
            DataListSpe.DataBind();
            ListView1.DataSource = db.specials.ToList();
            ListView1.DataBind();
            ListViewOrganizasyon.DataSource = db.organizasyons.ToList();
            ListViewOrganizasyon.DataBind();
            ListViewYorum.DataSource = db.yorums.Where(p => p.onay == true).ToList();
            ListViewYorum.DataBind();
            ListViewGaleri.DataSource = db.galeris.Where(p => p.onay == true).ToList();
            ListViewGaleri.DataBind();
            ListViewSef.DataSource = db.sefs.ToList();
            ListViewSef.DataBind();
            Repeateriletisim.DataSource = db.anasayfas.ToList();
            Repeateriletisim.DataBind();


        }
    }
}