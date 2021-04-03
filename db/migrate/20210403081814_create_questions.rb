class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :question
      t.text :guide
      t.string :field_type
      t.boolean :required

      t.timestamps
    end
  end
end
