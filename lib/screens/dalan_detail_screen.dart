import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/dalan_detail.dart';

class DalanDetailScreen extends StatelessWidget {
  final int index;
  const DalanDetailScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("အောင်အောင်"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: const DalanDetail(
            dalanImage: "assets/gor.jpeg",
            dalanAge: "၂၃",
            dalanAddress: "နေပြည်တော်",
            dalanDescription:
                "အရက်ကြိုက် ဖဲရိုက် ရပ်ကွက်ထဲ ပတ်မူး ဆန်ကုန်မြေလေး နေရာအလွန်ရချင် ဘာညာ ဘာညာ အရက်ကြိုက် ဖဲရိုက် ရပ်ကွက်ထဲ ပတ်မူး ဆန်ကုန်မြေလေး နေရာအလွန်ရချင် ဘာညာ ဘာညာ အရက်ကြိုက် ဖဲရိုက် ရပ်ကွက်ထဲ ပတ်မူး ဆန်ကုန်မြေလေး နေရာအလွန်ရချင် ဘာညာ ဘာညာ အရက်ကြိုက် ဖဲရိုက် ရပ်ကွက်ထဲ ပတ်မူး ဆန်ကုန်မြေလေး နေရာအလွန်ရချင် ဘာညာ ဘာညာ အရက်ကြိုက် ဖဲရိုက် ရပ်ကွက်ထဲ ပတ်မူး ဆန်ကုန်မြေလေး နေရာအလွန်ရချင် ဘာညာ ဘာညာ အရက်ကြိုက် ဖဲရိုက် ရပ်ကွက်ထဲ ပတ်မူး ဆန်ကုန်မြေလေး နေရာအလွန်ရချင် ဘာညာ ဘာညာ အရက်ကြိုက် ဖဲရိုက် ရပ်ကွက်ထဲ ပတ်မူး ဆန်ကုန်မြေလေး နေရာအလွန်ရချင် ဘာညာ ဘာညာ အရက်ကြိုက် ဖဲရိုက် ရပ်ကွက်ထဲ ပတ်မူး ဆန်ကုန်မြေလေး နေရာအလွန်ရချင် ဘာညာ ဘာညာ "),
      ),
    );
  }
}
