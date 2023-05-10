import '../models/story_model.dart';

abstract class StoryRepository {
  Future<List<StoryItem>> fetchStoryItems();
}