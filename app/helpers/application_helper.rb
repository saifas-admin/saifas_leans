module ApplicationHelper

	class ClassNameValidator < ActiveModel::Validator
  	  def validate(record)
  		  options[:attributes].each do |key|
    		  if record[key].class.to_s != options[:with].to_s
      			  record.errors[:base] << "Field is no instance of exspected class"
    		  end
    	  end
  	  end
	end

end