import 'package:flutter/material.dart';

class Utils {
  Utils._();

  static bool isEmptyList(Iterable<dynamic>? list) {
    if (list == null) {
      return true;
    } else if (list.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  static bool isEmpty(text) {
    if (text == '' || text == null || text == 'null') {
      return true;
    } else {
      return false;
    }
  }

  static void printWrapped(String? text) {
    RegExp('.{1,800}').allMatches(text ?? '').forEach(
          (match) => debugPrint(
            match.group(0),
          ),
        );
  }

  static String urlToImageUrl(String? url) {
    var imageUrl = url?.replaceAll('https://swapi.dev/api',
            'https://starwars-visualguide.com/assets/img') ??
        '';
    int lastSlashIndex = imageUrl.lastIndexOf('/');

    return '${imageUrl.substring(0, lastSlashIndex)}.jpg';
  }

  static List<String> extractListLastNumberUsingSplit(List<String> urls) {
    List<String> ids = [];
    for (int i = 0; i < urls.length; i++) {
      List<String> parts = urls[i].split('/');

      String lastSegment = parts[parts.length - 2];

      ids.add(
        lastSegment.replaceAll(RegExp(r'\D'), ''),
      );
    }
    return ids;
  }
}
