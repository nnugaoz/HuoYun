﻿//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace HuoYun.Domain.Concrete
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class HuoYunEntities : DbContext
    {
        public HuoYunEntities()
            : base("name=HuoYunEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<T_CarFactory> T_CarFactory { get; set; }
        public virtual DbSet<T_CargoOwner> T_CargoOwner { get; set; }
        public virtual DbSet<T_CarResources> T_CarResources { get; set; }
        public virtual DbSet<T_Dictionary> T_Dictionary { get; set; }
        public virtual DbSet<T_Driver> T_Driver { get; set; }
        public virtual DbSet<T_GoodsResources> T_GoodsResources { get; set; }
        public virtual DbSet<T_LeadTheWay> T_LeadTheWay { get; set; }
        public virtual DbSet<T_User> T_User { get; set; }
    }
}