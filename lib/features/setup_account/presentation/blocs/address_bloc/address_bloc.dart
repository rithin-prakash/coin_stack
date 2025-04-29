import 'package:coin_stack/features/setup_account/domain/models/edit_address_request.dart';
import 'package:coin_stack/features/setup_account/domain/repos/edit_acc_info_repo.dart';
import 'package:coin_stack/features/setup_account/presentation/blocs/address_bloc/update_address_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

const upAddress = 'address_line';
const upCity = 'city';
const upPin = 'pin';

@injectable
class AddressBloc extends Cubit<UpdateAddressState> {
  late final FormGroup form;
  final EditAccInfoRepo _repo;

  AddressBloc(this._repo) : super(UpdateAddressState.initial()) {
    form = fb.group({
      upAddress: FormControl<String>(validators: [Validators.required]),
      upCity: FormControl<String>(validators: [Validators.required]),
      upPin: FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(6),
          Validators.maxLength(6),
        ],
      ),
    });
  }

  updateAddress() async {
    emit(UpdateAddressState.loading());

    final address = form.control(upAddress).value;
    final city = form.control(upCity).value;
    final pin = form.control(upPin).value;

    final res = await _repo.updateAddress(
      EditAddressRequest(addressLine1: address, city: city, pin: pin),
    );

    res.fold(
      (l) => emit(UpdateAddressState.failure(l)),
      (r) => emit(UpdateAddressState.success()),
    );
  }
}
