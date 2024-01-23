class Project {
  final String name;
  final String description;
  final String link;
  Project(this.name, this.description,  this.link);
}

List<Project> projectList = [
  Project(
    'WellServe Dialysis Center Application',
    'a Flutter Application that manage the patient records and schedules on the WellServe Dialysis Center.',
    'https://gitlab.com/john.burgos/wellserve-app',
  ),
    Project(
    'WellServe App Api',
    'a Express Rest API for the WellServe Dialysis Center Application.',
    'https://gitlab.com/john.burgos/wellserve-api',
  ),
   Project(
    'Experience on BunBuy Merchant Center',
    'part of my internship on a company where i take a job on development of the Merchant Center for PDD BunBuy Application ',
    '//',
  ),
  Project(
    'Euknow!',
    'a productivity application to remind the user about his task, events, and even notes',
    '//',
  ),
 
 
];
