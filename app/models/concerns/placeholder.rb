module Placeholder
    extend ActiveSupport::Concern

    def self.image_generator(height:, width:, random:)
        "https://picsum.photos/#{height}/#{width}?random=#{random}"
    end

end
