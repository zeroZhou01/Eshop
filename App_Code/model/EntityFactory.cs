using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using entity;
using utils;
/// <summary>
///这是用于封装entity的
/// </summary>
/// 
namespace model {
    public class EntityFactory
    {
       

    public EntityFactory()
    {
    }
        //这个方法用于将表中置顶单行封装成一个user类
    public ClassUser ToUserClass(DataTable userTable ,int i)
        {
            
            ClassUser aUser = new ClassUser();
            
            aUser.UserId = Convert.ToInt32( userTable.Rows[i].ItemArray[0]);
            aUser.Account =userTable.Rows[i].ItemArray[1].ToString();
            aUser.PassWord = userTable.Rows[i].ItemArray[2].ToString();
            aUser.UserName = userTable.Rows[i].ItemArray[3].ToString();
            aUser.Email = userTable.Rows[i].ItemArray[4].ToString();
            aUser.MoneyLeft = Convert.ToDouble( userTable.Rows[i].ItemArray[5]);
            aUser.Address = userTable.Rows[i].ItemArray[6].ToString();
            aUser.PhoneNumber = userTable.Rows[i].ItemArray[7].ToString();
            
            return aUser;
        }
        //这是将传进来的数据封装成一个
        public ClassUser ToUserClass(int userId,string account,string passWord,string userName,string email,double  moneyLeft,string address,string phoneNumber)
        {
            ClassUser aUser = new ClassUser();
            aUser.UserId = userId;
            aUser.Account = account;
            aUser.PassWord = passWord;
            aUser.UserName = userName;
            aUser.Email = email;
            aUser.MoneyLeft = moneyLeft;
            aUser.Address = address;
            aUser.PhoneNumber = phoneNumber;
            return aUser;
        }






        //这个方法用法返回一个登录的user对象
        public ClassUser userLoginInfo(string  account)
        {
            Dao dao = new Dao();
            DataTable userTable = dao.getUserTable(account);
            ClassUser aUser = ToUserClass(userTable,0);//重载ToUserClass方法，将Table转为user实体类
            return aUser;
        }
        //返回一个封装user实体类的list
        public List<ClassUser> getUserList()
        {
            List<ClassUser> userList = new List<ClassUser>();
            ClassUser classUser;
            Dao dao = new Dao();
            DataTable userTable = dao.getAllUserTable();
            int i = 0;
            try { 
            while (i<userTable.Rows.Count)
            {
                classUser = new ClassUser();
                EntityFactory entityFactory = new EntityFactory();
                classUser = entityFactory.ToUserClass(userTable, i);
                i++;
                userList.Add(classUser);

            }
            }
            catch
            {

            }
            return userList;
        }
        //将表单行库存数据封装成一个库存实体
        public ClassStock toStockClass(DataTable stockTable ,int i) {
            ClassStock goodStock = new ClassStock();
            goodStock.GoodId=  Convert.ToInt32(stockTable.Rows[i].ItemArray[0]);
            goodStock.GoodName = stockTable.Rows[i].ItemArray[1].ToString();
            goodStock.GoodsNumber= Convert.ToInt32(stockTable.Rows[i].ItemArray[2]);
            return goodStock;
        }
        //返回一个符合条件的库存实体
        public ClassStock  getGoodsStock(int goodsId)
        {
            Dao dao = new Dao();
            DataTable stockTable = dao.getStockTable (goodsId);
            ClassStock goodsStock = toStockClass(stockTable, 0);//重载ToUserClass方法，将Table转为user实体类
            return  goodsStock;
        }
        //用于将信息封装成一个order实体类
      public ClassOrder toClassOrder(int orderId,int goodsId,string goodsName,int goodsNumber,int goodsPrice,DateTime dataTime,int orderState)
        {
            ClassOrder classOrder = new ClassOrder();
            classOrder.OrderId = orderId;
            classOrder.GoodsId = goodsId;
            classOrder.GoodsNumber = goodsNumber;
            classOrder.GoodsName = goodsName;
            classOrder.GoodsPrice = goodsPrice;
            classOrder.DataTime = dataTime;
            classOrder.OrderState = orderState;
            return classOrder;

        }

    }
}