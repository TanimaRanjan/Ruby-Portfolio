class Portfolio < ApplicationRecord
    has_many :technologies

    accepts_nested_attributes_for :technologies, 
                                  reject_if: lambda { |attrs| attrs['name'].blank? }

    includes Placeholder
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.react
        where(subtitle:'React')
    end

    scope :ruby_on_rails_portfolio_item, -> { where(subtitle: 'Ruby on Rails')} 

    after_initialize :set_defaults 

    def set_defaults
        self.main_image ||= Placeholder.image_generator(height:500, width:500, random:100)
        self.thumb_image ||=Placeholder.image_generator(height:200, width:200, random:200)
    end


end
