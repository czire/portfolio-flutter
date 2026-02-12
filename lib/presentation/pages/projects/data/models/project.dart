class Project {
  final String id;
  final String title;
  final String description;
  final List<String> technologies;
  final String? liveUrl;
  final String? githubUrl;
  final String? imagePath;
  final String date;

  const Project({
    required this.id,
    required this.title,
    required this.description,
    required this.technologies,
    this.liveUrl,
    this.githubUrl,
    this.imagePath,
    required this.date,
  });
}