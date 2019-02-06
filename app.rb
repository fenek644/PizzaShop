#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base
  
end

get '/' do
	erb :index
end

get '/about' do
  erb :about
end

get '/products' do

  @pr = Product.all
  erb :products
end

get '/bootstr' do
  erb :bootstr
end