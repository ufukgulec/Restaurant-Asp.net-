using restaurant.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restaurant.admin
{
    public partial class menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        restaurantEntities db = new restaurantEntities();
        protected void Ekle_Click(object sender, EventArgs e)
        {
            Models.Entity.menu m = new Models.Entity.menu();
            m.ad = TextBoxad.Text;
            m.icindekiler = TextBoxicindekler.Text;
            m.fiyat = Convert.ToDecimal(TextBoxfiyat.Text);
            m.kategoriId =Convert.ToInt32( DropDownListkategori.SelectedItem.Value);
            m.resim = TextBoxresim.Text;
            db.menus.Add(m);
            db.SaveChanges();
            Response.Redirect("/admin/menu.aspx");

        }

        protected void spesiyal_Click(object sender, EventArgs e)
        {
            special s = new special();
            s.ad = TextBoxSad.Text;
            s.aciklama= TextBoxSaciklama.Text;
            s.baslik = TextBoxSbaslik.Text;
            s.resim = TextBoxSresim.Text;
            db.specials.Add(s);
            db.SaveChanges();
            Response.Redirect("/admin/menu.aspx");
        }
    }
}