import 'package:books/core/functions/custom_snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if(url != null){
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }else{
      customSnackBar(context, 'Cannot launch $url');
    }
  }
}
