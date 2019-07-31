class AddFluentToUserLanguages < ActiveRecord::Migration[5.2]
  def change
    add_column :user_languages, :fluent, :boolean
  end
end
