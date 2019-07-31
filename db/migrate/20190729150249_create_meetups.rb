class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.belongs_to :requester
      t.belongs_to :acceptor
      t.index [:requester_id, :acceptor_id], unique: true
    end
  end
end
