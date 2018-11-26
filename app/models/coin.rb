class Coin < ApplicationRecord
    has_many :price_log
    has_one_attached :image
    
    validates :name,
        presence: true, uniqueness: true
        
    validates :symbol,
        length: { minimum: 3, maximum: 5}, presence: true, uniqueness: true
        
    validates :price,
        numericality: true
        
    scope :with_eager_loaded_images, -> { eager_load(images_attachments: :blob) }
    

end
