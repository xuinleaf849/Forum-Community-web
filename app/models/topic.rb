class Topic < ApplicationRecord

  has_many :discussions, :dependent => :destroy

end
