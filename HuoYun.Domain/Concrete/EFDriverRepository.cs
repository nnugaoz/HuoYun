using HuoYun.Domain.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuoYun.Domain.Concrete
{
    public class EFDriverRepository : IDriverRepository
    {
        HuoYunEntities context = new HuoYunEntities();

        public IEnumerable<T_Driver> Drivers
        {
            get
            {
                return context.T_Driver;
            }
        }

        IEnumerable<T_Driver> IDriverRepository.Drivers
        {
            get { throw new NotImplementedException(); }
        }
    }
}
