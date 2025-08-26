import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_article/domain/usecase/marked_storage/marked_storage_usecase.dart'; // Thêm use case kiểm tra
import 'package:flutter_article/service_locator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_screen_event.dart';
part 'read_screen_state.dart';
part 'read_screen_bloc.freezed.dart';

class ReadScreenBloc extends Bloc<ReadScreenEvent, ReadScreenState> {
  ReadScreenBloc() : super(const ReadScreenState.initial()) {
    on<ReadScreenEvent>((event, emit) async {
      await event.map(
        openScreen: (value) => _onOpenScreen(value, emit),
        toggleMark: (value) => _toggleMark(value, emit),
      );
    });
  }

  Future<void> _onOpenScreen(
    _OpenScreen event,
    Emitter<ReadScreenState> emit,
  ) async {
    try {
      final bool isAlreadyMarked = await sl<IsBookmarkedUseCase>().call(
        event.idArticle,
      );
      emit(ReadScreenState.initial(isMarked: isAlreadyMarked));
    } catch (e) {
      emit(ReadScreenState.error(message: e.toString()));
    }
  }

  Future<void> _toggleMark(
    _ToggleMark event,
    Emitter<ReadScreenState> emit,
  ) async {
    await state.when(
      initial: (isMarked) async {
        final newMarkedStatus = !isMarked;

        try {
          if (newMarkedStatus == true) {
            await sl<AddMarkStorageUseCase>().call(event.articleID);
          } else {
            await sl<RemoveBookmarkUseCase>().call(event.articleID);
          }

          emit(ReadScreenState.initial(isMarked: newMarkedStatus));
        } catch (e) {
          emit(ReadScreenState.error(message: e.toString()));
        }
      },
      error: (message) async {
        // Không làm gì khi đang trong error state
      },
    );
  }
}
