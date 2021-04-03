class CreateMembershipInquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :membership_inquiries do |t|
      t.string :session_id
      t.integer :question_id
      t.text :answer

      t.timestamps
    end
  end
end
