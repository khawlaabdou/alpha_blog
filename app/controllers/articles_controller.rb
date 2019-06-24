class ArticlesController < ApplicationController

    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def edit
        @article = Article.find(params[:id])
    end

    def create
        @article = Article.new(article_params)
        if @article.save
            redirect_to @article
            flash[:notice] = "Article was successfully created"

        else
            render 'new'
        end
    end

    def show
        @article = Article.find(params[:id])
    end


    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = "Article was successfully updated"
            redirect_to @article
        else
            render 'edit'
        end
    end

    private
       def article_params
        params.require(:article).permit(:title, :description)
       end
    

    



end