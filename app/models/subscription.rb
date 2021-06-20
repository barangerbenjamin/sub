class Subscription < ApplicationRecord
    attr_reader :duration
    validates_presence_of  :name, :price, :start_at, :category
end
