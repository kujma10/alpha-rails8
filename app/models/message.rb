class Message < ApplicationRecord
  after_create :broadcast_message

  def broadcast_message
    puts "shemodis"
    MessagesJob.perform_later(self.body)
  end
end
