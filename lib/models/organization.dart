enum Time {
  Morning,
  Night,
  Open_24_Hours,
}

class Organization {
  final String id;
  final String departmentId;
  final String title;
  final String imageUrl;
  final Time time;
  final String email;
  final String phone;
  final String webSite;
  final bool sindh;
  final bool balochistan;
  final bool punjab;
  final bool khyberPakhtunkhwa;
  //final String id;

  const Organization({
    required this.id,
    required this.departmentId,
    required this.title,
    required this.imageUrl,
    required this.time,
    required this.email,
    required this.phone,
    required this.webSite,
    required this.sindh,
    required this.balochistan,
    required this.punjab,
    required this.khyberPakhtunkhwa,
  });
}
