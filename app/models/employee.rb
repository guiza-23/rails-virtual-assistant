class Employee < ApplicationRecord
  belongs_to :users
  belongs_to :companies
  belongs_to :jobs
end
