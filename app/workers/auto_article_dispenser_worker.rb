class AutoArticleDispenserWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  recurrence { minutely.second_of_minute(*0.step(59, 15)) }

  def perform
    # Using TimeDispenser
  end  
end
