import 'package:rick_and_morty_app/shared/domain/entities/pagination_info_entity.dart';
import 'package:rick_and_morty_app/shared/domain/entities/problem_output_entity.dart';
import 'package:rm_api_services/rm_api_services.dart';

extension ProblemOutputExt on ProblemOutput {
  ProblemOutputEntity toEntity() {
    return ProblemOutputEntity(error: error ?? '');
  }
}

extension PaginationInfoOutputExt on PaginationInfoOutput {
  PaginationInfoEntity toEntity() {
    return PaginationInfoEntity(
      count: count ?? 0,
      pages: pages ?? 0,
      next: next ?? '',
      prev: prev ?? '',
    );
  }
}
