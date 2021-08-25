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

# == Schema Information
#
# Table name: dummies
#
#  id         :bigint           not null, primary key
#  confirmed  :boolean          default(FALSE), not null
#  detail     :text
#  ordered_on :date
#  stock      :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
