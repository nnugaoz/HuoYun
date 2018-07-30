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
    public class DriverOwnerController : Controller
    {
        IUserRepository mUserRepository;

        public DriverOwnerController(IUserRepository pUserRepository)
        {
            mUserRepository = pUserRepository;
        }

        public ActionResult DriverList()
        {
            return View(mUserRepository.Users.Where(e => e.Type == 2));
        }

        public ActionResult OwnerList()
        {

            return View(mUserRepository.Users.Where(e => e.Type == 3));
        }

        public ActionResult DriverEdit(string p_UserID)
        {
            var lUser = mUserRepository.Users.FirstOrDefault(e => e.ID == p_UserID);

            if (lUser.DriverOwners.Count == 0)
            {
                lUser.DriverOwners.Add(new DriverOwner());
            }
            return View(lUser);
        }

        [HttpPost]
        public ActionResult DriverEdit(User pUser)
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
                            pUser.DriverOwners.ElementAt(0).IDCardImgPath = lFilePath;
                            break;

                        case "HeadImg":
                            lFilePath += "/HeadImg" + pUser.ID + ".jpg";
                            Request.Files[i].SaveAs(lFilePath);
                            pUser.DriverOwners.ElementAt(0).HeadImgPath = lFilePath;
                            break;

                        case "CarImg":
                            lFilePath += "/CarImg" + pUser.ID + ".jpg";
                            Request.Files[i].SaveAs(lFilePath);
                            pUser.DriverOwners.ElementAt(0).CarImgPath = lFilePath;
                            break;

                        case "DRImg":
                            lFilePath += "/DRImg" + pUser.ID + ".jpg";
                            Request.Files[i].SaveAs(lFilePath);
                            pUser.DriverOwners.ElementAt(0).DRImgPath = lFilePath;
                            break;

                        case "DLImg":
                            lFilePath += "/DLImg" + pUser.ID + ".jpg";
                            Request.Files[i].SaveAs(lFilePath);
                            pUser.DriverOwners.ElementAt(0).DLImgPath = lFilePath;
                            break;
                    }
                }
                mUserRepository.SaveDriver(pUser);
                return RedirectToAction("DriverList");
            }
            else
            {
                return View(pUser);
            }
        }

        public ActionResult OwnerEdit(string p_UserID, string p_DriverOwnerID)
        {
            var lUser = mUserRepository.Users.FirstOrDefault(e => e.ID == p_UserID);
            var lDriverOwner = lUser.DriverOwners.FirstOrDefault(e => e.ID == p_DriverOwnerID);
            var lOwnerViewModel = new User
            {
                ID = lUser.ID
                ,
                CellPhone = lUser.CellPhone
                ,
                DriverOwners = new List<DriverOwner>()
            };

            if (lDriverOwner != null)
            {
                lOwnerViewModel.DriverOwners.Add(lDriverOwner);
            }
            else
            {
                lOwnerViewModel.DriverOwners.Add(new DriverOwner());
            }

            return View(lOwnerViewModel);
        }

        [HttpPost]
        public ActionResult OwnerEdit(User p_User)
        {
            if (ModelState.IsValid)
            {
                string lSavePaht = System.Configuration.ConfigurationManager.AppSettings["ImagePath"].ToString();
                string lFilePath = lSavePaht;
                for (var i = 0; i < Request.Files.Count; i++)
                {
                    lFilePath = lSavePaht;
                    if (Request.Files[i].ContentLength == 0) continue;

                    switch (Request.Files.Keys[i])
                    {
                        case "fileIDCardImg":
                            lFilePath += "/IDCard" + p_User.ID + ".jpg";
                            Request.Files[i].SaveAs(lFilePath);
                            p_User.DriverOwners.ElementAt(0).IDCardImgPath = lFilePath;
                            break;

                        case "fileHeadImg":
                            lFilePath += "/Head" + p_User.ID + ".jpg";
                            Request.Files[i].SaveAs(lFilePath);
                            p_User.DriverOwners.ElementAt(0).HeadImgPath = lFilePath;
                            break;

                        case "fileBLImg":
                            lFilePath += "/BL" + p_User.ID + ".jpg";
                            Request.Files[i].SaveAs(lFilePath);
                            p_User.DriverOwners.ElementAt(0).BLImgPath = lFilePath;
                            break;
                    }
                }
                mUserRepository.SaveOwner(p_User);
                return RedirectToAction("OwnerList");
            }
            else
            {
                return View(p_User);
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