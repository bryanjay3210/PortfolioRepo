import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/shared/main_container.dart';
import 'package:portfolio/shared/main_layout.dart';
import 'package:portfolio/utils/device.dart';

class ProjectDetailsScreen extends StatefulWidget {
  final String? detailsName;
  const ProjectDetailsScreen({super.key, this.detailsName});

  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> {
  int _currentPage = 0;
  final CarouselSliderController controller = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    String deviceType = DeviceUtils.getDeviceType(context);
    List<String> screenshotList = [];
    String description = "";
    if (widget.detailsName!.isNotEmpty) {
      switch (widget.detailsName) {
        case 'IPTV':
          screenshotList = [
            'assets/screenshot/iptv/mobile-dashboard-h.png',
            'assets/screenshot/iptv/mobile-dashboard-v.png',
            'assets/screenshot/iptv/program1.png',
            'assets/screenshot/iptv/program2.png',
            'assets/screenshot/iptv/program3.png',
            'assets/screenshot/iptv/livetv1.png',
            'assets/screenshot/iptv/livetv2.png',
            'assets/screenshot/iptv/dvr1.png',
            'assets/screenshot/iptv/dvr2.png',
            'assets/screenshot/iptv/dvr3.png',
          ];
          description =
              "IPTV (Internet Protocol Television) is a digital TV broadcasting technology that delivers live TV channels, video-on-demand, and multimedia content over the internet instead of traditional cable or satellite. It allows users to stream programs on smart TVs, smartphones, and computers with flexible viewing and interactive features. \n \n A key feature of modern IPTV systems is DVR (Digital Video, Recording) support, which lets users download or record specific programs and watch them later offline—offering full control over viewing time and convenience.";
          break;
        case 'Customer Portal':
          screenshotList = [
            'assets/screenshot/customer-portal/login.png',
            'assets/screenshot/customer-portal/dashboard.png',
            'assets/screenshot/customer-portal/invoices.png',
            'assets/screenshot/customer-portal/credit-card.png',
            'assets/screenshot/customer-portal/payment.png',
            'assets/screenshot/customer-portal/products.png',
            'assets/screenshot/customer-portal/transaction.png',
          ];
          description =
              "Customer Portal is a secure online platform that allows customers to manage their accounts, access services, and track transactions in one place. It provides self-service features such as viewing bills, making payments, updating personal information, submitting support requests, and monitoring service usage—enhancing convenience, transparency, and customer engagement.";
          break;
        case 'Field Tech Portal':
          screenshotList = [
            'assets/screenshot/field-tech-portal/login.png',
            'assets/screenshot/field-tech-portal/dashboard.png',
            'assets/screenshot/field-tech-portal/inventory-search.png',
            'assets/screenshot/field-tech-portal/schedule.png',
            'assets/screenshot/field-tech-portal/service-call.png',
            'assets/screenshot/field-tech-portal/settings.png',
            'assets/screenshot/field-tech-portal/warehouse.png',
          ];
          description =
              "Field Tech Portal is a dedicated platform designed for field technicians to efficiently manage service tasks and on-site operations. It provides real-time access to work orders, customer details, schedules, and service histories, enabling technicians to update job status, capture photos, and report issues directly from the field. This streamlines communication, improves productivity, and ensures faster, more accurate service delivery.";
          break;
        case 'Baba':
          screenshotList = [
            'assets/screenshot/baba/login.PNG',
            'assets/screenshot/baba/register.PNG',
            'assets/screenshot/baba/self-assessment.PNG',
            'assets/screenshot/baba/chapter-title.PNG',
            'assets/screenshot/baba/chapter-story-line.PNG',
            'assets/screenshot/baba/profile.PNG',
            'assets/screenshot/baba/story-progress.PNG',
            'assets/screenshot/baba/story-screen.PNG',
            'assets/screenshot/baba/vocabulary.PNG',
            'assets/screenshot/baba/quiz.PNG',
            'assets/screenshot/baba/score.PNG',
          ];
          description =
              "BABA is a mobile learning app designed to help users master both Spanish and English through interactive lessons and engaging activities. It offers vocabulary and grammar exercises, pronunciation guides, and real-life conversation examples. The app also includes a quiz section to test knowledge, track progress, and reinforce learning—making language study fun, effective, and accessible anytime, anywhere.";
          break;
        case 'Credit Tracker':
          screenshotList = [
            'assets/screenshot/credit-tracker/login.PNG',
            'assets/screenshot/credit-tracker/register.PNG',
            'assets/screenshot/credit-tracker/dashboard.PNG',
            'assets/screenshot/credit-tracker/credit-list-empty.PNG',
            'assets/screenshot/credit-tracker/credit-list.PNG',
            'assets/screenshot/credit-tracker/creditor-list.PNG',
            'assets/screenshot/credit-tracker/creditor-info.PNG',
            'assets/screenshot/credit-tracker/creditor-information.PNG',
            'assets/screenshot/credit-tracker/debit-list.PNG',
            'assets/screenshot/credit-tracker/transaction-history.PNG',
          ];
          description =
              "Credit Tracker is a local credit management tool that allows users to monitor their credit activities and payment records within their community or organization. It helps track credit limits, dues, and transaction history while providing reminders for upcoming payments. Designed for local businesses or cooperatives, it promotes responsible lending and borrowing by ensuring transparency, accountability, and easy access to credit information.";
          break;
        case 'POS':
          screenshotList = [
            'assets/screenshot/pos/login.PNG',
            'assets/screenshot/pos/dashboard.PNG',
            'assets/screenshot/pos/sold-dashboard.PNG',
            'assets/screenshot/pos/inventory.PNG',
            'assets/screenshot/pos/inventory-modal.PNG',
            'assets/screenshot/pos/order.PNG',
            'assets/screenshot/pos/order-listing.PNG',
            'assets/screenshot/pos/order-modal.PNG',
            'assets/screenshot/pos/sales-report.PNG',
          ];
          description =
              "POS with Inventory and Sales Report is an all-in-one point-of-sale system that streamlines business transactions while managing product inventory in real time. It allows users to record sales, track stock levels, and automatically update item quantities after each purchase. The system also generates detailed sales reports and analytics, helping business owners monitor performance, identify best-selling products, and make data-driven decisions to improve profitability and efficiency.";
          break;
        default:
      }
    }
    return mainLayout(
        context: context,
        showNavBar: false,
        screenWidth: screenWidth,
        childWidget: mainContainer(
            context: context,
            title: widget.detailsName!,
            deviceType: deviceType,
            hasClosedButton: true,
            childWidget: Column(
              children: [
                CarouselSlider.builder(
                  itemCount: screenshotList.length,
                  carouselController: controller,
                  options: CarouselOptions(
                      onPageChanged: (index, reason) => setState(() {
                            _currentPage = index;
                          }),
                      height: MediaQuery.of(context).size.height * .5,
                      autoPlay: true,
                      autoPlayAnimationDuration: 2000.ms,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true),
                  itemBuilder: (context, index, realIndex) {
                    return Image.asset(
                      screenshotList[index],
                      fit: BoxFit.contain,
                    );
                  },
                )
                    .animate(delay: 1000.ms)
                    .fadeIn(duration: 1000.ms)
                    .slideY(begin: 0.2, end: 0, duration: 1000.ms),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      screenshotList.length,
                      (index) {
                        bool isActive = index == _currentPage;
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: isActive ? 12 : 8,
                          height: isActive ? 12 : 8,
                          decoration: BoxDecoration(
                            color: isActive ? Colors.amber : Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        );
                      },
                    ),
                  ],
                )
                    .animate(delay: 2000.ms)
                    .fadeIn(duration: 1000.ms)
                    .slideY(begin: 0.2, end: 0, duration: 1000.ms),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    description,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.robotoSerif(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                )
                    .animate(delay: 2000.ms)
                    .fadeIn(duration: 1000.ms)
                    .slideY(begin: 0.2, end: 0, duration: 1000.ms)
              ],
            )));
  }
}
