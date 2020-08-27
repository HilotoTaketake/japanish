class TopsController < ApplicationController

  def index
    @english_user = EnglishUser.new
    @japanese_user = JapaneseUser.new
  end
  
end
