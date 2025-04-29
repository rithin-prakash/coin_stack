import 'package:coin_stack/core/api_config/remote_api.dart';
import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/create_account/domain/models/generate_otp_request.dart';
import 'package:coin_stack/features/create_account/domain/models/login_request.dart';
import 'package:coin_stack/features/create_account/domain/models/privacy_response.dart';
import 'package:coin_stack/features/create_account/domain/models/tnc_response.dart';
import 'package:coin_stack/features/create_account/domain/models/verify_otp_request.dart';
import 'package:coin_stack/features/create_account/domain/repos/sign_up_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignUpRepo)
class SignUpRepoImpl implements SignUpRepo {
  final RemoteApi remoteApi;

  SignUpRepoImpl(this.remoteApi);

  @override
  Future<Either<Failure, String?>> generateOtp(GenerateOtpRequest req) async {
    await Future.delayed(Duration(seconds: 3));
    return Right("123456");
  }

  @override
  Future<Either<Failure, Null>> verifyOtp(VerifyOtpRequest req) async {
    await Future.delayed(Duration(seconds: 3));
    return Right(null);
    // return Left(ServerFailure(message: 'otp not valid'));
  }

  @override
  Future<Either<Failure, Null>> login(LoginRequest req) async {
    await Future.delayed(Duration(seconds: 3));
    return Right(null);
    // return Left(ServerFailure(message: 'Incorrect password'));
  }

  @override
  Future<Either<Failure, TncResponse>> loadTnc() async {
    await Future.delayed(Duration(seconds: 3));
    return Right(
      TncResponse(
        tncVersion: '1.0.0',
        tncTitle: 'Terms and Condition',
        tncHtml:
            """
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terms and Conditions - Coinstack</title>
    <link rel="stylesheet" href="styles.css"> <!-- Optional: Link to external CSS for styling -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #FFFFFF;
        }

        .container {
            max-width: 900px;
            margin: 50px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        h2 {
            color: #333;
        }

        p {
            line-height: 1.6;
            color: #555;
        }

        ul {
            margin-left: 20px;
        }

        .btn-container {
            text-align: center;
            margin-top: 30px;
        }

        .accept-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-right: 10px;
        }

        .decline-btn {
            background-color: #f44336;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .decline-btn:hover,
        .accept-btn:hover {
            opacity: 0.8;
        }

        footer {
            text-align: center;
            margin-top: 40px;
            font-size: 12px;
            color: #777;
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>Terms and Conditions</h1>
        <p>Welcome to <strong>Coinstack</strong>, a financial application designed to help you transfer money internationally and track your transactions securely. Before you proceed with creating an account, please read these Terms and Conditions carefully. By accessing or using our services, you agree to be bound by these Terms and Conditions.</p>

        <h2>1. General Terms</h2>
        <p>These Terms and Conditions govern your use of Coinstack and its services. By using Coinstack, you represent that you are at least 18 years of age and have the legal authority to enter into this agreement. If you do not agree to these terms, you must not use our platform.</p>

        <h2>2. Account Registration</h2>
        <p>To access our services, you must create an account by providing accurate, complete, and up-to-date information. You are responsible for keeping your account credentials confidential and agreeing to notify us immediately if your account is compromised.</p>

        <h2>3. Transfer of Funds</h2>
        <p>Coinstack allows you to transfer funds internationally. You agree to provide accurate and correct information for each transaction. You must comply with all applicable laws and regulations when using Coinstack's transfer services.</p>

        <h2>4. Fees and Charges</h2>
        <p>Coinstack may charge fees for certain transactions, including international transfers. These fees will be clearly disclosed before any transaction is processed, and you agree to pay all applicable fees associated with the services.</p>

        <h2>5. Transaction Tracking</h2>
        <p>By using Coinstack, you agree to allow us to track and record your transactions for the purposes of customer support, fraud prevention, and improving our services. We take all reasonable measures to protect your data.</p>

        <h2>6. Security</h2>
        <p>Coinstack uses industry-standard encryption and security measures to protect your financial and personal data. However, you are responsible for ensuring that your account credentials remain secure and agree to immediately notify us of any unauthorized access to your account.</p>

        <h2>7. Termination of Account</h2>
        <p>Coinstack reserves the right to suspend or terminate your account if we suspect any fraudulent activity or violation of these Terms and Conditions. We may also terminate or suspend your account if we are required to do so by law.</p>

        <h2>8. Limitation of Liability</h2>
        <p>Coinstack is not liable for any indirect, incidental, or consequential damages arising out of your use of the platform, except as required by law. In any case, our liability shall not exceed the total value of the transaction in question.</p>

        <h2>9. Amendments</h2>
        <p>We may update or modify these Terms and Conditions at any time. You will be notified of any changes, and your continued use of Coinstack after such changes will constitute your acceptance of the updated terms.</p>

        <h2>10. Governing Law</h2>
        <p>These Terms and Conditions will be governed by and construed in accordance with the laws of [Your Country]. Any disputes will be resolved in the courts located in [Your City/Region].</p>

        <div class="btn-container">
            <button class="accept-btn" onclick="acceptTerms()">Accept Terms</button>
            <button class="decline-btn" onclick="declineTerms()">Decline Terms</button>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Coinstack. All rights reserved.</p>
    </footer>

    <script>
        function acceptTerms() {
            // Redirect to the account creation page or the home page
            window.location.href = 'account-creation.html'; // Modify as necessary
        }

        function declineTerms() {
            // Redirect to a different page, such as the homepage
            window.location.href = 'index.html'; // Modify as necessary
        }
    </script>

</body>

</html>
""".trim(),
      ),
    );
  }

