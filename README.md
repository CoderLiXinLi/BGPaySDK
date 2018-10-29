# BGPaySDK

[![CI Status](https://img.shields.io/travis/CoderLiXinLi/BGPaySDK.svg?style=flat)](https://travis-ci.org/CoderLiXinLi/BGPaySDK)
[![Version](https://img.shields.io/cocoapods/v/BGPaySDK.svg?style=flat)](https://cocoapods.org/pods/BGPaySDK)
[![License](https://img.shields.io/cocoapods/l/BGPaySDK.svg?style=flat)](https://cocoapods.org/pods/BGPaySDK)
[![Platform](https://img.shields.io/cocoapods/p/BGPaySDK.svg?style=flat)](https://cocoapods.org/pods/BGPaySDK)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
### 支付结果查询

**应用场景：** 

- 该接口提供所有BG支付订单的查询，商户可以通过该接口主动查询订单状态，完成下一步的业务逻辑。

**请求URL：** 
- ` http://www.bgex.top/v2/s/pay/getOrder`

**请求方式：**
- POST 

**请求数据格式：**
- JSON 



**参数：** 

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|appId |是  |string |应用ID   |
|mchId |是  |string | 商户号    |
|outTradeNo       |是  |string | 商户订单号    |






**返回参数说明** 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|return_code  |String    |此字段是通信标识，非交易标识，交易是否成功需要查看result_code来判断  |
|return_msg  |String    |参数格式校验错误  |
**备注**
**错误码** 


|错误码|错误信息|解决方案|
|:-----  |:-----|-----                           |
|2065  |应用ID不能为空    |请输入正确的appId |
|2066  |商户号不能为空    |请输入正确的商户号 |
|2067  |商户订单号不能为空    |请输入正确的商户订单号  |
|2073  |预支付订单号不存在    |请输入正确的预支付订单号  |
|2077  |待支付    |待支付  |
|2078  |支付超时    |支付超时  |



### 提现结果查询

**应用场景：** 

- 该接口提供第三方BG提现的结果查询，商户可以通过该接口主动查询提现状态，完成下一步的业务逻辑。

**请求URL：** 
- ` http://www.bgex.top/v2/s/gameWithdrawOrder/getWithdraw`

**请求方式：**
- GET 

**请求数据格式：**
- JSON 



**参数：** 

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|appId |是  |string |应用ID   |
|mchId |是  |string | 商户号    |
|outTradeNo       |是  |string | 商户提现订单号    |






**返回参数说明** 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|return_code  |String    |此字段是通信标识，非交易标识，交易是否成功需要查看result_code来判断  |
|return_msg  |String    |参数格式校验错误  |
**备注**
**错误码** 


|错误码|错误信息|解决方案|
|:-----  |:-----|-----                           |
|2065  |应用ID不能为空    |请输入正确的appId |
|2066  |商户号不能为空    |请输入正确的商户号 |
|2067  |商户订单号不能为空    |请输入正确的商户订单号  |
|3006  |提现记录不存在    |请查看生成提现记录接口  |
|3007  |提现记录审核失败    |等待平台审核提现记录  |
|3008  |提现记录审核失败    |提现记录审核失败  |




## Installation

BGPaySDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'BGPaySDK'
```

## Author

CoderLiXinLi, lilo7@sina.com

## License

BGPaySDK is available under the MIT license. See the LICENSE file for more info.
