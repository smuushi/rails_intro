# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string           not null
#  prereq_id     :bigint
#  instructor_id :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord
    validates :name, presence: true
    validates :instructor_id, presence: true

    has_many(
        :enrollments,
        class_name: :Enrollment,
        primary_key: :id,
        foreign_key: :course_id
    )


end
