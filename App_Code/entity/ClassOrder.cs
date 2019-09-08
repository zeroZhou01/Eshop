using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// ClassOrder 的摘要说明
/// </summary>
public class ClassOrder
{
    public ClassOrder()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }



    private int orderId;
    private int goodsId;
    private string goodsName;
    private int goodsPrice;
    private int goodsNumber;
    private DateTime dateTime;
    private int orderState;
    public int GoodsNumber { get => goodsNumber; set => goodsNumber = value; }
    public int OrderId { get => orderId; set => orderId = value; }
    public int GoodsId { get => goodsId; set => goodsId = value; }

    public string GoodsName { get => goodsName; set => goodsName = value; }
    public int GoodsPrice { get => goodsPrice; set => goodsPrice = value; }

    public DateTime  DataTime{ set => dateTime = value; get => dateTime; }

    public int OrderState { set => orderState = value; get => orderState; }


}