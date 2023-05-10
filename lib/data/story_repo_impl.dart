
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/models/story_model.dart';
import '../domain/repository/StoryItemRepository.dart';

class RemoteStoryRepository implements StoryRepository  {
  final Dio _dio;

  RemoteStoryRepository({required Dio dio}) : _dio = dio;

  @override
  Future<List<StoryItem>> fetchStoryItems() async {
    try {
      final response = await _dio.get('http://10.13.168.252:7082/v1/stories');
      final List<dynamic> data = response.data;
      final List<StoryItem> storyItems = data.map((item) => StoryItem.fromJson(item)).toList();
      return storyItems;
    } catch (error) {
      throw Exception('Failed to fetch story items');
    }
  }
}

final storyRepositoryProvider = Provider<StoryRepository>((ref) {
  final dio = Dio();
  return RemoteStoryRepository(dio: dio);
});
