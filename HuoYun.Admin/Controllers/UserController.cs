using HuoYun.Admin.Models;
using HuoYun.Domain.Abstract;
using HuoYun.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HuoYun.Admin.Controllers
{
    public class UserController : Controller
    {
        IUserRepository mUserRepository;

        public UserController(IUserRepository pUserRepository)
        {
            this.mUserRepository = pUserRepository;
        }

        //
        // GET: /User/
        public ActionResult List()
        {
            return View(mUserRepository.Users);
        }

        public ActionResult New()
        {
            UserNewViewModel model = new UserNewViewModel();
            return View(model);
        }

        [HttpPost]
        public ActionResult New(UserNewViewModel model)
        {

            if (ModelState.IsValid)
            {
                T_User lNewUser = new T_User();
                lNewUser.ID = Guid.NewGuid().ToString();
                lNewUser.CellPhone = model.CellPhone;
                lNewUser.Password = model.Password;
                lNewUser.Type = model.Type;
                lNewUser.Del = false;
                lNewUser.EditDate = DateTime.Now;
                lNewUser.EditMan = "Admin";
                mUserRepository.Save(lNewUser);
                return RedirectToAction("List");
            }
            else
            {
                return View(model);
            }
        }
    }
}