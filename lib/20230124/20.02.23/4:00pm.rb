#----render-----
 def tests
    #render "orders/new"
    #render inline: "xml.p {'Horrid coding practice!'}", type: :builder
    #render plain: "ok"
    #render json: @orders
    #render xml: @orders
    #render html: helpers.tag.strong('This is paragraph')
     #render body: "raw"
    #render file: "#{Rails.root}/public/404.html", layout: false
    #render layout: "banks"
    #render layout: false
    #render status: 100
    #render status: :forbidden
    # called in HomeController#index
    #render variants: [:name, :email]
   # if @order.new?
     # render action: "new" && return
    #end
      #render action: "edit"
  # @order = Order.find_by(id: params[:id])
  #if @Order.nil?
    #render action: "new"
  #end
  end


class ProductsController < ApplicationController
  #layout Proc.new { |controller| controller.request.xhr? ? "popup" : "application" }
  #layout "banks", except: [:index, :new]
  #layout "banks", only: [:index, :new]
end

#------redirect_to ----

def tests
  #redirect_to banks_url
  #redirect_back(fallback_location:banks_url)
  #redirect_back(fallback_location: :banks)
  #redirect_to banks_path, status: 301
end

def tests

end