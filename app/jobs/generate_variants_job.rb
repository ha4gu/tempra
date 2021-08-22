class GenerateVariantsJob < ApplicationJob
  MAXIMUM_TRIALS_COUNT = 5
  WAIT_SECONDS = 2

  queue_as :default

  def perform(instance)
    trial_count = 1

    begin
      instance.generate_variants
    rescue ActiveStorage::FileNotFoundError => e
      if trial_count < MAXIMUM_TRIALS_COUNT
        trial_count += 1
        sleep WAIT_SECONDS
        retry
      else
        raise e
      end
    end
  end
end
