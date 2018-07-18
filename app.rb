require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @user_name = params[:name]
    @reversed_string = @user_name.reverse 
    "Your reversed string is #{@reversed_string}"
  end
  
  get '/square/:number' do 
    @root = params[:number]
    @square = @root.to_f * @root.to_f
    "Your squared number is #{@square}"
  end
  
  get '/say/:number/:phrase'do 
    @number = params[:number]
    @phrase = params[:phrase]
    @everything = []
    x = 0
    until x == @number
    @everything<<@phrase
    x+=1
    end
    "#{@everything}"  
  end
  
  
end
