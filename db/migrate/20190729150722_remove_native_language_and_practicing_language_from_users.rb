class RemoveNativeLanguageAndPracticingLanguageFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :native_language, :string
    remove_column :users, :practicing_language, :string
  end
end
