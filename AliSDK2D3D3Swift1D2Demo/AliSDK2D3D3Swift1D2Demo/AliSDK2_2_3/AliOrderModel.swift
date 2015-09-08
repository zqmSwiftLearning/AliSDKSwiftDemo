//
//  AliOrderModel.swift
//  AliSDK2D3D3Swift1D2Demo
//
//  Created by 张青明 on 15/9/1.
//  Copyright (c) 2015年 极客栈. All rights reserved.
//

import UIKit


class AliOrderModel: NSObject, Printable {


    /// 合作者身份(PID)
    var partner:String     = ""
    /// 支付宝账号
    var seller:String      = ""
    /// 订单ID（由商家自行制定）
    var tradeNO:String     = ""
    /// 商品标题
    var productName:String = ""
    /// 商品描述
    var productDescription:String = ""

    /// 商品价格(保留小数点后两位)
    var amount:String       = ""
    /// 回调URL
    let notifyURL:String    = "http://121.40.49.111:80/userAdmin/alipaySuccess"
 /// 未知，阿里服务地址
    let service:String      = "mobile.securitypay.pay"
    /// 支付类型
    var paymentType:String  = ""
    /// 字节编码
    let inputCharset:String = "utf-8"

    
    let itBPay:String  = "30m"
    let showUrl:String = "m.alipay.com"
    /// 可选
    var rsaDate:String = ""
    /// 可选
    var appID:String   = ""

    var extraParams:[String:String] = Dictionary<String,String>()
    
    var xx:[String:String] = [:]
    
    
    override init() {
        super.init()
    }
    
    //类实例的描述信息
    override var description: String {
        //TODO:自定义需要返回的描述信息内容
        get{
//            count(self.partner)
            var descString:String = ""
            
            if self.partner != ""
            {
                descString += "partner=\"" + self.partner + "\""
            }
            
            if self.seller != ""
            {
                descString += "&seller_id=\"" + self.seller + "\""
            }
            if self.tradeNO != ""
            {
                descString += "&out_trade_no=\"" + self.tradeNO + "\""
            }
            if self.productName != ""
            {
                descString += "&subject=\"" + self.productName + "\""
            }
            
            
            
            if self.productDescription != ""
            {
                descString += "&body=\"" + self.productDescription + "\""
            }
            if self.amount != ""
            {
                descString += "&total_fee=\"" + self.amount + "\""
            }
            if self.notifyURL != ""
            {
                descString += "&notify_url=\"" + self.notifyURL + "\""
            }
            
            
            if self.service != ""
            {
                descString += "&service=\"" + self.service + "\""
            }
            
            if self.paymentType != ""
            {
                descString += "&payment_type=\"" + self.paymentType + "\""
            }
            
            
            
            
            if self.inputCharset != ""
            {
                descString += "&_input_charset=\"" + self.inputCharset + "\""
            }
            
            if self.itBPay != ""
            {
                descString += "&it_b_pay=\"" + self.itBPay + "\""
            }
            if self.showUrl != ""
            {
                descString += "&show_url=\"" + self.showUrl + "\""
            }
            
            
            
            if self.rsaDate != ""
            {
                descString += "&sign_date=\"" + self.rsaDate + "\""
            }
            if self.appID != ""
            {
                descString += "&app_id=\"" + self.appID + "\""
            }

            
            for (key,value) in self.extraParams
            {
                descString += "&" + key + "=\"" + value + "\""
            }
            
            
            
            return descString
        }
    }

}
