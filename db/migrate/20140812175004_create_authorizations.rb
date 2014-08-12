class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations do |t|
      t.string :provider
      t.string :email
      t.string :uid
      t.string :first_name
      t.string :last_name
      t.string :token
      t.string :facebook_post_id, foreign_key: false
      t.datetime :expires_at

      t.timestamps
    end
  end
end
