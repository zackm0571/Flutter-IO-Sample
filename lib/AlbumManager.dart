import 'Album.dart';
class AlbumManager{

  List<Album> albums;
  int currentIndex;
  static const bool mockItems = true;
  AlbumManager(){
    currentIndex = 0;
    albums = new List<Album>();

    if(mockItems){
      Album tmp = new Album();
      tmp.artist = "Silent Planet";
      tmp.title="The Night God Slept";
      tmp.album_art_url="https://i.ytimg.com/vi/c1j5_WO1ju0/maxresdefault.jpg";
      albums.add(tmp);

      tmp = new Album();
      tmp.artist = "System of a Down";
      tmp.title="Toxicity";
      tmp.album_art_url="http://www.onlinedrummer.com/wp-content/uploads/2015/04/Toxicity-System-of-a-Down.jpg";
      albums.add(tmp);

      tmp = new Album();
      tmp.artist = "The Contortionist";
      tmp.title="Exoplanet";
      tmp.album_art_url="http://technicaldeathmetal.org/wp-content/uploads/2013/04/exoplanet.jpg";
      albums.add(tmp);

      tmp = new Album();
      tmp.artist = "Bassnectar";
      tmp.title="Take you down";
      tmp.album_art_url="https://direct.rhapsody.com/imageserver/images/Alb.122058237/500x500.jpg";
      albums.add(tmp);
    }
  }

  void moveFirst(){
    currentIndex = 0;
  }

  void movePrev(){
    if(hasPrev()){
      --currentIndex;
    }
  }

  void moveNext(){
    if(hasNext()){
      ++currentIndex;
    }
  }

  Album getCurrent(){
    return albums.elementAt(currentIndex);
  }

  bool hasNext(){
    return currentIndex < albums.length-1;
  }

  bool hasPrev(){
    return currentIndex > 0;
  }
}