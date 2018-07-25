using HuoYun.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuoYun.Domain.Abstract
{
    public interface IDriverRepository
    {
        IEnumerable<T_Driver> Drivers { get; }
    }
}
