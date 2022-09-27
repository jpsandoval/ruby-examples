
class FilterStrategy
    # al hacer un metodo abstracto
    # las clases hijas estan obligadas a sobre escribir este metodo
    # sino ruby arroja un error
    def check(book)
        raise NotImplementedError
    end
end

class FilterByAuthorStrategy < FilterStrategy
    def initialize(name)
        @name = name
    end

    def  check(book)
        return book.author == @name
    end
end

class FilterByTitleStrategy < FilterStrategy

    def initialize(title)
        @title = title
    end

    def check(book)
        return book.title == @title
    end
end

class FilterByYearRangeStrategy < FilterStrategy

    def initialize(yearIni,yearFin)
        @yearIni = yearIni
        @yearFin = yearFin
    end

    def check(book)
        return book.year >= @yearIni && book.year <= @yearFin
    end
end