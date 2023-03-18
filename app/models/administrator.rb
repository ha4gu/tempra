class Administrator < ApplicationRecord
  devise :database_authenticatable, :lockable, :rememberable, :trackable, :validatable
end

# == Schema Information
#
# Table name: administrators
#
#  id                  :bigint           not null, primary key
#  current_sign_in_at  :datetime
#  current_sign_in_ip  :string
#  email               :string           default(""), not null
#  encrypted_password  :string           default(""), not null
#  failed_attempts     :integer          default(0), not null
#  last_sign_in_at     :datetime
#  last_sign_in_ip     :string
#  locked_at           :datetime
#  remember_created_at :datetime
#  sign_in_count       :integer          default(0), not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_administrators_on_email  (email) UNIQUE
#
