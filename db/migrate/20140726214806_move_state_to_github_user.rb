class MoveStateToGithubUser < ActiveRecord::Migration
  def change
    add_column :github_users, :state, :string, null: false, default: :unknown
    remove_column :users, :state, :string, null: false, default: :unknown
  end
end
