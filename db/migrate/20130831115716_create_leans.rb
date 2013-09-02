class CreateLeans < ActiveRecord::Migration
  def change
    create_table :leans do |t|
      t.string  :name
      t.string  :short_name
      t.text    :description
      t.string  :info
      t.string  :logo
      t.string  :wiki
      t.string  :url
      t.string  :link
      t.string  :footer
      t.string  :label
      t.string  :form_name
      t.text    :lean_parent_ids
      t.text    :lean_path_ids
      t.text    :lean_child_ids
      t.timestamps
    end
  end
end
