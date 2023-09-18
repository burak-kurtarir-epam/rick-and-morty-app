import 'package:rick_and_morty_app/shared/domain/entities/problem_output_entity.dart';
import 'package:rm_api_services/rm_api_services.dart';

extension ProblemOutputExt on ProblemOutput {
  ProblemOutputEntity toEntity() {
    return ProblemOutputEntity(error: error ?? '');
  }
}
