﻿using HuoYun.Domain.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuoYun.Domain.Abstract
{
    public interface IDriverOwnerRepository
    {
        IEnumerable<DriverOwner> Drivers { get; }
    }
}
