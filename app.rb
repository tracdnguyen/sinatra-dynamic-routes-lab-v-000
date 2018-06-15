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
    number_phrase = ""
    @number.times{number_phrase << "#{@phrase}\n"}
    number_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_phrase = params
    @word_phrase.each.map do |key, value|
      key.value
    end
    @word_phrase.join
  end
end