  @override
  Future<Either<Failure, PrivacyResponse>> loadPrivacy() async {
    await Future.delayed(Duration(seconds: 3));
    return Right(
      PrivacyResponse(
        privacyVersion: '0.1.5',
        privacyTitle: 'Privacy Policy',
        privacyHtml:
            """
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Privacy Policy - Coinstack</title>
    <link rel="stylesheet" href="styles.css"> <!-- Optional: Link to external CSS for styling -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #ffffff;
        }

        .container {
            max-width: 900px;
            margin: 50px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        h2 {
            color: #333;
        }

        p {
            line-height: 1.6;
            color: #555;
        }

        ul {
            margin-left: 20px;
        }

        footer {
            text-align: center;
            margin-top: 40px;
            font-size: 12px;
            color: #777;
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>Privacy Policy</h1>
        <p>At <strong>Coinstack</strong>, we value and respect your privacy. This Privacy Policy explains how we collect, use, protect, and share your personal and financial information when you use our services. By accessing or using Coinstack, you agree to the practices outlined in this policy.</p>

        <h2>1. Information We Collect</h2>
        <p>We collect various types of information when you use Coinstack, including:</p>
        <ul>
            <li><strong>Personal Information:</strong> Information you provide to us directly, such as your name, email address, phone number, date of birth, and address.</li>
            <li><strong>Financial Information:</strong> Information about your financial transactions, including your payment methods, transfer details, and transaction history.</li>
            <li><strong>Usage Data:</strong> Information about how you use Coinstack, including device information, IP addresses, browser types, and access times.</li>
            <li><strong>Location Data:</strong> If enabled, we may collect location data to provide location-specific services.</li>
        </ul>

        <h2>2. How We Use Your Information</h2>
        <p>We use the information we collect to:</p>
        <ul>
            <li>Provide you with access to our services, including facilitating money transfers and tracking transactions.</li>
            <li>Verify your identity and prevent fraud.</li>
            <li>Improve our services and customize your experience on Coinstack.</li>
            <li>Communicate with you about your account, transactions, and important updates.</li>
            <li>Comply with legal obligations and enforce our terms and conditions.</li>
        </ul>

        <h2>3. Sharing Your Information</h2>
        <p>We do not sell or rent your personal information to third parties. However, we may share your information in the following cases:</p>
        <ul>
            <li><strong>With Service Providers:</strong> We may share your information with trusted third-party service providers who help us operate the platform, process payments, or improve our services.</li>
            <li><strong>For Legal Reasons:</strong> We may disclose your information to comply with applicable laws, regulations, legal processes, or governmental requests.</li>
            <li><strong>For Fraud Prevention:</strong> We may share your information with authorities to investigate and prevent fraudulent activities.</li>
        </ul>

        <h2>4. How We Protect Your Information</h2>
        <p>We use industry-standard encryption and security measures to protect your personal and financial information from unauthorized access or disclosure. However, no method of transmission over the internet or method of electronic storage is 100% secure, so while we strive to protect your data, we cannot guarantee absolute security.</p>

        <h2>5. Your Rights and Choices</h2>
        <p>You have the following rights with respect to your personal information:</p>
        <ul>
            <li><strong>Access:</strong> You can request access to the personal information we hold about you.</li>
            <li><strong>Correction:</strong> You can request corrections to any inaccurate or incomplete information we have about you.</li>
            <li><strong>Deletion:</strong> You can request the deletion of your account and personal information, subject to certain exceptions (e.g., for legal reasons).</li>
            <li><strong>Opt-Out:</strong> You can opt-out of marketing communications from us at any time by following the unsubscribe instructions in our emails or by contacting us directly.</li>
        </ul>

        <h2>6. Cookies and Tracking Technologies</h2>
        <p>We use cookies and similar tracking technologies to enhance your experience on Coinstack. Cookies are small files stored on your device that help us recognize you and remember your preferences. You can manage your cookie preferences through your browser settings.</p>

        <h2>7. Data Retention</h2>
        <p>We retain your personal and financial information for as long as necessary to fulfill the purposes outlined in this Privacy Policy or as required by law. If you close your account, we may retain certain data for a period to comply with legal obligations or resolve disputes.</p>

        <h2>8. Changes to This Privacy Policy</h2>
        <p>We may update or modify this Privacy Policy at any time. Any changes will be posted on this page, and the updated policy will be effective as soon as it is posted. We encourage you to review this policy periodically to stay informed about how we protect your information.</p>

        <h2>9. Contact Us</h2>
        <p>If you have any questions or concerns about this Privacy Policy, please contact us at:</p>
        <ul>
            <li><strong>Email:</strong> support@coinstack.com</li>
            <li><strong>Phone:</strong> +1-800-123-4567</li>
            <li><strong>Address:</strong> 1234 Coinstack Lane, Suite 100, City, Country</li>
        </ul>
    </div>

    <footer>
        <p>&copy; 2025 Coinstack. All rights reserved.</p>
    </footer>

</body>

</html>
""".trim(),
      ),
    );
  }
}
