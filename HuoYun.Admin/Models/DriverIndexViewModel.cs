using HuoYun.Domain.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HuoYun.Admin.Models
{
    public class DriverIndexViewModel
    {
        public User User { get; set; }

        public List<DriverOwner> Driver { get; set; }
    }
}