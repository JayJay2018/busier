class TravelMatch < ApplicationRecord
  belongs_to :searcher, class_name: :User
  belongs_to :maker, class_name: :User
end
