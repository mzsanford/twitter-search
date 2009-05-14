module TwitterSearch
  class Trend
    VARS = [ :query, :name ]
    attr_reader *VARS
    
    def initialize(opts)
      
      VARS.each { |each| instance_variable_set "@#{each}", opts[each.to_s] }
    end
  end

  class Trends
    VARS = [:date, :exclude_hashtags]
    attr_reader *VARS

    include Enumerable

    def initialize(opts)     
      @exclude_hashtags = !!opts['exclude_hashtags']
      @date = Time.at(opts['as_of'])
      time_key = opts['trends'].keys[0]
      @trends = opts['trends'][time_key].collect { |each| Trend.new(each) }
    end

    def each(&block)
      @trends.each(&block)
    end

    def size
      @trends.size
    end
    
    def [](index)
      @trends[index]
    end
  end
end