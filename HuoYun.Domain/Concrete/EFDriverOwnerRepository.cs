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

        public IEnumerable<T_DriverOwner> Drivers
        {
            get
            {
                return context.T_DriverOwner;
            }
        }

        IEnumerable<T_DriverOwner> IDriverOwnerRepository.Drivers
        {
            get { throw new NotImplementedException(); }
        }
    }
}
