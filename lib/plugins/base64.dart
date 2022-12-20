// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:mobile_starter_kit/api/common/environments.dart';

class Base64 {
  static const String _keyStr =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";

  static encode(String input) {
    var output = "";
    var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
    var i = 0;
    input = Base64._utf8Encode(input);

    while (i < input.length) {
      chr1 = input.codeUnitAt(i++);
      chr2 = input.codeUnitAt(i++);
      chr3 = input.codeUnitAt(i++);
      enc1 = chr1 >> 2;
      enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
      enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
      enc4 = chr3 & 63;
      if (chr2 == null) {
        enc3 = enc4 = 64;
      } else if (chr3 == null) {
        enc4 = 64;
      }
      output = output +
          _keyStr[enc1] +
          _keyStr[enc2] +
          _keyStr[enc3] +
          _keyStr[enc4];
    }

    return output;
  }

  static _utf8Encode(String string) {
    string = string.replaceAll("/\r\n/g", '\n');
    var utftext = "";
    for (int n = 0; n < string.length; n++) {
      var c = string.codeUnitAt(n);
      if (c < 128) {
        utftext += String.fromCharCode(c);
      } else if (c > 127 && c < 2048) {
        utftext += String.fromCharCode((c >> 6) | 192);
        utftext += String.fromCharCode((c & 63) | 128);
      } else {
        utftext += String.fromCharCode((c >> 12) | 224);
        utftext += String.fromCharCode(((c >> 6) & 63) | 128);
        utftext += String.fromCharCode((c & 63) | 128);
      }
    }

    return utftext;
  }

  static cinpher(String text) {
    final vendorCodes =
        currentEnv.vendorId.split('').map((e) => e.codeUnitAt(0)).toList();
    final encode = Uri.encodeComponent(text)
        .split('')
        .map((e) => e.codeUnitAt(0)) // .map(textToChars)
        .map((e) => vendorCodes.fold<int>(e, (a, b) => a ^ b))
        .map((e) => e.toRadixString(16).padLeft(2, "0"))
        .join('');
    return encode;
  }
}
