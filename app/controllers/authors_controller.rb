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

    def edit
        @author = Author.find(params[:id])
    end

    def create
        @author = Author.new(article_params)
        if @author.save
            redirect_to @author
        else
            render 'new'
        end
    end

    def update
        @author = Author.find(params[:id])
        if @author.update(article_params)
            redirect_to @author
        else
            render 'edit'
        end
    end

    def destroy
        @author = Author.find(params[:id])
        @author.destroy

        redirect_to authors_path
    end
    private
        def article_params
            params.require(:author).permit(:first_name, :last_name, :homepage)
        end
end