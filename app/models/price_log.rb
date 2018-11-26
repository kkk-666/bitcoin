class PriceLog < ApplicationRecord
    belongs_to :coin
    
    #    TODO getGap（high - low の値を返す)
    def get_gap
        high.to_f - low.to_f
    end
end
