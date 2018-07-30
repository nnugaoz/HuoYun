using HuoYun.Domain.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuoYun.Domain.Concrete
{
    class EFDistrictRepository : IDistrictRepository
    {
        HuoYunEntities context = new HuoYunEntities();

        public IEnumerable<District> Disticts
        {
            get
            {
                return context.Districts;
            }
        }
    }
}
