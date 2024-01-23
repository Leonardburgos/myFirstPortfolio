class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Certificate of Completion',
    organization: 'Achieve Without Borders,, INC.',
    date: 'SEP 2023',
    skills: 'Flutte & Dart . WORK EXPERIENCE ',
    credential:  'https://drive.google.com/file/d/1hJiI6vz8rWjQoA1HZxDvJPdNtSXbkjD8/view?usp=drive_link',
  ),
   CertificateModel(
    name: 'Certificate of Attendance',
    organization: 'affinidi',
    date: 'DEC 2023',
    skills: 'Future Authentication Passwordless ',
    credential:  'https://drive.google.com/file/d/1WO1sDeo9B-Hull5xdaV3w-qYt7GrHbvI/view?usp=drive_link',
  ),
   CertificateModel(
    name: 'Getting more certificates',
    organization: '',
    date: 'Present',
    skills: ' ',
    credential:  '',
  ),
 
 







];
