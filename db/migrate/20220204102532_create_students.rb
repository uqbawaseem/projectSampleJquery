class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :age
      t.string :status
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
