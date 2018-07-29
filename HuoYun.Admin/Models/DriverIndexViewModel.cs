using HuoYun.Domain.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HuoYun.Admin.Models
{
    public class DriverIndexViewModel
    {
        public T_User User { get; set; }

        public List<T_DriverOwner> Driver { get; set; }
    }
}