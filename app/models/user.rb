class User < ApplicationRecord
  devise :database_authenticatable, :lockable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: %i[google_oauth2]

  def self.from_oauth(response)
    user = find_or_initialize_by(provider: response.provider, uid: response.uid)

    if user.new_record?
      user.email = response.info.email
      user.password = Devise.friendly_token(64)
      user.save!
    end

    user
  end
end

# == Schema Information
#
# Table name: users
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
#  provider            :string
#  remember_created_at :datetime
#  sign_in_count       :integer          default(0), not null
#  uid                 :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
