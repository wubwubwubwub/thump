class RemoveNamesFromInquiries < ActiveRecord::Migration
  def change
    remove_column :inquiries, :first_name
    remove_column :inquiries, :last_name
  end
end
