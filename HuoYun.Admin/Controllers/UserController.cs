using HuoYun.Admin.Models;
using HuoYun.Domain.Abstract;
using HuoYun.Domain.Concrete;
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
                //判断手机号码是否被注册过
                User lUser = mUserRepository.Users.FirstOrDefault(e => e.CellPhone == model.CellPhone && !e.Del);
                if (lUser == null)
                {
                    User lNewUser = new User();
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
                    ModelState.AddModelError("CellPhone", "该手机号已被注册过，请更换号码注册");
                    return View(model);
                }
            }
            else
            {
                return View(model);
            }
        }

        public ActionResult Edit(String p_ID)
        {
            var lUser = mUserRepository.Users.FirstOrDefault(e => e.ID == p_ID);
            if (lUser != null)
            {
                return View(lUser);
            }
            else
            {
                return RedirectToAction("List");
            }
        }

        [HttpPost]
        public ActionResult Edit(User model)
        {
            if (ModelState.IsValid)
            {
                var lUser = mUserRepository.Users.FirstOrDefault(e => e.ID == model.ID);
                if (lUser != null)
                {
                    lUser.Type = model.Type;
                    mUserRepository.Save(lUser);
                }
                return RedirectToAction("List");
            }
            else
            {
                return View(model);
            }
        }

        public ActionResult Delete(String p_ID)
        {
            mUserRepository.Delete(p_ID);
            return RedirectToAction("List");
        }

    }
}