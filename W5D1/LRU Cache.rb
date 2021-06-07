class LRUCache
    def initialize
        @size = size 
        @cache = [] 
    end

    def count
      @cache.length 
    end

    #first thing is check if the cache already includes the el; no duplicates
    #we make a space for the el; delete; then push it into a spot at the end 
    def add(el)
        if @cache.include?(el)
            @catche.delete(el)
            @cache.push(el)
        elsif count >= @size 
            @cache.shift 
            @cache.push(el)
        else
            @cache.push(el)
        end
    end

    def show
      # shows the items in the cache, with the LRU item first
      print @cache
    end

    private
    # helper methods go here!

end