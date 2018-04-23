class CreateJoinTableDeptTeacher < ActiveRecord::Migration[5.2]
  def change
    create_join_table :depts, :teachers do |t|
      # t.index [:dept_id, :teacher_id]
      # t.index [:teacher_id, :dept_id]
    end
  end
end
