class AddDeptReferenceToStuds < ActiveRecord::Migration[5.2]
  def change
    add_reference :studs, :dept, foreign_key: true
  end
end
