class Prospect < ApplicationRecord
 has_many :job_seekings
 has_many :jobs, through: :job_seekings
 belongs_to :user


end
