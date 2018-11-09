class CreateVisaApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :visa_applications do |t|
      t.string :title
      t.text :body
      kind :string

      t.timestamps
    end
  end
end
