import 'package:coin_stack/features/setup_account/domain/models/edit_personal_info_request.dart';
import 'package:coin_stack/features/setup_account/domain/repos/edit_acc_info_repo.dart';
import 'package:coin_stack/features/setup_account/presentation/blocs/personal_info_bloc/update_personal_info_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

const String upFullName = 'full_name';
const String upUsername = 'username';
const String upDob = 'dob';

@injectable
class PersonalInfoBloc extends Cubit<UpdatePersonalInfoState> {
  late final FormGroup form;
  final EditAccInfoRepo _repo;

  PersonalInfoBloc(this._repo) : super(UpdatePersonalInfoState.initial()) {
    form = fb.group({
      upFullName: FormControl<String>(validators: [Validators.required]),
      upUsername: FormControl<String>(validators: [Validators.required]),
      upDob: FormControl<DateTime>(validators: [Validators.required]),
    });
  }

  updatePersonalInfo() async {
    emit(UpdatePersonalInfoState.loading());

    final fullName = form.control(upFullName).value;
    final username = form.control(upUsername).value;
    final dob = form.control(upDob).value;

    final res = await _repo.updatePersonalInfo(
      EditPersonalRequest(dob: dob, fullName: fullName, username: username),
    );

    res.fold(
      (l) => emit(UpdatePersonalInfoState.failure(l)),
      (r) => emit(UpdatePersonalInfoState.success()),
    );
  }
}
