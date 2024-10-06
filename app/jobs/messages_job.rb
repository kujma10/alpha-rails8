class MessagesJob < ApplicationJob
  queue_as :default

  def perform(message)
    # Do something later
    puts "Sending message #{message}"
  end
end
