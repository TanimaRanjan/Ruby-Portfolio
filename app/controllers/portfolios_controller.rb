class PortfoliosController < ApplicationController
    before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]
    access all: [:show, :index, :react], user: {except: [:destroy, :new, :create, :update, :edit, :toggle_status]}, site_admin: :all
    def index 
        @portfolio_items = Portfolio.all
    end

    def react
        @react_portfolio_items = Portfolio.react
    end

    def show   
    end

    def new 
        @portfolio_item = Portfolio.new
        3.times { @portfolio_item.technologies.build }

    end

    def edit 
    end 

    def create 
        @portfolio_item = Portfolio.new(portfolio_item_params)

        respond_to do |format|
            if @portfolio_item.save
                format.html {
                   redirect_to portfolios_path, notice:'Portfolio Items is live' 
                }
            else
                format.html { render :new }
            end 
        end
    end


    def update
        respond_to do |format|
            if @portfolio_item.update(portfolio_item_params)
                format.html {redirect_to portfolios_path, notice:'Portfolio was updated'}
            else 
                format.html {render :edit }
            end
        end
    end


    def destroy
        @portfolio_item.technologies.delete_all
        @portfolio_item.destroy
        respond_to do |format|
            format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully deleted '}
        end
    end

    def set_portfolio_item 
        @portfolio_item = Portfolio.find(params[:id])
    end

    def portfolio_item_params
        params.require(:portfolio)
                        .permit(:title, 
                                :subtitle, 
                                :body, 
                                technologies_attributes: [:name])
    end 

end
