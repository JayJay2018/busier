class User < ApplicationRecord
  validates :nickname, uniqueness: true
  # has_many :searchers, class_name: 'Travel_match', foreign_key: :searcher_id
  # has_many :makers, class_name: 'Maker_match', foreign_key: :maker_id
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
