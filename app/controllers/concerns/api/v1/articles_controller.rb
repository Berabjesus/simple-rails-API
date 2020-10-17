module Api
  module v1
    class ArticlesController < ApplicationController
      articles = Article.order('created_at DESC')
      render json: {
        status: 'Success', 
        message: 'Loaded articles', 
        data:articles}, status:ok
    end
  end
end