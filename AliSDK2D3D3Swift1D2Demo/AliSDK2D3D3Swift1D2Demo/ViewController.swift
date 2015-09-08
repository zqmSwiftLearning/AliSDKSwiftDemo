//
//  ViewController.swift
//  AliSDK2D3D3Swift1D2Demo
//
//  Created by 张青明 on 15/9/1.
//  Copyright (c) 2015年 极客栈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var order:AliOrderModel = AliOrderModel()
    /**
    支付0.01元
    */
    @IBAction func payOnClick(sender: AnyObject) {
//        let a  = 1.0
//        let aa = String(format: "%.2f", a)
//        print("aa:\(aa)\n\n")
//        
//        let b  = 1.2
//        let bb = String(format: "%.2f", b)
//        print("bb:\(bb)\n\n")
//        
//        let c  = 1.23
//        let cc = String(format: "%.2f", c)
//        print("cc:\(cc)\n\n")
//        

        order.partner = AliCHPartnerID
        order.seller  = AliCHSeller
        order.tradeNO = "P75KSUSRJ0EABUT"//最好是服务器生成订单号传回。
        order.productName = "测试"
        order.productDescription = "每家每户付款测试"
        order.amount = String(format: "%.2f", 1.0)
        //        order.notifyURL =
        order.paymentType = "护工服务"
        //        order.inputCharset
        //        order.itBPay
        //        order.showUrl
        
        //        let appScheme = "FamliyIos"
        //        var signer = CreateRSADataSigner(AliURLScheme)
        //
        var orderSpec = order.description
        print("orderSpec:\(orderSpec)\n\n")
        //
        
        
        
        var signedString = AlipayManager.signedStringWithPrivateKey(AliCHPrivateKey, orderSpec: orderSpec)
        
        var orderString  = ""
        if signedString != ""
        {
            var sign_type = "RSA"
            orderString += "\(orderSpec)&sign=\"\(signedString)\"&sign_type=\"\(sign_type)\""
            
            AlipaySDK.defaultService().payOrder(orderString, fromScheme: AliURLScheme, callback: { (resultDic) -> Void in
                
                var memo         = resultDic["memo"] as! String
                var result       = resultDic["result"] as! String
                var resultStatus = resultDic["resultStatus"] as! String
                //                var memo =
                print("memo = \(memo), result = \(result), resultStatus:\(resultStatus)\n")
            })
            
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

