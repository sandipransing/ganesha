class ActiveRecord::Base
  def self.per_page
    @@per_page ||= 50
  end

  def self.pagination(options)
    paginate :per_page => options[:per_page] || per_page, :page => options[:page]
  end

  def self.options_for_select(name=nil)
    name ||= :name
    all.collect{|c| [c.send(name.to_sym), c.id]}.insert(0, ['Select All',''])
  end
end

class Hash
  # It will return hash keys associated with input value
  # While submitting boolean fields we can easily calculate 
  # keys with value TRUE or FALSE --Sandip
  def keys_with_value(value = nil )
    reject{|k, v| v != value }.keys
  end
end
