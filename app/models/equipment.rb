class Equipment < ActiveRecord::Base
  belongs_to :equipment_category, counter_cache: true
end
