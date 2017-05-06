class Job < ApplicationRecord
 has_many :preferences
 has_many :job_seekings
 has_many :prospects, through: :job_seekings

end
