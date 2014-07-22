require 'bluestorm_sms/version'
require 'bluestorm_sms/configuration'
require 'net/http'
require 'digest'

module BluestormSMS
  extend self
  attr_writer :config

  def config
    @config ||= Configuration.new
  end

  def configure
    yield(config)
  end

  #send sms
  URL = "http://sdk2.entinfo.cn:8061/mdsmssend.ashx"

  def pwd
    Digest::MD5.hexdigest(@config.sn + @config.pwd).upcase
  end

  def send(phone, content)
    result = Net::HTTP.post_form(URI.parse("#{URL}"), sn: @config.sn, pwd: self.pwd, mobile: phone, content: content)
    if result.body.match '^\d{18}$'
      {success: result.body}
    else
      {error: result.body}
    end
  end

end
