class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.react
        where(subtitle:'React')
    end

    scope :ruby_on_rails_portfolio_item, -> { where(subtitle: 'Ruby on Rails')} 

    after_initialize :set_defaults 

    def set_defaults
        self.main_image ||= "https://picsum.photos/600/600?random=100"
        self.thumb_image ||="https://picsum.photos/200/200?random=200"
    end


end
