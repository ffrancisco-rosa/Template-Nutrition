class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:guest, :nutri]
  has_many :customers, class_name: 'Customer', foreign_key: "nutri_id"
end
