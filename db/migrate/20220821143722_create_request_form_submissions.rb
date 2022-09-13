class CreateRequestFormSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :request_form_submissions do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :country
      t.string :phone
      t.text :comment

      t.timestamps
    end
  end
end
