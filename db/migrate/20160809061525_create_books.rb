class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.column :title, :string, :limit => 32, :null => false
      t.column :author, :string, null: false
      t.column :subject_id, :string
      t.column :the_number_of_pages, :integer
      t.column :publish_date, :date
      t.column :rating_score, :date
      t.timestamps null: false
    end
  end
end
