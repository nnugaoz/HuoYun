using HuoYun.Domain.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HuoYun.Admin.Controllers
{
    public class DriverController : Controller
    {
        IUserRepository mUserRepository;

        public DriverController(IUserRepository pUserRepository)
        {
            mUserRepository = pUserRepository;
        }

        //
        // GET: /Driver/
        public ActionResult List()
        {
            return View(mUserRepository.Users.Where(e => e.Type == 2));
        }

        public ActionResult Edit(string p_UserID)
        {
            var lUser = mUserRepository.Users.FirstOrDefault(e => e.ID == p_UserID);
            
            return View(lUser);
        }
    }
}