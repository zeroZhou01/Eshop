using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// 这是商品库存实体类
/// </summary>
public class ClassStock
{
    public ClassStock()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    private int    goodsId;
    private string goodsName;
    private int goodsNumber;
    public int GoodId { set => goodsId = value; get => goodsId; }
    public string GoodName { set => goodsName = value; get => goodsName; }
    
    public int GoodsNumber { set => goodsNumber = value; get => goodsNumber; }
}