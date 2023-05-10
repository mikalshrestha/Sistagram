import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/story_repo_impl.dart';
import '../../domain/models/story_model.dart';
import '../../domain/repository/StoryItemRepository.dart';


class StoryItemListViewModel extends StateNotifier<List<StoryItem>> {
  final StoryRepository _repository;

  StoryItemListViewModel({required StoryRepository repository})
      : _repository = repository,
        super([]);

  Future<void> fetchStoryItems() async {
    try {
      state = await _repository.fetchStoryItems();
    } catch (error) {
      // handle error
    }
  }
}

final storyItemListViewModelProvider =
StateNotifierProvider<StoryItemListViewModel, List<StoryItem>>(
        (ref) => StoryItemListViewModel(repository: ref.watch(storyRepositoryProvider)));
