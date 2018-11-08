class User < ApplicationRecord
  has_many :documents
  has_many :files
  has_many :visas
  has_many :text_answers
  has_many :choose_answers
end
