class CreateSmsSenders < ActiveRecord::Migration[6.1]
  def change
    create_table :sms_senders do |t|

      t.timestamps
    end
  end
end
