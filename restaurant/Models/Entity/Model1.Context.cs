﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace restaurant.Models.Entity
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class restaurantEntities : DbContext
    {
        public restaurantEntities()
            : base("name=restaurantEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<anasayfa> anasayfas { get; set; }
        public virtual DbSet<galeri> galeris { get; set; }
        public virtual DbSet<hakkimizda> hakkimizdas { get; set; }
        public virtual DbSet<kategori> kategoris { get; set; }
        public virtual DbSet<menu> menus { get; set; }
        public virtual DbSet<nedenbiz> nedenbizs { get; set; }
        public virtual DbSet<organizasyon> organizasyons { get; set; }
        public virtual DbSet<rezervasyon> rezervasyons { get; set; }
        public virtual DbSet<sef> sefs { get; set; }
        public virtual DbSet<special> specials { get; set; }
        public virtual DbSet<yorum> yorums { get; set; }
    }
}