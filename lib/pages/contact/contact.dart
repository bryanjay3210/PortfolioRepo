import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:portfolio/model/contact.dart';
import 'package:portfolio/shared/main_container.dart';
import 'package:portfolio/shared/main_layout.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/device.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    String deviceType = DeviceUtils.getDeviceType(context);
    double screenWidth = MediaQuery.of(context).size.width;
    var contacts = [
      Contact(
          title: 'Email',
          subtitle: 'bryanjay.3210@gmail.com',
          icon: const FaIcon(FontAwesomeIcons.envelope)),
      Contact(
          title: 'Phone',
          subtitle: '+63 909 732 6446',
          icon: const FaIcon(FontAwesomeIcons.phone)),
      Contact(
          title: 'Location',
          subtitle:
              'Delos Reyes Compound, Prk. Masunurin, Brgy. San Isidro General Santos City, 9500, Philippines',
          icon: const FaIcon(FontAwesomeIcons.locationDot)),
      Contact(
          title: 'Github',
          subtitle: 'https://github.com/bryanjay3210',
          icon: const FaIcon(FontAwesomeIcons.github)),
      Contact(
          title: 'LinkedIn',
          subtitle:
              'https://www.linkedin.com/public-profile/settings?trk=d_flagship3_profile_self_view_public_profile',
          icon: const FaIcon(FontAwesomeIcons.linkedin)),
      Contact(
          title: 'Whatsapp',
          subtitle: '+63 909 732 6446',
          icon: const FaIcon(FontAwesomeIcons.whatsapp)),
    ];
    return Scaffold(
        backgroundColor: kPrimaryDark,
        body: mainLayout(
            screenWidth,
            mainContainer(
              deviceType: deviceType,
              context: context,
              title: "My Contacts",
              childWidget: SizedBox(
                height: 600,
                width: 500,
                child: Center(
                  child: ListView(
                    children: [
                      ...contacts.map((contact) => ListTile(
                            leading: FaIcon(contact.icon.icon,
                                color: Colors.amber, size: 25),
                            title: Text(
                              contact.title,
                              style: GoogleFonts.robotoSerif(
                                  color: Colors.white, fontSize: 20),
                            ),
                            subtitle: SelectableText(
                              contact.subtitle,
                              style: GoogleFonts.robotoSerif(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            ),
                            trailing: contact.title == "Location"
                                ? const SizedBox()
                                : IconButton(
                                    onPressed: () {
                                      Clipboard.setData(ClipboardData(
                                          text: contact.subtitle));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text('Copied to clipboard'),
                                        ),
                                      );
                                    },
                                    icon: const FaIcon(FontAwesomeIcons.copy,
                                        color: Colors.white, size: 20),
                                  ),
                          )
                              .animate()
                              .fadeIn(
                                duration: 1000.ms,
                                delay: 100.ms * contacts.indexOf(contact),
                              )
                              .slideY(begin: 0.2, end: 0, duration: 1000.ms)),
                    ],
                  ),
                ),
              ),
            )));
  }
}
