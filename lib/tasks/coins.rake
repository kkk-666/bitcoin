namespace :coins do
    desc "ETHの価格取得"
    task eth_pricelog: :environment do
        Coins::Pricelog.eth
    end

    desc "BTCの価格取得"
    task btc_pricelog: :environment do
        Coins::Pricelog.btc
    end
    
    desc "XEMの価格取得"
    task xem_pricelog: :environment do
        Coins::Pricelog.xem
    end

    desc "XRPの価格取得"
    task xrp_pricelog: :environment do
        Coins::Pricelog.xrp
    end
    
    desc "LTCの価格取得"
    task ltc_pricelog: :environment do
        Coins::Pricelog.ltc
    end
    
    desc "BCCの価格取得"
    task bcc_pricelog: :environment do
        Coins::Pricelog.bcc
    end
    
    desc "MONAの価格取得"
    task mona_pricelog: :environment do
        Coins::Pricelog.mona
    end
end
