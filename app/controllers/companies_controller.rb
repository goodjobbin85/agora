class CompaniesController < ApplicationController
    def index 
        @companies = Company.all
        
    end
    
    def show 
        @company = Company.find(params[:id])
    end
    
    def new
        @company = Company.new
    end 
    
    def create 
        @company = Company.new(company_params)
        if @company.save
            flash[:success] = "Company successfully added"
            redirect_to companies_path
        else
            flash[:danger] = "Woops! Try again!"
            render :new
        end
    end 
    
    def edit 
        @company = Company.find(params[:id])
    end 
    
    def update 
        @company = Company.find(params[:id])
        if @company.update(company_params)
            flash[:success] = "#{@company.name} successfully updated"
            redirect_to companies_path
        else
            flash[:danger] = "Woops! Try again"
            render :edit
        end
    end 
    
    def destroy 
        @company = Company.find(params[:id])
        @company.destroy
        flash[:success] = "Company successfully removed"
        redirect_to companies_path
    end 
    
    private 
    
    def company_params
        params.require(:company).permit(:name, :email, :phone, :description, :year_established)
    end
end
