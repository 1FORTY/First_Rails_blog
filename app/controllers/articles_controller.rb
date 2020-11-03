class ArticlesController < ApplicationController

  def new

  end

  def create
    @article = Contact.new(article_params)
    
    if @article.valid?
      @article.save
    else 
      render action: 'new'
    end

    render plain: params[:article].inspect
  end

    private
    def contact_params
      params.require(:article).permit(:email, :message)
    end

end
