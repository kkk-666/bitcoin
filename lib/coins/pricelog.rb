require 'net/http'
require 'uri'
require 'json'

module Coins::Pricelog extend self
  def eth
    uri = URI.parse('https://public.bitbank.cc/eth_btc/ticker')
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)
    
    high = result["data"]["high"].to_f
    puts "high:#{high}"
    
    low = result["data"]["low"].to_f 
    puts "low:#{low}"
    
    last = result["data"]["last"].to_f #float
    puts "last:#{last}"
    
    eth_pricelog = PriceLog.new(:price => last,:high => high,:low => low,:coin_id => 1)
    eth_pricelog.save
  end
  
  def btc
    uri = URI.parse('https://public.bitbank.cc/btc_jpy/ticker')
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)
    
    high = result["data"]["high"].to_f
    puts "high:#{high}"
    
    low = result["data"]["low"].to_f 
    puts "low:#{low}"
    
    last = result["data"]["last"].to_f
    puts "last:#{last}"
    
    btc_pricelog = PriceLog.new(:price => last,:high => high,:low => low,:coin_id => 2)
    btc_pricelog.save
  end
  
  def xem
    uri = URI.parse('https://api.zaif.jp/api/1/ticker/xem_jpy')
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)
    
    high = result["high"].to_f
    puts "high:#{high}"
    
    low = result["low"].to_f
    puts "low:#{low}"
    
    last = result["last"].to_f 
    puts "last:#{last}"
    
    xem_pricelog = PriceLog.new(:price => last,:high => high,:low => low,:coin_id => 3)
    xem_pricelog.save
  end
  
  def xrp
    uri = URI.parse('https://public.bitbank.cc/xrp_jpy/ticker')
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)
    
    high = result["data"]["high"].to_f
    puts "high:#{high}"
    
    low = result["data"]["low"].to_f 
    puts "low:#{low}"
    
    last = result["data"]["last"].to_f
    puts "last:#{last}"
    
    xrp_pricelog = PriceLog.new(:price => last,:high => high,:low => low,:coin_id => 4)
    xrp_pricelog.save
  end
  
  def ltc
    uri = URI.parse('https://public.bitbank.cc/ltc_jpy/ticker')
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)
    
    high = result["data"]["high"].to_f
    puts "high:#{high}"
    
    low = result["data"]["low"].to_f 
    puts "low:#{low}"
    
    last = result["data"]["last"].to_f
    puts "last:#{last}"
    
    ltc_pricelog = PriceLog.new(:price => last,:high => high,:low => low,:coin_id => 5)
    ltc_pricelog.save
  end
  
  def bcc
    uri = URI.parse('https://public.bitbank.cc/bcc_jpy/ticker')
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)
    
    high = result["data"]["high"].to_f
    puts "high:#{high}"
    
    low = result["data"]["low"].to_f 
    puts "low:#{low}"
    
    last = result["data"]["last"].to_f
    puts "last:#{last}"
    
    bcc_pricelog = PriceLog.new(:price => last,:high => high,:low => low,:coin_id => 6)
    bcc_pricelog.save
  end
  
  def mona
    uri = URI.parse('https://public.bitbank.cc/mona_jpy/ticker')
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)
    
    high = result["data"]["high"].to_f
    puts "high:#{high}"
    
    low = result["data"]["low"].to_f 
    puts "low:#{low}"
    
    last = result["data"]["last"].to_f
    puts "last:#{last}"
    
    mona_pricelog = PriceLog.new(:price => last,:high => high,:low => low,:coin_id => 7)
    mona_pricelog.save
  end
end