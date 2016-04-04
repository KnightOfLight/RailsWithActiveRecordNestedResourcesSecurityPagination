class Profile < ActiveRecord::Base
  belongs_to :user

   validate :first_last_name_not_null_both, 
   :first_name_not_sue
  validates :gender, inclusion: %w(male female)


  def first_last_name_not_null_both
		if last_name == nil && first_name == nil
			errors.add(:first_name, "first_name	or	last_name	to	be	null	but	not	both")
		end
	end

	def first_name_not_sue
		if first_name == "Sue"
			errors.add(:first_name,"prevents	anyone	that	is	male	(gender)	from	having	the	first_name Sue")
		end
	end

	def self.get_all_profiles(min, max)
		self.where("birth_year BETWEEN ? AND ?", min, max).order(birth_year: :asc)
	end

end
