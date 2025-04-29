import 'package:coin_stack/features/create_account/domain/models/generate_otp_request.dart';
import 'package:coin_stack/features/create_account/domain/models/verify_otp_request.dart';
import 'package:coin_stack/features/create_account/domain/repos/sign_up_repo.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/sign_up_bloc/sign_up_event.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/sign_up_bloc/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpRepo _signUpRepo;

  SignUpBloc(this._signUpRepo) : super(SignUpInitial()) {
    on<SignUpGenerateOtp>(_generateOtp);
    on<SignUpVerifyOtp>(_verifyOtp);
  }

  _generateOtp(SignUpGenerateOtp event, emit) async {
    emit(SignUpGenerateOtpLoading());

    var param = GenerateOtpRequest(
      phone: event.phone,
      phoneCode: event.phoneCode,
    );

    final res = await _signUpRepo.generateOtp(param);

    res.fold(
      (l) => emit(SignUpGenerateOtpFailure(l)),
      (r) => emit(SignUpGenerateOtpLoaded(r)),
    );
  }

  _verifyOtp(SignUpVerifyOtp event, emit) async {
    emit(SignUpVerifyOtpLoading());

    final param = VerifyOtpRequest(
      otp: event.otp,
      phoneCode: event.phoneCode,
      phone: event.phone,
    );

    final res = await _signUpRepo.verifyOtp(param);

    res.fold(
      (l) => emit(SignUpVerifyOtpFailure(l)),
      (r) => emit(SignUpVerifyOtpLoaded()),
    );
  }
}
