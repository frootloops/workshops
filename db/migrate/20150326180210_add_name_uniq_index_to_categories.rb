# https://robots.thoughtbot.com/the-perils-of-uniqueness-validations
class AddNameUniqIndexToCategories < ActiveRecord::Migration
  def change
    add_index :categories, :name, unique: true
  end
end
