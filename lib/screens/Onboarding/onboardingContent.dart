class Onboardingcontent {
  String Image;
  String title;
  String disposition;

  Onboardingcontent(
      {required this.Image, required this.title, required this.disposition});
}
  List<Onboardingcontent> contents = [
    Onboardingcontent(
        Image: 'assets/img/loader.gif',
        title: 'titulo1',
        disposition: 'descripcion 1'),
    Onboardingcontent(
        Image: 'assets/img/loader.gif',
        title: 'titulo1',
        disposition: 'descripcion 1'),
    Onboardingcontent(
        Image: 'assets/img/loader.gif',
        title: 'titulo1',
        disposition: 'descripcion 1')
  ];

