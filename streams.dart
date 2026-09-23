void main() async {
  await for (final progress in downloadProgress()) {
    if (progress == 100) {
      print("Download Completed Successfully!");
    } else {
      print("Download: $progress%");
    }
  }
  print("Download Completed!");
}

Stream<int> downloadProgress() async* {
  for (int i = 0; i <= 100; i += 20) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}