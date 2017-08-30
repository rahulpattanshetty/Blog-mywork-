class RemoveColumnArticle < ActiveRecord::Migration
  def change
  	#remove_column :table_name, :column_name
  	remove_column :articles, :category_id
  end
end
