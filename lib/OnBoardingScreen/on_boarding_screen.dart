

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Find & Book Services",
    image: 'images/cleaning.jpg',
    desc: " Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  ),
  OnboardingContents(
    title: "All your services at your Doorsteps",
    image: 'images/saloon.jpg',
    desc:
    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  ),
  OnboardingContents(
    title: "Same day service available book slot & relax",
    image: 'images/logowhite.png',
    desc:
    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  ),
];
