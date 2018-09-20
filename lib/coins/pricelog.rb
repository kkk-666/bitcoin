require 'net/http'
require 'uri'
require 'json'

module Coins::Pricelog extend self
  def eth
    uri = URI.parse('https://public.bitbank.cc/eth_btc/ticker')
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)
    
    last = result["data"]["last"].to_f #float
    puts "last:#{last}"
    
    eth_pricelog = PriceLog.new(:price => last,:coin_id => 1)
    eth_pricelog.save
  end
  
  def btc
    uri = URI.parse('https://public.bitbank.cc/btc_jpy/ticker')
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)
    
    # sell = result["data"]["sell"].to_i
    # puts "sell:#{sell}"
    
    # # TODO buyの値を表示
    # buy = result["data"]["buy"].to_i
    # puts "buy:#{buy}"
    
    last = result["data"]["last"].to_f
    puts "last:#{last}"
    
    btc_pricelog = PriceLog.new(:price => last,:coin_id => 2)
    btc_pricelog.save
  end
  
  def xrp
    uri = URI.parse('https://public.bitbank.cc/xrp_jpy/ticker')
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)
    
    last = result["data"]["last"].to_f
    puts "last:#{last}"
    
    xrp_pricelog = PriceLog.new(:price => last,:coin_id => 4)
    xrp_pricelog.save
  end
end