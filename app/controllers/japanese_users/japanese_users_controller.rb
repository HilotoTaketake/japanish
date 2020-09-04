class JapaneseUsers::JapaneseUsersController < ApplicationController
  # before_action :set_search
  # before_action :search_prefecture

  def index
    @sex = Sex.all
    @prefecture = Prefecture.all
    @japanese_user = JapaneseUser.all.order("created_at DESC")
  end

  # def search
  #   @results = @p.result.includes(:prefecture)
  # end

  # private 

  # def set_search
  #   @search = JapaneseUser.ransack(params[:q]).includes(:prefecture_id)
  #   @japanese_user = @search.result(distinct: true)
  # end

  # def search_prefecture
  #   @p = JapaneseUser.ransack(params[:q])
  # end

end
