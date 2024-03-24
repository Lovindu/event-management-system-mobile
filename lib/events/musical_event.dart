
class MusicalEvent {
  String name;
  String imagePath;

  MusicalEvent({
    required this.name,
    required this.imagePath,
  });

  static List<MusicalEvent> getMusical() {
    List<MusicalEvent> musical = [];

    musical.add(MusicalEvent(
        name: 'Test1',
        imagePath: 'lib/images/1920 1.png'));
     musical.add(MusicalEvent(
        name: 'Test2',
        imagePath: 'lib/images/8548949 3 (1).png'));
      musical.add(MusicalEvent(
        name: 'Test3',
        imagePath: 'lib/images/1920 1.png'));
      musical.add(MusicalEvent(
        name: 'Test4',
        imagePath: 'lib/images/8548949 3 (1).png'));
   
    return musical;
  }
}