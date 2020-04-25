class CreateCoupons < ActiveRecord::Migration[6.0]
  def change
    create_table :coupons do |t|
      t.integer :user_id
      t.boolean :buying, default: false

      t.timestamps
    end
    add_index :coupons, :user_id
  end
end
