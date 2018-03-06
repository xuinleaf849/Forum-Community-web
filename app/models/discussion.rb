class Discussion < ApplicationRecord

  belongs_to :topic
  belongs_to :user
  has_many :comments, :dependent => :destroy

  validates :title, :content, presence: true
  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :topic_id, presence: true, numericality: { only_integer: true }

  validate :validate_user_id
  validate :validate_topic_id

  private

  def validate_user_id
   errors.add(:user_id, "is invalid") unless User.exists?(id: self.user_id)
  end

  def validate_topic_id
   errors.add(:topic_id, "is invalid") unless Topic.exists?(id: self.topic_id)
  end
end
