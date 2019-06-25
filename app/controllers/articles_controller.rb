class ArticlesController < ApplicationController
before_action :set_article, only: [:edit, :update, :show, :destroy]
    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def edit
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
    end

    def destroy
        @article.destroy
        flash[:notice] ="Article was successfully deleted"
        redirect_to @article

    end



    def update
        if @article.update(article_params)
            flash[:notice] = "Article was successfully updated"
            redirect_to @article
        else
            render 'edit'
        end
    end

    private
        def set_article
            @article = Article.find(params[:id])

        end

       def article_params
        params.require(:article).permit(:title, :description)
       end
    

    



end
