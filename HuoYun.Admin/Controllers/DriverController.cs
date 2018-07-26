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

            if (lUser.T_Driver.Count == 0)
            {
                lUser.T_Driver.Add(new T_Driver());
            }
            return View(lUser);
        }

        [HttpPost]
        public ActionResult Edit(T_User pUser)
        {
            if (ModelState.IsValid)
            {
                for (var i = 0; i < Request.Files.Count; i++)
                {
                    if (Request.Files[i].ContentLength == 0) continue;
                    String lImgPath = System.Configuration.ConfigurationManager.AppSettings["ImagePath"].ToString();
                    String lFilePath = lImgPath;

                    switch (Request.Files.Keys[i])
                    {
                        case "IDCardImg":
                            lFilePath += "/IDCardImg" + pUser.ID + ".jpg";
                            Request.Files[i].SaveAs(lFilePath);
                            pUser.T_Driver.ElementAt(0).IDCardImgPath = lFilePath;
                            break;

                        case "HeadImg":
                            lFilePath += "/HeadImg" + pUser.ID + ".jpg";
                            Request.Files[i].SaveAs(lFilePath);
                            pUser.T_Driver.ElementAt(0).HeadImgPath = lFilePath;
                            break;

                        case "CarImg":
                            lFilePath += "/CarImg" + pUser.ID + ".jpg";
                            Request.Files[i].SaveAs(lFilePath);
                            pUser.T_Driver.ElementAt(0).CarImgPath = lFilePath;
                            break;

                        case "DRImg":
                            lFilePath += "/DRImg" + pUser.ID + ".jpg";
                            Request.Files[i].SaveAs(lFilePath);
                            pUser.T_Driver.ElementAt(0).DRImgPath = lFilePath;
                            break;

                        case "DLImg":
                            lFilePath += "/DLImg" + pUser.ID + ".jpg";
                            Request.Files[i].SaveAs(lFilePath);
                            pUser.T_Driver.ElementAt(0).DLImgPath = lFilePath;
                            break;
                    }
                }
                mUserRepository.SaveDriver(pUser);
                return RedirectToAction("List");
            }
            else
            {
                return View(pUser);
            }
        }


        public ActionResult GetImg(String p_FilePath)
        {
            if (p_FilePath != "" && p_FilePath != null)
            {
                return File(p_FilePath, "Image/Jpeg");
            }
            else
            {
                return null;
            }
        }
    }
}