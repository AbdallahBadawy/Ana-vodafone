import 'package:flutter/material.dart';

class KeepCallsMainScreen extends StatefulWidget {
  @override
  _KeepCallsMainScreenState createState() => _KeepCallsMainScreenState();
}

class _KeepCallsMainScreenState extends State<KeepCallsMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text('خدمات المكالمات'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              'الاحتفاظ بالمكالمات',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              'عملينا العزيز هل تريد الاحتفاظ بمكالماتك عنما يكون \n تليفونك مغلق او غير متاح؟او ربما تريد ان تبقي هاتفك \n مفتوحا ف وضع منع الازعاج او من حاول الاتصال بك',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 23,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'مع خدمة الاحتفاظ بالمكالمات سيتم حفظ كل مكالماتك  \n التس لم تصلك وستتلقي رسالة نصية تخبرك بمحاولة  \n الاتصال',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 23,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[600],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'تفعيل الخدمة ب 5 جنية شهريا',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('تاكيد الاشتراك'),
                      content: SingleChildScrollView(
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: ListBody(
                            children: <Widget>[
                              Text(
                                'هل تريد الاشتراك ف خدمة الاحتفاظ بالمكالمات؟',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
