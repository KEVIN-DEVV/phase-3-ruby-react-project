class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string:name
      t.integer:code
      t.integer:lecturer_id
      t.integer:student_id

      t.timestamps
    end
  end
end
