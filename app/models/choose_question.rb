class ChooseQuestion < ApplicationRecord
  belongs_to :country, :through => :visa_application
  has_many :positions
end
