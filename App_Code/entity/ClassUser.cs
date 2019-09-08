using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Entity 的摘要说明
/// </summary>
/// 
namespace entity
{ 
    //这是一个用户实体类
public class ClassUser
{
    public ClassUser()
    {
       
    }
        private int userId;
        private string account;
        private string passWord;
        private string userName;
        private string email;
        private double moneyLeft;//用户余额
        private string addres;//地址
        private string phoneNumber;//手机号
        public int UserId { get => userId; set => userId = value; }
        public string Account { get => account; set => account = value; }
        public string PassWord { get => passWord; set => passWord = value; }
        public string UserName { get => userName; set => userName = value; }

        public string Email { get => email; set => email = value; }
        public double MoneyLeft { get => moneyLeft; set =>  moneyLeft=value; }
        public string Address { get => addres; set => addres = value; }
        public string PhoneNumber { get => phoneNumber; set => phoneNumber = value; }

    }
}