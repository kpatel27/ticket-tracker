class Ticket < ApplicationRecord
  validates :name, presence: true
  validates :status, inclusion: { in: ['new', 'blocked', 'in_progress', 'fixed']}
  validates :project_id, presence: true

  belongs_to :project
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
end
