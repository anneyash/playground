class VisaApplication < ApplicationRecord
  belongs_to :country
  has_many :files
end
