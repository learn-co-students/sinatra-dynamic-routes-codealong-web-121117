require_relative 'config/environment'
#this is the sinatra controller
#redirects to appropriate user
require 'pry'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    # binding.pry
    result = @num1 * @num2
    "#{result}"
    # binding.pry
  end

  #dynamic routing allows us to take input straight from the URL instead of through a form

  # Code your final two routes here:

end
