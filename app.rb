require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
  end

  get '/square/:number' do
    @squared_number = (params[:number].to_i * params[:number].to_i)
    @squared_number.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    i = 0
    until i == @number
      "#{@phrase}"
      i += 1
    end
  end
end
