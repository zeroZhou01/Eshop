using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using utils;
using entity;
/// <summary>
/// Dao 这个类用来操作数据库的
/// </summary>

namespace utils { 
public class Dao
{
        public int result;
     private SqlConnection myConnection;
    
    public Dao()
    {       //创建数据库操作时连接数据库
            String strConnection = ConfigurationManager.AppSettings["SqlConnectionString"];
            myConnection = new SqlConnection(strConnection);
        }
    //getUserTable方法为从数据库中查询t_user表，并返回
    public DataTable getUserTable(string account)
        {
            myConnection.Open();
            String strCmd = "select * from t_user where account='"+account+"'";//查询语句
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable userTable = new DataTable();
            ad.Fill(userTable);
            myConnection.Close();
            return userTable; //返回查询到的表
        }
        //这个方法是将用于注册的实体类信息插入到数据中
        public int register(ClassUser registerInfo)
        {
            myConnection.Open();
            string strCmd = "insert into t_user (account,passWord,userName,Email,moneyleft)values('" + registerInfo.Account+ "','" + registerInfo.PassWord + "' ,'" + registerInfo.UserName+ "','" + registerInfo.Email+ "','" + registerInfo.MoneyLeft + "'  )";
            SqlCommand cmd = new SqlCommand(strCmd,myConnection);
            int result = cmd.ExecuteNonQuery();//用于返回影响行数，如果为1则插入失败
            myConnection.Close();
            return result;
           
        }
        //用于执行充值操作的方法
        public int charge(ClassUser loginUserInfo)
        {
            int result = 0;

            myConnection.Open();
            string strCmd = "update t_user set moneyLeft= '" + loginUserInfo.MoneyLeft + "'where account='" + loginUserInfo.Account + "'";
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            result = cmd.ExecuteNonQuery();//用于返回影响行数，如果为1则插入成功
            myConnection.Close();

            return result;

        }
        //用于执行修改密码操作
        public int changePwd(ClassUser loginUserInfo)
        {
            int result = 0;
            myConnection.Open();
            string strCmd = "update t_user set passWord= '" + loginUserInfo.PassWord + "'where account='" + loginUserInfo.Account + "'";
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            result = cmd.ExecuteNonQuery();//用于返回影响行数，如果为1则修改成功
            myConnection.Close();
            return result;
        }
        //改变账号 用户名  邮箱 手机号 地址
        public int changeInfo(ClassUser loginUserInfo)
        {
            int result = 0;
            myConnection.Open();
            string strCmd = "update t_user set account='"+loginUserInfo.Account+"' , userName='"+loginUserInfo.UserName+"',  Email='"+loginUserInfo.Email+"' ,address='"+loginUserInfo.Address+"',phoneNumber='"+loginUserInfo.PhoneNumber+"'  where userId='" + loginUserInfo.UserId + "'";
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            result = cmd.ExecuteNonQuery();//用于返回影响行数，如果为1则修改成功
            myConnection.Close();
            return result;
        }
        //获取所有用户表
        public DataTable getAllUserTable()
        {
            DataTable dt = new DataTable();
            myConnection.Open();
            string strCmd = "select * from t_user";
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            result = cmd.ExecuteNonQuery();//用于返回影响行数，如果为1则修改成功
            myConnection.Close();
            return dt;         
        }

        //根据goodsId获取某个商品
        public DataTable getStockTable(int goodsId)
        {
            myConnection.Open();
            String strCmd = "select * from t_stocks where goodsId='" + goodsId + "'";//查询语句
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable stocskTable = new DataTable();
            ad.Fill(stocskTable);
            myConnection.Close();
            return stocskTable; //返回查询到的表
        }
        public int purchase (ClassOrder classOrder,ClassUser classUser)
        {
            myConnection.Open();
            string strCmd = "insert into t_goodsOrder (orderId,goodsId,goodsName,goodsNumber,goodsPrice,orderDate,orderState)values('" + classOrder.OrderId + "','" + classOrder.GoodsId + "' ,'"+ classOrder.GoodsName+"', '" + classOrder.GoodsNumber + "','" + classOrder.GoodsPrice + "','" + classOrder.DataTime + "','"+classOrder.OrderState+"'  )";
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            int result1 = cmd.ExecuteNonQuery();//用于返回影响行数，如果为1则插入失败
            string strCmd2 = "insert into t_userOrder(account,orderId)values('" + classUser.Account + "','" + classOrder.OrderId + "')";
            SqlCommand cmd2 = new SqlCommand(strCmd2, myConnection);
            int result2 = cmd2.ExecuteNonQuery();//用于返回影响行数，如果为1则插入失败
            myConnection.Close();
            return result;

        }
        //用户查询自己的全部订单
        public DataTable getOrderList(string account)
        {
            DataTable orderTable=new DataTable();
            myConnection.Open();

            String strCmd = "select * from t_goodsOrder where orderId in(select orderId from t_userOrder where account='" + account + "')";//查询语句           
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(orderTable);
            return orderTable;

        }
        //用户查询自己的已发货订单
        public DataTable getDeliverOrder(string account)
        {
            DataTable orderTable = new DataTable();
            myConnection.Open();

            String strCmd = "select * from t_goodsOrder where orderId in(select orderId from t_userOrder where account='" + account + "') and orderState=1";//查询语句           
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(orderTable);
            return orderTable;

        }
        //用户查询未发货订单
        public DataTable getNotDeliverOrder(string account)
        {
            DataTable orderTable = new DataTable();
            myConnection.Open();

            String strCmd = "select * from t_goodsOrder where orderId in(select orderId from t_userOrder where account='" + account + "') and orderState=0";//查询语句           
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(orderTable);
            return orderTable;

        }

        public void purchase(ClassOrder classOrder, object classUser)
        {
            throw new NotImplementedException();
        }

        //管理员查询全部订单
        public DataTable adminGetOrder()
        {
            DataTable orderTable = new DataTable();
            myConnection.Open();

            String strCmd = "select * from t_goodsOrder";//查询语句
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(orderTable);
            return orderTable;

        }
        //管理员查询未发货订单
        public DataTable adminGetNotOrder()
        {
            DataTable orderTable = new DataTable();
            myConnection.Open();

            String strCmd = "select * from t_goodsOrder where orderState=0";//查询语句
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(orderTable);
            return orderTable;

        }
        //管理员查询发货的订单
        public DataTable adminGetDeliverOrder()
        {
            DataTable orderTable = new DataTable();
            myConnection.Open();

            String strCmd = "select * from t_goodsOrder where orderState=1";//查询语句
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(orderTable);
            return orderTable;

        }

        //管理员统计用户人数
        public int adminGetUserNumber()
        {
            int number;
            myConnection.Open();
            String strCmd = "select count(userId) from t_user";//查询语句
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            //DataTable dt = new DataTable();
            //SqlDataAdapter ad = new SqlDataAdapter(cmd);
            //ad.Fill(dt);
            //number=dt.Rows.Count;
            number = Convert.ToInt32( cmd.ExecuteScalar());
            myConnection.Close();
            return number;

        }
        //管理员获取用户列表
        public  DataTable adminGetUserTable()
        {
            int number;
            myConnection.Open();
            String strCmd = "select * from t_user";//查询语句
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            number = dt.Rows.Count;
            myConnection.Close();
            return dt;

        }
        //管理员发货
        public void amdimiFahuo()
        {
            string strCmd = "update t_goodsOrder set orderState='1'";
            myConnection.Open();
            SqlCommand cmd = new SqlCommand(strCmd, myConnection);
            int result = cmd.ExecuteNonQuery();
        }

    }
}