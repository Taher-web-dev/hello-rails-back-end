class Api::MessagesController < ApplicationController
  def index
    messages_ids = Message.ids
    random_greeting_id = messages_ids.sample
    random_greeting = Message.find(random_greeting_id).greeting
    render json: { message: random_greeting }
  end
end
