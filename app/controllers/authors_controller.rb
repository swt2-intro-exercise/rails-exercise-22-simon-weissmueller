class AuthorsController < ApplicationController

    def index
        @authors = Author.all
    end
    
    def show
        #rails passes all @ instance var to the view
        @author = Author.find(params[:id])
    end

    def new
        @author = Author.new
    end

    def create
        @author = Author.new(article_params)
        if @author.save
            redirect_to @author
        else
            render 'new'
        end
    end

    def edit
        @author = Author.find(params[:id])
    end
    private
        def article_params
            params.require(:author).permit(:first_name, :last_name, :homepage)
        end
end