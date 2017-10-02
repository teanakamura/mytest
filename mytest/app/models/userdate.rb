class Userdate < ApplicationRecord
  validates :email, presence: true, length: { minimum: 3, message: "come'on mail adress!!" }
  validates :pass, presence: true, length: { minimum: 6, message: 'too short!' }, confirmation: true
  validates :pass_confirmation, presence: true
end
