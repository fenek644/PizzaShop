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
  erb "Hello World"
end