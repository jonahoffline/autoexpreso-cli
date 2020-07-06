module AutoExpreso
  class Cache
    def initialize
      @memory = Hash.new
    end

    def get(request)
      @memory[request]
    end

    def set(request, response)
      @memory[request] = response
    end
  end
end
