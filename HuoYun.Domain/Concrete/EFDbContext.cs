using HuoYun.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuoYun.Domain.Concrete
{
    class EFDbContext:DbContext
    {
        public DbSet<T_User> Users { get; set; }
    }
}
