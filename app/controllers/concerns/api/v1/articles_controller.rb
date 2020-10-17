module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        articles = Article.order('created_at DESC')
        render json: {
          status: 'Success',
          message: 'Loaded articles',
          data: articles
        }, status: :ok
      end

      def show
        article = Article.find(params[:id])
        render json: {
          status: 'Success',
          message: 'Loaded article',
          data: article
        }, status: :ok
      end

      def create
        article = Article.new(article_params)
        if article.save
          render json: {
            status: 'Success',
            message: 'Saved article',
            data: article
          }, status: :ok

        else
          render json: {
            status: 'ERROR',
            message: 'ERROR',
            data: article.errors
          }, status: :unprocessable_entity

        end
      end

      def destroy
        article = Article.find(params[:id])
        if article.destroy
          render json: {
            status: 'Success',
            message: "DELETED ENTRY NUMBER #{params[:id]}",
            data: article
          }, status: :ok
        else
          render json: {
            status: 'FAILED',
            message: "FAILED TO DELETE ENTRY NUMBER #{params[:id]}",
            data: article
          }, status: :unprocessable_entity
        end
      rescue StandardError => e
        render json: {
          status: 'FAILED',
          message: "FAILED TO DELETE ENTRY NUMBER #{params[:id]} because of #{e.message}",
          data: ''
        }, status: :unprocessable_entity
        nil
      end

      private

      def article_params
        params.permit(:title, :content)
      end
    end
  end
end
