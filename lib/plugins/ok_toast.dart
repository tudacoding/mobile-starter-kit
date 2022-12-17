import 'package:flutter/material.dart';
import 'package:mobile_starter_kit/plugins/hex_color.dart';
import 'package:oktoast/oktoast.dart';

class ToastHelper {
  // "success": #28a745,
  // "info": #17a2b8,
  // "warning": #ffc107,
  // "error": #dc3545,
  // "default": #343a40

  static success(String message) {
    showToast(message,
        position: ToastPosition.bottom,
        textPadding: const EdgeInsets.all(8),
        radius: 3,
        backgroundColor: HexColor.fromHex("#28a745").withAlpha(233));
  }

  static warning(String message) {
    showToast(message,
        position: ToastPosition.bottom,
        textPadding: const EdgeInsets.all(8),
        radius: 3,
        backgroundColor: HexColor.fromHex("#ffc107").withAlpha(233));
  }

  static error(String message) {
    showToast(message,
        position: ToastPosition.bottom,
        textPadding: const EdgeInsets.all(8),
        radius: 3,
        backgroundColor: HexColor.fromHex("#dc3545").withAlpha(233));
  }

  static lazyError() => error("Đã có lỗi xảy ra, vui lòng thử lại");
  static lazyUpdateSuccess() => success("Cập nhật thành công");
}
