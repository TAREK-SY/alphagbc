import 'package:alphagbc/core/constant/color.dart';
import 'package:alphagbc/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popup_card/popup_card.dart';

class Alphabar extends StatefulWidget {
  const Alphabar({super.key, required this.title});
  final String title;

  @override
  State<Alphabar> createState() => AlphabarState();
}

class AlphabarState extends State<Alphabar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: 100, // يمكنك جعل هذا ديناميكيًا أيضًا إذا لزم الأمر
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // توزيع الأزرار بالتساوي
            children: [
              Image.asset(
                "assets/images/Logo.png",
                fit: BoxFit.fill,
              ),
              TextButton(
                  onPressed: () {
                    Get.offNamed(AppRoute.homescreen);
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: AppColor.green,
                      fontWeight: widget.title == 'Home'
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  )),
              TextButton(
                  onPressed: () {
                    Get.offNamed(AppRoute.aboutus);
                  },
                  child: Text(
                    "About Us",
                    style: TextStyle(
                      color: AppColor.green,
                      fontWeight: widget.title == 'About Us'
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  )),
              TextButton(
                  onPressed: () {
                    Get.offNamed(AppRoute.services);
                  },
                  child: Text(
                    "Services",
                    style: TextStyle(
                      color: AppColor.green,
                      fontWeight: widget.title == 'Services'
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  )),
              TextButton(
                  onPressed: () {
                    Get.offNamed(AppRoute.contactus);
                  },
                  child: Text(
                    "Contact Us",
                    style: TextStyle(
                      color: AppColor.green,
                      fontWeight: widget.title == 'Contact Us'
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  )),
              PopupItemLauncher(
                tag: 'contact_us',
                popUp: PopUpItem(
                  padding: const EdgeInsets.all(8),
                  color: AppColor.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                  elevation: 2,
                  tag:
                      'contact_us', // يجب أن يتطابق مع tag في PopupItemLauncher
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: const Icon(Icons.call),
                        title: const Text('Call: 4566788999'),
                        onTap: () {
                          // تنفيذ وظيفة الاتصال
                          Navigator.of(context).pop(); // إغلاق القائمة المنبثقة
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.email),
                        title: const Text('Email: zccvvb@gmail.com'),
                        onTap: () {
                          // تنفيذ وظيفة إرسال البريد الإلكتروني
                          Navigator.of(context).pop(); // إغلاق القائمة المنبثقة
                        },
                      ),
                      // يمكنك إضافة المزيد من العناصر هنا
                    ],
                  ),
                ),
                child: Material(
                  color: Colors.white,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                  child: const Icon(
                    color: AppColor.green,
                    Icons.contact_mail,
                    size: 36,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
