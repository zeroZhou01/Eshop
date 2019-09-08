using entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using utils;
using model;

/// <summary>
/// 这个类是用来处理对数据库返回的数据
/// </summary>
/// 

namespace utils{
public class Operation
{ 
      private  Dao dao= new Dao();
       public String   loginMessage;//用于返回登录信息
       public String userName;         //用于记录用户名字
    public Operation()
    {
    }
    //这用于返回登录情况
    public int login(string strAccount, string strUserPwd)
    {
        int loginCase = 0;
        try
        {
            
            DataTable userTable = dao.getUserTable(strAccount);
            if (userTable.Rows.Count < 1)
            {
                loginCase = 1;
                loginMessage = "用户名不存在";
            }
             else if (userTable.Rows[0].ItemArray[2].ToString() != strUserPwd)
            {
                loginCase = 2;
                loginMessage = "密码错误";
            }
            else if( userTable.Rows[0].ItemArray[2].ToString() == strUserPwd)
            {
                loginCase = 3;
                userName = userTable.Rows[0].ItemArray[3].ToString();
            }
            }
        catch//当数据库有问题的时候
        {
            loginCase = 0;
            loginMessage = "服务器发生错误了";
        }
        return loginCase;
        
    }

        //将Dao返回的数据表封装成ClassUser类，并封装到list中
   
}
}