import Cocoa


//: Clases y Estructuras
// En el siguiente ejemplo se puede apreciar la herencia a partir de la clase MediaItem.

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}


struct Movies{
    var nombre : String
    var director : String
}

struct Songs{
    var nombre : String
    var artista : String
}

var pelicula = Movie(name: "Casa Blanca", director: "Michael Curtiz")
pelicula.name = "Los Miserables"
pelicula.director = "Jesus Salazar"
