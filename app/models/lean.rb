include ApplicationHelper

class Lean < ActiveRecord::Base

  serialize :lean_child_ids 
  serialize :lean_path_ids
  serialize :lean_parent_ids

  attr_accessible :description, :footer, :form_name, :info, :label, 
  				  :lean_child_ids, :lean_parent_ids, :lean_path_ids, 
  				  :logo, :name, :short_name, :url, :wiki, :link

  validates :lean_child_ids, :lean_path_ids, :lean_parent_ids, 
  										:class_name => Array

  def to_h child = false
    if child
      return {
        :id           => self[:id],
        :name         => self[:name],
        :short_name   => self[:short_name],
        :logo         => self[:logo],
        :childs_count  => self[:lean_child_ids].count
      }
    else
      return {
        :id           => self[:id],
        :name         => self[:name],
        :short_name   => self[:short_name],
        :description  => self[:description],
        :info         => self[:info],
        :logo         => self[:logo],
        :wiki         => self[:wiki],
        :url          => self[:url],
        :link         => self[:link],
        :footer       => self[:footer],
        :label        => self[:label],
        :form_name    => self[:form_name],
        :lean_parent_ids  => self[:lean_parent_ids],
        :lean_child_ids   => self[:lean_child_ids],
        :lean_path_ids    => self[:lean_path_ids],
        :childs_count      => self[:lean_child_ids].count
      }
    end
  end

  def to_a
    return [self]
  end

end
