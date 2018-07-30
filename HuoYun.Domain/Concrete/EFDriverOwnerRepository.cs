using HuoYun.Domain.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuoYun.Domain.Concrete
{
    public class EFDriverOwnerRepository : IDriverOwnerRepository
    {
        HuoYunEntities context = new HuoYunEntities();

        public IEnumerable<DriverOwner> Drivers
        {
            get
            {
                return context.DriverOwners;
            }
        }
    }
}
