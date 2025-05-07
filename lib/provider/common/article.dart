import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/entity/common/question_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArticleState {
  QuestionEntity? tremsData;
  QuestionEntity? privacyData;
  // List<FormatType> formatPayList;
  ArticleState({this.tremsData, this.privacyData});

  ArticleState.initial();

  ArticleState copyWith({
    QuestionEntity? tremsData,
    QuestionEntity? privacyData,
  }) {
    return ArticleState(
      tremsData: tremsData ?? this.tremsData,
      privacyData: privacyData ?? this.privacyData,
    );
  }
}

final articleProvider =
    StateNotifierProvider.autoDispose<ArticleViewModel, ArticleState>((ref) {
  return ArticleViewModel();
});

class ArticleViewModel extends StateNotifier<ArticleState> {
  ArticleViewModel() : super(ArticleState.initial());

  getProtocol() async {}
}
