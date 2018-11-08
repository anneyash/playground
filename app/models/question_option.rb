class QuestionOption < ApplicationRecord
  belongs_to :country, :through => :choosequestion, :visa_application
  has_many :options
end
