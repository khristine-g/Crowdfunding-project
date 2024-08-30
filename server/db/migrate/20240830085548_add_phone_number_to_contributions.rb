class AddPhoneNumberToContributions < ActiveRecord::Migration[6.1]
  def change
    add_column :contributions, :phone_number, :string
  end
end
