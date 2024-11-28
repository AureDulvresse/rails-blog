class CategoryController < ApplicationController
    
    def create_category_form
        
    end
    
    
      def index
        @category = Category.all()
      end
    
      def show
        @category = Category.find(params[:id])
      end
    
      def create
        @category = Category.new(params[:category])

        if @category.save
          flash[:success] = "Category successfully created"
          redirect_to @category
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end

      end
    
      def update
        @category = Category.find(params[:id])
      end
    
      def edit
        @category = Category.find(params[:id])
      end
    
      def destroy
        category = Category.find(params[:id])
      end 
    
end
