import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'politics_state.dart';

class PoliticsCubit extends Cubit<PoliticsState> {
  PoliticsCubit() : super(PoliticsInitial());
}
