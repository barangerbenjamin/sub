class Subscription < ApplicationRecord

    validates_presence_of  :name, :price, :start_at, :ends_at
end
