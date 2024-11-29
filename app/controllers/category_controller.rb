class CategoryController < ApplicationController
    def index
      @categories = Category.all
    end

    def show
      @category = Category.find(params[:id])
      fresh_when etag: @category
    end

    # def new
    #     category = Category.new
    # end

    def create
      @category = Category.create!(category_params)
      redirect_to category
    end

    def update
      @category = Category.find(params[:id])
    end

    def edit
      @category = Category.find(params[:id])
    end

    def destroy
      @category = Category.find(params[:id])
    end

    private
      def category_params
        params.require(:category).permit(:title, :description, :image)
      end
end
