class ApplicationController < ActionController::Base

    include DeviseWhitelist

    include SetSource

    include CurrentUserConcern

    include DefaultPageContentConcern

    before_action :set_copyright

    def set_copyright
        @copyright = TanimaRanjanViewTool::Renderer.copyright 'Tanima Ranjan', 'All rights reserved'
    end

end

module TanimaRanjanViewTool
    class Renderer
        def self.copyright name, message
            "&copy; #{Time.now.year} | <b> #{name}</b> #{message}".html_safe
        end
    end
end