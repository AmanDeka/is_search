class InternshipInfo{
  final String? internshipName;
  final String? companyName;
  final String? image;
  final String? locationName;
  final String? start;
  final String? duration;
  final String? stipend;
  final bool? wfh;
  final String? l1;
  final String? l2;

  const InternshipInfo({
    required this.internshipName, 
    required this.companyName, 
    required this.image, 
    this.locationName, 
    required this.start,
    required this.duration,
    required this.stipend,
    required this.wfh,
    required this.l1,
    required this.l2
    });

  factory InternshipInfo.fromJson(Map<String, dynamic> json) {
    return InternshipInfo(
      internshipName : json['title'],
      companyName : json['company_name'],
      image : json['company_logo'],
      start : json['start_date'],
      duration : json['duration'],
      stipend : json['stipend']['salary'],
      wfh:json['work_from_home'],
      locationName: (json['work_from_home'])?'':json['location_names'][0],
      l1: json['labels_app'],
      l2: ''
    );
  }

  @override
  String toString(){
    return '${this.internshipName}';
  }
}