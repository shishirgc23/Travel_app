class Travel {
  String name;
  String location;
  String url;
  Travel(this.name, this.location, this.url);

  static List<Travel> generateTravelBlog() {
    return [
      Travel('Pashupatinath Temple', 'Gaushala Kathmandu',
          'assets/images/pashupatinath.jpg'),
      Travel(
          'Boudhanath Temple', 'Boudha Kathmandu', 'assets/images/boudha.jpg'),
      Travel('Muktinath Temple', 'Mustang', 'assets/images/muktinath.jpg'),
      Travel('Syambhunath Temple', 'Syambhu Kathmandu',
          'assets/images/syambhu.jpg'),
      Travel('Supadeurali Temple', 'Arghakhanchi',
          'assets/images/Supadeurali1.jpg'),
      Travel('Dakshinkali Temple', 'Kritipur Kathmandu',
          'assets/images/dakshinkali.jpg'),
    ];
  }

  static List<Travel> generateMostPopular() {
    return [
      Travel('Bindabasani Temple', 'Pokhara', 'assets/images/bindabasani.jpg'),
      Travel('Bhadrakali Temple', 'Pokhara', 'assets/images/bhadrakali.jpg'),
      Travel('Dharapani Temple', 'Dang', 'assets/images/dharapani.jpg'),
      Travel('Lord shiva Temple', 'Pokhara', 'assets/images/shiva.jpg'),
      Travel('Talbarahi Temple', 'Pokhara', 'assets/images/talbarahi.jpg'),
      Travel('Ganesh Temple', ' Bhaktapur', 'assets/images/ganesh.jpg'),
    ];
  }

  static generateMostPopula() {}
}
