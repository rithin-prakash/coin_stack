import 'package:coin_stack/features/setup_account/domain/models/edit_email_request.dart';
import 'package:coin_stack/features/setup_account/domain/repos/edit_acc_info_repo.dart';
import 'package:coin_stack/features/setup_account/presentation/blocs/email_bloc/update_email_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

const upEmail = 'email';

@injectable
class EmailBloc extends Cubit<UpdateEmailState> {
  final EditAccInfoRepo _repo;
  late final FormGroup form;

  EmailBloc(this._repo) : super(UpdateEmailState.initial()) {
    form = fb.group({
      upEmail: FormControl<String>(
        validators: [Validators.required, Validators.email],
      ),
    });
  }

  updateEmail() async {
    emit(UpdateEmailState.loading());
    final email = form.control(upEmail).value;
    final res = await _repo.updateEmail(EditEmailRequest(email: email));

    res.fold(
      (l) => emit(UpdateEmailState.failure(l)),
      (r) => emit(UpdateEmailState.success()),
    );
  }
}
