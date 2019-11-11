class ProductsController < ApplicationController
    def index
        @products = Product.all
        @clients = Client.all
    end

    def new
        
    end
end