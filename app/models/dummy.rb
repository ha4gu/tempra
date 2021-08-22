class Dummy < ApplicationRecord
  has_one_attached :image

  after_save_commit { GenerateVariantsJob.set(wait: 2.seconds).perform_later(self) }

  def generate_variants
    if image.attached?
      # for app/views/dummies/index.html.erb
      image.variant(resize_to_fill: [80, 80]).processed

      # for app/views/dummies/show.html.erb
      image.variant(resize_to_fit: [400, 400]).processed
    end
  end
end
