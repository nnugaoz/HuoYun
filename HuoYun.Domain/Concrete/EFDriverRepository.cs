using HuoYun.Domain.Abstract;
using HuoYun.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuoYun.Domain.Concrete
{
    public class EFDriverRepository : IDriverRepository
    {
        EFDbContext context = new EFDbContext();

        public IEnumerable<T_Driver> Drivers
        {
            get
            {
                return context.Drivers;
            }
        }
    }
}
