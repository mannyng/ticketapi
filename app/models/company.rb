class Company < ApplicationRecord
  has_many :job_offerings
  has_many :jobs, through: :job_offerings
  belongs_to :user


end
