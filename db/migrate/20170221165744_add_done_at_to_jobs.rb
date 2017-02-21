class AddDoneAtToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :done_at, :datetime
  end
end
