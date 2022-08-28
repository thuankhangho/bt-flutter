import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Chính sách bảo mật'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var privacy = const Text("TFlat PRIVACY POLICY
APPLICATION PRIVACY STATEMENT
This privacy statement ("Privacy Statement") applies to the treatment of personally identifiable information submitted by, or otherwise obtained from, you in connection with the associated application ("Application"). The Application is provided by TFlat (and may be provided by TFlat on behalf of a TFlat licensor or partner ("Application Partner"). By using or otherwise accessing the Application, you acknowledge that you accept the practices and policies outlined in this Privacy Statement.
WHAT PERSONAL INFORMATION DOES TFlat COLLECT?
We collect the following types of information from our users:

Personal Information You Provide to Us: We may receive and store any information you submit to the Application. For example, many of our services require you to sign up for a Facebook Account or Google Account. When you do, we'll ask for personal information. The types of personal information collected may include your full name, email address, gender, IP address, browser information, username, demographic information, and any other information necessary for us to provide the Application services.

Personal Information Collected Automatically: We receive and store certain types of usage related information whenever you interact with Application. For example, TFlat may automatically receive and record information regarding your computer's IP address, browser information and URLs accessed. Such information may be shared in aggregate (non-personally identifiable) form with our partners.
HOW TO DELETE USER DATA
Users go to Account page in TFlat application (Android or iOS) -> Delete account (The last item)
HOW DOES TFlat USE THE INFORMATION IT COLLECTS?
TFlat uses the information described in this Privacy Statement (i) internally, to analyze, develop and improve its products and services, and (ii) as set forth below in the "Will TFlat Share any of the personal information it receives" section below.
APPLICATION PARTNER TREATMENT OF PERSONAL INFORMATION.
TFlat may provide personal information to the applicable Application Partner. The Application Partner's use of your personal information is subject to the Application Partner's separate privacy policy - and not this Privacy Statement. The Application Partner's privacy policy is linked to from within the Partner's Facebook application.
WILL TFlat SHARE ANY OF THE PERSONAL INFORMATION IT RECEIVES?
Personal information about our users is an integral part of our business. We neither rent nor sell your personal information to anyone (with the exception of sharing your information with an applicable Application Partner - see the "Application Partner Treatment" section above). We share your personal information only as described below.

Application Partners: We will share your personal information with an applicable Application Partner (see the "Application Partner Treatment" section above).

Agents: We employ other companies and people to perform tasks on our behalf and need to share your information with them to provide products or services to you. Unless we tell you differently, TFlat's agents do not have any right to use personal information we share with them beyond what is necessary to assist us. You hereby consent to our sharing of personal information for the above purposes.

Business Transfers: In some cases, we may choose to buy or sell assets. In these types of transactions, customer information is typically one of the business assets that are transferred. Moreover, if TFlat, or substantially all of its assets were acquired, or in the unlikely event that TFlat goes out of business or enters bankruptcy, user information would be one of the assets that is transferred or acquired by a third party. You acknowledge that such transfers may occur, and that any acquirer of TFlat may continue to use your personal information as set forth in this policy.

Protection of TFlat and Others: We may release personal information when we believe in good faith that release is necessary to comply with the law; enforce or apply our conditions of use and other agreements; or protect the rights, property, or safety of TFlat, our employees, our users, or others. This includes exchanging information with other companies and organizations for fraud protection and credit risk reduction.

With Your Consent: Except as set forth above, you will be notified when your personal information may be shared with third parties, and will be able to prevent the sharing of this information.
CONDITIONS OF USE.
If you decide to use or otherwise access the Application, your use/access and any possible dispute over privacy is subject to this Privacy Statement and our Terms of Use, including limitations on damages, arbitration of disputes, and application of California state law.
THIRD PARTY APPLICATIONS
The Application may permit you to link to other applications. Such third party applications/websites are not under TFlat's control, and such links do not constitute an endorsement by TFlat of those other applications/websites or the services offered through them. The privacy and security practices of such third party application/websites linked to the Application are not covered by this Privacy Statement, and TFlat is not responsible for the privacy or security practices or the content of such websites.
WHAT PERSONAL INFORMATION CAN I ACCESS?
TFlat allows you to access the following information about you for the purpose of viewing, and in certain situations, updating that information. This list may change in the event the Application changes.

- User profile information
- User email address, if applicable
- Application specific data
CAN CHILDREN USE THE APPLICATION?
Our applications and the services available through TFlat are not intended for children under the age of 3. TFlat does not knowingly or specifically collect information about children under the age of 3 and believes that children of any age should get their parents' consent before giving out any personal information. We encourage you to participate in your child's applications experience.
CHANGES TO THIS PRIVACY STATEMENT.
TFlat may amend this Privacy Statement from time to time. Use of information we collect now is subject to the Privacy Statement in effect at the time such information is used. If we make changes in the way we use personal information, we will notify you by posting an announcement on our Site or sending you an email. Users are bound by any changes to the Privacy Statement when he or she uses or otherwise accesses the Application after such changes have been first posted.
QUESTIONS OR CONCERNS.
If you have any questions or concerns about our Privacy Policy or data processing, please contact us at contact.tflat@gmail.com. We will make every effort to resolve your concerns.
Effective Date: Nov 07, 2021.")
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text(widget.title),
        elevation: 0,
      ),
      body: Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    // height: 500,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.5,
                      ),
                      // borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child:
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(
                                    softWrap: true,
                                    ""
                                    ),
                                ],
                              ),
                            )))
              ],
            ),
          )),
    );
  }
}
