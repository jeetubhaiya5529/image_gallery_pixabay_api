// Riverpod Provider to manage photo fetching
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_gallery/model/model.dart';
import 'package:image_gallery/service/api_service.dart';

final pixabayServiceProvider = Provider((ref) => PixabayService());

final photosProvider = FutureProvider<List<Photo>>((ref) {
  final service = ref.read(pixabayServiceProvider);
  return service.fetchPhotos('flowers');
});