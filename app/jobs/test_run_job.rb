class TestRunJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "*******************************"
    # Do something later
  end
end
