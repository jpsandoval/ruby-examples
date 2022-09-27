
class PlayStrategy
    def nextIndex(current_index,len)
        raise NotImplementedError
    end
end


class RandomStrategy < PlayStrategy
    def nextIndex(current_index,len)
        return rand(len)
    end
end

class SequenceStrategy < PlayStrategy
    def nextIndex(current_index,len)
        return (current_index + 1) % len
    end
end

class RepeatStrategy < PlayStrategy
    def nextIndex(current_index,len)
        return current_index
    end
end
