class CharacterList {
  String name;
  String variant;
  String element;
  String image;
  String info;
  List<String> gallery;

  CharacterList({
     required this.name,
     required this.variant,
     required this.element,
     required this.image,
     required this.info,
     required this.gallery,});
}

var characterList = [
  CharacterList(
      name: 'Lucia',
      variant: 'Crimson Abyss',
      element: 'Physical',
      image: 'images/characters/lucia_alpha1.png',
      info: 'A mysterious enemy encountered by Gray Raven in City 015. Powerful yet mercurial.',
      gallery: [
        'images/characters/lucia_alpha_icon.png',
        'images/characters/lucia_alpha_icon_awaken.png',
        'images/characters/lucia_alpha_dorm_icon.png',
      ]),
  CharacterList(
      name: 'Lucia',
      variant: 'Lotus',
      element: 'Fire',
      image: 'images/characters/lucia_lotus1.png',
      info: 'The leader of Gray Raven. Brave and selfless, she is ever at the frontline of the war against the Corrupted.',
      gallery: [
        'images/characters/lucia_lotus_icon.png',
        'images/characters/lucia_lotus_icon_awaken.png',
        'images/characters/lucia_lotus_icon_dorm.png',
      ]),
  CharacterList(
      name: 'Noan',
      variant: 'Arca',
      element: 'Lightning',
      image: 'images/characters/noan_arca1.png',
      info: 'The frame that “he” made to save Noan. Initially weighing only 41.3 kg, it was built with many degraded components in order to reduce the user’s movement. Its normal functionality has been ensured after undergoing Babylonia’s improvements.',
      gallery: [
        'images/characters/noan_arca_icon.png',
        'images/characters/noan_arca_icon_awaken.png',
        'images/characters/noan_arca_icon_dorm.png',
      ]),
  CharacterList(
      name: 'Liv',
      variant: 'Eclipse',
      element: 'Physical',
      image: 'images/characters/liv_eclipse1.png',
      info: 'A member of Gray Raven. As one of the newest support Constructs, she’s the anchor of the team.',
      gallery: [
        'images/characters/liv_eclipse_icon.png',
        'images/characters/liv_eclipse_icon_awaken.png',
        'images/characters/liv_eclipse_icon_dorm.png',
      ]),
  CharacterList(
      name: 'Lee',
      variant: 'Palefire',
      element: 'Fire',
      image: 'images/characters/lee_palefire1.png',
      info: 'Member of Gray Raven. Somewhat aloof in manner. Good at computers and machines, he is responsible for Gray Raven’s hardware and technical issues.',
      gallery: [
        'images/characters/lee_palefire_icon.png',
        'images/characters/lee_palefire_icon_awaken.png',
        'images/characters/lee_palefire_icon_dorm.png',
      ]),
  CharacterList(
      name: 'Karenina',
      variant: 'Blast',
      element: 'Physical',
      image: 'images/characters/karenina_blast1.png',
      info: 'Trained at the Cosmos Technicians Union and a member of the Engineering Force, the fiery Karenina solves problems by blowing them up. The Purifying Force finds this useful.',
      gallery: [
        'images/characters/karenina_blast_icon.png',
        'images/characters/karenina_blast_icon_awaken.png',
        'images/characters/karenina_blast_icon_dorm.png',
      ]),

];