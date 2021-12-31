import 'dart:ui';

import 'package:flutter/material.dart';

class TejwalAdvices extends StatefulWidget {
  @override
  _TejwalAdvicesState createState() => _TejwalAdvicesState();
}

class _TejwalAdvicesState extends State<TejwalAdvices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 4,
        title: Text(
          'التجوال',
          style: TextStyle(
              color: Colors.black87,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: MediaQuery.of(context).size.width / 18),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 6,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    'نصائح اثناء التجوال',
                    style: TextStyle(
                        color: Colors.black87,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: MediaQuery.of(context).size.width / 18),
                  ),
                  Center(
                    child: Text('اعرف ازاي تستخدم خدمة التجوال بشكل صحيح',
                        style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: MediaQuery.of(context).size.width / 22)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height - 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      children: [
                        ExpansionTile(
                          title: Text(
                            'قبل السفر',
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize:
                                    MediaQuery.of(context).size.width / 22),
                          ),
                          children: [
                            Text(
                              'راجع موقع ڤودافون الإلكتروني وأعرف خدمات التجوال المتاحة وأسعار التجوال فى الدولة التى سوف تسافر اليها و لأفضل الاسعار اشترك في باقة من باقات التجوال من خلال #202*. ? كل عملاء الفواتير المفتوحة متاح لهم تشغيل التجوال ببلاش بعد التأكد من سداد 4 فواتير أو دفع 750 جنيه تأمين. اذا كان لديك خط ڤودافون على نظام الفاتورة المفتوحة كلم 888 لتشغيل التجوال. أو يمكنك تشغل خدمة روم كنترول وتستخدم تجوال حتى 250 جنيه على الفاتورة من خلال #3*202*. ? اذا كان لديك خط ڤودافون بزنس يمكنك الاتصال بالمفوض لتشغيل التجوال. ? اذا كان لديك خط مدفوع مقدماً أو كنترول أو إيزى، تأكد أن لديك رصيد كاف للاستخدام أثناء التجوال. ? اذا كنت ستقوم بالشحن ع الطاير باستخدام بطاقة ائتمانك أثناء التجوال، تأكد أن لديك قائمة خدمات ڤودافون على تليفونك ? للتأكد من تفعيل خدمة التجوال أطلب #236* كل عملاء الفواتير المفتوحة الجدد الذين لم يقوموا بسداد 4 فواتير متاح لهم تشغيل التجوال/الدولي حتى 250 جنيه على الفاتورة أو تسجيل بطاقة ائتمانك في إحدى فروع ڤودافون لخصم المستحقات مباشرةً. اطلب#3*202*',
                              maxLines: 8,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 22),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                          indent: 10,
                          endIndent: 10,
                          color: Colors.grey,
                        ),
                        ExpansionTile(
                          title: Text(
                            'عند الوصول',
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize:
                                    MediaQuery.of(context).size.width / 22),
                          ),
                          children: [
                            Text(
                              'سنرسل لك رسالة لإبلاغك بأسعار التجوال على الشبكة التى تستخدمها، كما تفيد الرسالة إذا ما كانت هناك شبكة مفضلة فى الدولة التي تزورها لأفضل الأسعار والخدمات، اقرا هذه الرسالة جيداً واحفظها على تليفونك كمرجع.',
                              maxLines: 5,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 22),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                          indent: 10,
                          endIndent: 10,
                          color: Colors.grey,
                        ),
                        ExpansionTile(
                          title: Text(
                            'ازاي توفر اثناء التجوال',
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize:
                                    MediaQuery.of(context).size.width / 22),
                          ),
                          children: [
                            Text(
                              'اشترك في باقة من باقات التجوال التي تعمل في البلد اللي مسافر ليها. للاشتراك أطلب #202* كلمني شكراً لو رصيدك خلص؟ اطلب # رقم الموبايل *505* علشان تبعت كلمني شكراً لأي رقم ڤودافون. يمكنك إرسال هذه الرسالة 5 مرات فى اليوم مجاناً. أو اطلب # رقم الموبايل *506* علشان تبعت رسائل كلمني شكراً إضافية لأي موبايل في مصر. لمزيد من المعلومات اطلب #506* واحصل على دليل الخدمة بـ 20 قرش فقط.، علما بأن الخدمة متاحة فقط مع بعض الشبكات ? اغلق التحديثات التلقائية بعض التليفونات والكمبيوترات لديها برامج تقوم بتحميل التحديثات والنسخ الجديدة فور دخولها على الإنترنت، قم باغلاق التحديثات التلقائية قبل أن تشغل خدمة التجوال حيث أنها قد تستهلك حجم كبير من البيانات.',
                              maxLines: 10,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 22),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                          indent: 10,
                          endIndent: 10,
                          color: Colors.grey,
                        ),
                        ExpansionTile(
                          title: Text(
                            'ازاي تستخدم تليفونك اثناء التجوال',
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize:
                                    MediaQuery.of(context).size.width / 22),
                          ),
                          children: [
                            Text(
                              'اتصل بـ 201001888888+ مجانا إذا كان نظامك فودافون الخط، أما لو كان نظامك الخط المدفوع مقدماً أو كنترول أو إيزى، سوف تتم محاسبة اتصالك بخدمة العملاء كأي مكالمة عادية لمصر. فى بعض الدول، يمكنك الاتصال بخدمة عملاء فودافون مصر مجاناً من أي فرع من فروع فودافون فى الدولة التى تقوم بزيارتها. الاستفسار عن الرصيد اطلب #60* بـ19 قرش هذه الخدمة متاحة فقط مع بعض الشبكات.',
                              maxLines: 12,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 22),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
