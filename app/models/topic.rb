class Topic < ApplicationRecord

  has_many :discussions
  has_many :comment, through: :discussions

  validates :name, presence: true


end
