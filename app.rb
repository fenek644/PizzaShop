#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base
  
end

get '/' do
  @pr = Product.all
	erb :index
end

get '/about' do
  erb :about
end

get '/bufer' do

  @pr = Product.all
  erb :bufer
end

get '/bootstr' do
  erb :bootstr
end

post '/cart' do
  # @n = params[:]
  @str = params[:order]
  @arr = @str.split ','
  @quan = @arr.map { |s| s.split('_')[1]  }
  @hh = {}
  @quan.each do |item|

    key = Product.find(item.split("=")[0]).title
    @hh[key] = item.split("=")[1]

  end
  erb :cart
end