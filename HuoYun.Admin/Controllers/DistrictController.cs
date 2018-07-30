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
    public class DistrictController : Controller
    {
        IDistrictRepository mDistrictRepository;

        public DistrictController(IDistrictRepository pDistrictRepository)
        {
            mDistrictRepository = pDistrictRepository;
        }

        private DistrictIndexViewModel GenerateViewModel()
        {
            DistrictIndexViewModel model = new DistrictIndexViewModel();
            return model;
        }

        //
        // GET: /District/
        public ActionResult Index()
        {
            return View();
        }
    }
}