class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :first_name
      t.string :last_name
      t.string :reply_address
      t.string :subject
      t.string :message

      t.timestamps null: false
    end
  end
end
