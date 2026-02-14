import 'package:url_launcher/url_launcher.dart';

class DownloadCV {
  static Future<void> downloadCV() async {
    final url = Uri.parse("https://czire-s-resume.tiiny.site");
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}
