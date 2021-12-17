class CreateEnrollments < ActiveRecord::Migration[6.1]
  def change
    create_table :enrollments do |t|
      t.bigint :course_id, null: false
      t.bigint :student_id, null: false

      t.timestamps
    end
  end
end
