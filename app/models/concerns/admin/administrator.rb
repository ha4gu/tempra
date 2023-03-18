module Admin
  module Administrator
    extend ActiveSupport::Concern

    included do
      rails_admin do
        navigation_label "RailsAdmin"

        list do
          sort_by :id

          field :id
          field :email
          field :sign_in_count
          field :last_sign_in_at
          field :created_at
          field :updated_at
        end

        edit do
          field :email
          field :password
          field :password_confirmation
        end
      end
    end
  end
end
