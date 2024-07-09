class PlanetInfo {
  final int id;
  final String name;
  final String iconImage;
  final String description;

  PlanetInfo({
    required this.id,
    required this.name,
    required this.iconImage,
    required this.description,
  });
}

//! this is our model data for planets
List<PlanetInfo> planets = [
  PlanetInfo(
    id: 0,
    name: 'Sun',
    iconImage: 'assets/images/Sun.png',
    description:
        "Mercury, the closest planet to the Sun, it is the smallest in the solar system and has a heavily cratered surface similar to the Moon. Its thin atmosphere leads to extreme temperature fluctuations, with scorching days and freezing nights. Mercury's lack of atmosphere means it cannot retain heat, resulting in temperatures ranging from -173°C at night to 427°C during the day.",
  ),
  PlanetInfo(
    id: 1,
    name: 'Mercury',
    iconImage: 'assets/images/Mercury.png',
    description:
        "Mercury, the closest planet to the Sun, it is the smallest in the solar system and has a heavily cratered surface similar to the Moon. Its thin atmosphere leads to extreme temperature fluctuations, with scorching days and freezing nights. Mercury's lack of atmosphere means it cannot retain heat, resulting in temperatures ranging from -173°C at night to 427°C during the day.",
  ),
  PlanetInfo(
    id: 2,
    name: 'Venus',
    iconImage: 'assets/images/Venus.png',
    description:
        "Venus, the second planet from the Sun, is similar in size and structure to Earth, earning it the title of Earth's 'sister planet'. However, its thick atmosphere, composed mainly of carbon dioxide with clouds of sulfuric acid, creates a runaway greenhouse effect, making its surface the hottest in the solar system at around 465°C. Venus rotates very slowly and in the opposite direction to most planets, meaning its day is longer than its year.",
  ),
  PlanetInfo(
    id: 3,
    name: 'Earth',
    iconImage: 'assets/images/Earth.png',
    description:
        "Earth, our home planet, is the third from the Sun and the only known planet to support life. It has a balanced atmosphere composed mainly of nitrogen and oxygen, which sustains a wide variety of ecosystems. Earth's surface is 71% water, which plays a crucial role in regulating its climate. The planet's diverse geology includes mountains, valleys, and volcanoes, and its dynamic weather systems contribute to its rich biodiversity.",
  ),
  PlanetInfo(
    id: 4,
    name: 'Mars',
    iconImage: 'assets/images/Mars.png',
    description:
        "Mars, the fourth planet from the Sun, is known as the Red Planet due to the iron oxide (rust) that covers its surface. Mars hosts the tallest volcano in the solar system, Olympus Mons, and the deepest canyon, Valles Marineris. Although it has a thin atmosphere composed mostly of carbon dioxide, evidence suggests that Mars once had liquid water on its surface, raising questions about past life.",
  ),
  PlanetInfo(
    id: 5,
    name: 'Jupiter',
    iconImage: 'assets/images/Jupiter.png',
    description:
        "Jupiter, the fifth planet from the Sun, is the largest in our solar system and a gas giant composed mainly of hydrogen and helium. Its most notable feature is the Great Red Spot, a massive storm larger than Earth that has persisted for centuries. Jupiter has at least 79 moons, including Ganymede, the largest moon in the solar system, which is even bigger than the planet Mercury. Jupiter's powerful magnetic field and numerous moons make it a mini solar system of its own.",
  ),
  PlanetInfo(
    id: 6,
    name: 'Saturn',
    iconImage: 'assets/images/Saturn.png',
    description:
        "Saturn, the sixth planet, is renowned for its stunning ring system, composed of ice and rock particles. Like Jupiter, Saturn is a gas giant primarily made of hydrogen and helium. It has at least 83 moons, with Titan being the largest. Titan is unique for its thick atmosphere and lakes of liquid methane and ethane, making it a subject of great interest for scientists studying prebiotic chemistry.",
  ),
  PlanetInfo(
    id: 7,
    name: 'Uranus',
    iconImage: 'assets/images/Uranus.png',
    description:
        "Uranus, the seventh planet from the Sun, is classified as an ice giant due to its composition of water, ammonia, and methane ices. It has a blue-green color because of methane in its atmosphere. Uranus is unique because it rotates on its side, with its axis nearly parallel to its orbit, possibly due to a colossal collision early in its history. This unusual tilt causes extreme seasonal variations. Uranus has at least 27 moons and faint rings.",
  ),
  PlanetInfo(
    id: 8,
    name: 'Neptune',
    iconImage: 'assets/images/Neptune.png',
    description:
        "Neptune, the eighth and farthest known planet from the Sun, is similar to Uranus in composition and appearance. It is an ice giant with a deep blue color, also due to atmospheric methane. Neptune is known for its strong winds and storms, including the Great Dark Spot, a storm comparable to Jupiter's Great Red Spot. Neptune has at least 14 moons, with Triton being the largest.",
  ),
];
