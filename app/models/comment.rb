class Comment < ApplicationRecord

  belongs_to :discussion
  belongs_to :user

  validates :message, presence: true
  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :discussion_id, presence: true, numericality: { only_integer: true }

  validate :validate_user_id
  validate :validate_discussion_id

  private

  def validate_user_id
   errors.add(:user_id, "is invalid") unless User.exists?(id: self.user_id)
  end

  def validate_discussion_id
   errors.add(:discussion_id, "is invalid") unless Discussion.exists?(id: self.discussion_id)
  end
end
