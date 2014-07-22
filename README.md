# BluestormSms

短信网关接口

## Installation

Add this line to your application's Gemfile:

    gem 'bluestorm_sms'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bluestorm_sms
    
##Configuration

####Rails:
创建文件 `config/initializes/bluestorm_sms.rb` 填入下面的代码，并修改对应的配置：

```ruby
BluestormSMS.configure do |config|
  # 运营商分配给您的SN号(帐号)
  config.sn = 'Your SN'
  # 运营商分配给您的密码
  config.pwd = 'Your Password Here'
end
```

## Usage
###发送短信
```ruby
BluestormSMS.send(phone, content)
#BluestormSMS.send(137xxxxxxxx, '您的物品加运费共xxx元，您已经支付成功xxx元。正在为您安排发货，保密包装。【签名】'))
```

返回状态
```ruby
{:success=>"221340284130873849"}
or
{:error=>"error_code"}
```
###接收短信
```ruby
BluestormSMS.get messages
#messages为推送参数,如http://www.url.com/mo.aspx?args=XXX
messages = BluestormSMS.get params[:args]
#=>[{:from=>"137xxxxxxxx", :content=>"测试消息", :time=>2014-07-22 13:26:54 +0800}]
```



## Contributing

1. Fork it ( https://github.com/[my-github-username]/bluestorm_sms/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
