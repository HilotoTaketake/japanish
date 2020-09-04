class EnglishUsers::EnglishUsersController < ApplicationController
  # before_action :set_search
  # before_action :search_prefecture

  def index
    @sex = Sex.all
    @prefecture = Prefecture.all
    @english_user = EnglishUser.all.order("created_at DESC")
  end

  # def search
  #   @results = @p.result.includes(:prefecture)
  # end
  
  # private

  # def set_search
  #   @search = EnglishUser.ransack(params[:q]).includes(:prefecture_id)
  #   @english_user = @search.result(distinct: true)
  # end

  # def search_prefecture
  #   @p = EnglishUser.ransack(params[:q])
  # end
end
