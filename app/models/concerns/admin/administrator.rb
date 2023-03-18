module Admin
  module Administrator
    extend ActiveSupport::Concern

    included do
      rails_admin do
        navigation_label "RailsAdmin"

        object_label_method do
          :email
        end

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
          field :email do
            required true
          end
          field :password do
            required true
          end
          field :password_confirmation do
            required true
          end
        end
      end
    end
  end
end
