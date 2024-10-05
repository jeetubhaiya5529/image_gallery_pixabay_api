import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_gallery/provider/gallery_provider.dart';

class GalleryScreen extends ConsumerWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final photoAsyncValue = ref.watch(photosProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Gallery'),
      ),
      body: photoAsyncValue.when(
        data: (photos) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
            ),
            itemCount: photos.length,
            itemBuilder: (context, index) {
              final photo = photos[index];
              return Card(
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Username above the image
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'User: ${photo.user}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Image
                    Expanded(
                      child: Image.network(
                        photo.url,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    // Likes and Views below the image
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.favorite, color: Colors.red, size: 16),
                              const SizedBox(width: 4),
                              Text('${photo.likes}'),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.remove_red_eye, color: Colors.blue, size: 16),
                              const SizedBox(width: 4),
                              Text('${photo.views}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
