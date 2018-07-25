using HuoYun.Domain.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HuoYun.Admin.Models
{

    public class UserListViewModel
    {
        List<UserViewModel> lUserListViewModel = new List<UserViewModel>();
        //IUserRepository mUserRepository;

        public UserListViewModel(IUserRepository pUserRepository)
        {
            //mUserRepository = pUserRepository;
            //lUserListViewModel = from e in mUserRepository.Users
            //                     orderby e.EditDate descending
            //                     select new { };
        }


    }

    public class UserViewModel
    {
        public string ID { get; set; }

        public string CellPhone { get; set; }

        public string Type { get; set; }

        public bool Del { get; set; }

        public DateTime EditDate { get; set; }

        public string EditMan { get; set; }
    }
}