class Profile < ActiveRecord::Base
  belongs_to :user

  validate :first_or_last, :male_named_sue
  validates_inclusion_of :gender, :in => ["male", "female"]

  def self.get_all_profiles(min_year, max_year)
  	Profile.where("birth_year BETWEEN ? AND ?", min_year, max_year).order('birth_year asc').to_a
  	
  end
  

def first_or_last
  if !first_name.present? && !last_name.present?
    errors.add(:first_name, "cannot have first name and last name be blank")
  end
 end

def male_named_sue
	if "male" == gender &&  "Sue" == first_name
    errors.add(:first_name, "men cannot be called Sue")
  end
end

def get_all_profiles
end

end
