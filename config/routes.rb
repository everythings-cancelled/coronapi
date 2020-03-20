Rails.application.routes.draw do
  resources :snapshots
  resources :foos
end

# class CreateSnapshots < ActiveRecord::Migration[5.2]
#   def change
#     create_table :snapshots do |t|
#       t.string :location
#       t.string :alpha2_code
#       t.float :latitude
#       t.float :longitude
#       t.integer :confirmed
#       t.integer :deaths
#       t.integer :recovered
#       t.timestamps
#     end
#   end
# end

# rails generate scaffold Snapshot location:string alpa2_code:string latitude:float longitude:float deaths:integer confirmed:integer recovered:integer