class ChooseAnswer < ApplicationRecord
  belongs_to :country, :through => :visa_application
  has_one :answer
end
