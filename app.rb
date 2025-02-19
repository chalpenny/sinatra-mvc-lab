require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do

        erb :user_input
    end

    post '/piglatinize' do
        new_input = PigLatinizer.new
        @analyzed_text = new_input.piglatinize(params[:user_phrase])

        erb :latinized
    end

end