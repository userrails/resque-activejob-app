class SleeperJob < ActiveJob::Base
  @queue = :sleep

  def self.perform(*args)
    p args.inspect
    sleep(args)
  end
end
