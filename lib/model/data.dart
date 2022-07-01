class Coffee {
  final String name;
  final String shortDesc;
  final String desc;
  final String image;
  final int rate;
  final int likes;

  Coffee(
      {this.name='',
      this.shortDesc='',
      this.desc='',
      this.image='',
      this.rate=0,
      this.likes=0});
}

List<Coffee> menu = [
  Coffee(
      name: "Cornell university",
      shortDesc: "United states, Ithaca",
      desc:
          "The Cornell Big Red is the informal name of the sports teams, and other competitive teams, that represent Cornell University, "
              "located in Ithaca, New York. The university sponsors 36 varsity sports, as well as numerous intramural and club teams.",
      image: "images/cornell.jpg",
      rate: 4,
      likes: 1520),
  Coffee(
      name: "Harvard university",
      shortDesc: "United states, Cambridge",
      desc:
          "Harvard University is a private Ivy League research university in Cambridge, Massachusetts. The Puritan clergyman "
              "John Harvard, it is the oldest institution of higher learning in the United States and among the most prestigious in the world.",
      image: "images/harvard.jpg",
      rate: 5,
      likes: 865),
  Coffee(
      name: "Purdue university",
      shortDesc: "United states, West Lafayette",
      desc: "Purdue University is a public land-grant research university in West Lafayette, Indiana. The university was founded in "
          "1869 after Lafayette businessman John Purdue donated land and money to establish a college of science, technology, and agriculture in his name.",
      image: "images/purdue.jpg",
      rate: 4,
      likes: 1214),
  Coffee(
      name: "Stanford university",
      shortDesc: "United states, Californie",
      desc: "Stanford University, officially Leland Stanford Junior University, is a private research university located in the "
          "census-designated place of Stanford, California, near the city of Palo Alto. The campus occupies 8,180 acres, among the largest in the United States.",
      image: "images/stanford.jpg",
      rate: 5,
      likes: 1632),
  Coffee(
      name: "Yale university",
      shortDesc: "United states, New Haven",
      desc: "Yale University is a private Ivy League research university in New Haven, Connecticut. Founded in 1701 as the Collegiate "
          "School, it is the third-oldest institution of higher education in the United States and among the most prestigious in the world.",
      image: "images/yale.jpg",
      rate: 4,
      likes: 978),
];
