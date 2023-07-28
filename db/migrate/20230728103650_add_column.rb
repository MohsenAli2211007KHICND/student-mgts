class AddColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :semester, :string
  end
end
