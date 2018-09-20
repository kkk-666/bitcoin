namespace :coins do
    desc "ETHの価格取得"
    task eth_pricelog: :environment do
        Coins::Pricelog.eth
    end

    desc "BTCの価格取得"
    task btc_pricelog: :environment do
        Coins::Pricelog.btc
    end

    desc "XRPの価格取得"
    task xrp_pricelog: :environment do
        Coins::Pricelog.xrp
    end
end
