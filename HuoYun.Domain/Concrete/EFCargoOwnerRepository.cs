using HuoYun.Domain.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuoYun.Domain.Concrete
{
    public class EFCargoOwnerRepository : ICargoOwnerRepository
    {
        HuoYunEntities context = new HuoYunEntities();

        public IEnumerable<T_CargoOwner> CargoOwners
        {
            get
            {
                return context.T_CargoOwner;
            }
        }
    }
}
