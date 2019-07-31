class AddLevelToLanguages < ActiveRecord::Migration[5.2]
  def change
    add_column :languages, :level, :string
  end
end
