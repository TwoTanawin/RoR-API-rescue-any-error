class PublicController < ApplicationController
  def welcome
    a = params[:a].to_i
    b = params[:b].to_i
    if a+b > 30
      raise SKError.new("a+b is more than 30 (a=#{a}, b=#{b})")
    end
    render json: { result: a+b }
  end

  def about
    raise SKAuthenticationError.new
    render json: { name: "about" }
  end
end
