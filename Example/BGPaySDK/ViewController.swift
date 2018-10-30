//
//  ViewController.swift
//  BGPaySDK
//
//  Created by CoderLiXinLi on 10/29/2018.
//  Copyright (c) 2018 CoderLiXinLi. All rights reserved.
//

import UIKit
import Alamofire
import BGPay

class ViewController: UIViewController {
    
    @IBAction func getPayOrderClick(_ sender: UIButton) {
        
        let appId = "123456789"
        let mchId = "123456789"
        let outTradeNo = "bg16354696"
        let host = "http://47.75.112.14:7076/pay/getOrder?appId=\(appId)&mchId=\(mchId)&outTradeNo=\(outTradeNo)"
        Alamofire.request(host, method: .get, parameters: [:], encoding: URLEncoding(destination: .methodDependent))
            .responseJSON { (response) in
                guard let result = response.result.value else {
                    print(response.result.error!)
                    return
                }
                
                guard let json = result as? [String:Any] else { return }
                
                let errcode = json["errcode"] as? Int ?? 1
                let errmsg = json["errmsg"] as? String ?? ""
                
                if errcode == 0 {
                    print(errmsg)
                }else {
                    print(errmsg)
                }
        }
    }
    
    @IBAction func getWithdrawOrderClick(_ sender: UIButton) {
        
        let appId = "123456789"
        let mchId = "123456789"
        let outTradeNo = "bg12689329"
        let host = "http://47.75.112.14:7076/gameWithdrawOrder/getWithdraw?appId=\(appId)&mchId=\(mchId)&outTradeNo=\(outTradeNo)"
        
        Alamofire.request(host, method: .get, parameters: [:], encoding: URLEncoding(destination: .methodDependent))
            .responseJSON { (response) in
                guard let result = response.result.value else {
                    print(response.result.error!)
                    return
                }
                
                guard let json = result as? [String:Any] else { return }
                
                let errcode = json["errcode"] as? Int ?? 1
                let errmsg = json["errmsg"] as? String ?? ""
                
                if errcode == 0 {
                    print(errmsg)
                }else {
                    print(errcode)
                }
        }
    }
    
    @IBAction func withdrawClick(_ sender: UIButton) {
        
        let num = self.randomNumber(from: 1000000..<100000000)
        let appId = "123456789"
        let mchId = "123456789"
        let nonceStr = "58685768576309403"
        let outTradeNo = "bg" + "\(num)"
        let totalFee = "0.01"
        let phone = "13315999725"
        let countryCode = "+86"
        
        let withDraw = BGWithDraw()
        withDraw.appId = appId
        withDraw.mchId = mchId
        withDraw.nonceStr = nonceStr
        withDraw.outTradeNo = outTradeNo
        withDraw.phone = phone
        withDraw.countryCode = countryCode
        withDraw.totalFee =  totalFee
        
        BGPay.shared().BGWithDraw(order: withDraw) { (result, error) in
            if error == nil {
                print(result)
                print(error?.errorMessage ?? "")
            }else {
                print(result)
                print(error?.errorMessage ?? "")
            }
        }
    }
    
    @IBAction func payClick(_ sender: UIButton) {
        
        let num = self.randomNumber(from: 1000000..<100000000)
        let appId = "123456789"
        let mchId = "123456789"
        let nonceStr = "58685768576309403"
        let outTradeNo = "bg" + "\(num)"
        let totalFee = "2.3456"
        let notifyUrl = "www.baidu.com"
        
        let order = BGPayOrder()
        order.appId = appId
        order.mchId = mchId
        order.nonceStr = nonceStr
        order.outTradeNo = outTradeNo
        order.totalFee =  totalFee
        order.notifyUrl = notifyUrl
        
        BGPay.shared().payOrder(order: order, scheme: "OtherApp") { (result, error) in
            if error == nil {
                print(result)
                print(error?.errorMessage ?? "")
            }else {
                print(result)
                print(error?.errorMessage ?? "")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "三方调起BG"
    }
    
    func randomNumber(from range: Range<Int>) -> Int {
        let distance = range.upperBound - range.lowerBound
        let rnd = arc4random_uniform(UInt32(distance))
        return range.lowerBound + Int(rnd)
    }
}

