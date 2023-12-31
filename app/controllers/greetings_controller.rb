class GreetingsController < ApplicationController
  def index
    @random_message = Greeting.order('RANDOM()').first
    if @random_message
      render json: { greeting: @random_message.message }
    else
      render json: { error: 'No greetings available' }, status: :not_found
    end
  end
end
