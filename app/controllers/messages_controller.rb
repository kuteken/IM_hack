require 'net/http'
class MessagesController < ApplicationController
  def new
#render :text => 'hello'
  end
  def create
    user = params[:user]
    body = params[:body]
    uri = URI('http://im.kayac.com/api/post/' + user)
#res = Net::HTTP.post_form(uri, 'message' => 'max 50')
    res = Net::HTTP.post_form(uri, 'message' => body)   
    render :text => 'send complate!'
  end
end
