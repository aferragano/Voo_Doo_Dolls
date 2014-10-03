class Doll < ActiveRecord::Base
  belongs_to :user
  validates :story, presence: true
  validates :name, presence: true
end
