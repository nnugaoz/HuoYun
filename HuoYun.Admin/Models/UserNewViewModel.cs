using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace HuoYun.Admin.Models
{
    public class UserNewViewModel
    {
        [Required(ErrorMessage="请输入手机号")]
        [RegularExpression("^1[0-9]{10}$",ErrorMessage="请输入合法的手机号码")]
        public string CellPhone { get; set; }

        [Required(ErrorMessage="请输入密码")]
        public string Password { get; set; }

        [Compare("Password",ErrorMessage="两次输入的密码不一致")]
        public string PasswordConfirm { get; set; }

        [Required(ErrorMessage="请选择用户类型")]
        public int Type { get; set; }
    }
}