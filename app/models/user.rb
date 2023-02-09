# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :name, presence: true

    has_many(
        :enrollments,
        class_name: :Enrollment,
        foreign_key: :student_id, 
        primary_key: :id
    )

    has_many(
        :cour, 
        class_name: :Course, 
        primary_key: :id,
        foreign_key: :instructor_id

    )

end
