#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base

end
class Root < ActiveRecord::Base

end

class Order < ActiveRecord::Base

  validates :name, presence: true, length: {minimum: 3 }
  validates :phone, presence: true
  validates :address, presence: true

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

get '/cart' do

  @root = Root.last
  @ord_full = Order.new

  erb :cart
end

post '/cart' do
  @root = Root.new
  @root.cart = params[:cart]
  @root.save

  @ord_full = Order.new
  erb :cart
end

get '/order' do
  @ord_full = Order.new
  @root = Root.last
  erb :order
end

get '/orders' do
  @ords = Order.all.order(created_at: :desc)

  erb :orders
end


post '/order' do

  @root = Root.last

  @ord_full = Order.new params[:order]

  if @ord_full.save
    erb :order
  else
    @error = @ord_full.errors.full_messages.first
     erb :cart
  end
end