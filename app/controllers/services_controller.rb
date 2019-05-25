class ServicesController < ApplicationController
    def index
        @services = Service.all
    end
    
    def new 
    end
    
    def create 
    end
    
end
