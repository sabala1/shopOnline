import 'package:flutter/material.dart';
import 'package:shoponline/widgets/account/account_buttom.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              AccountButton(
                text: 'สินค้าของคุณ',
                onTap: () {},
              ),
              AccountButton(
                text: 'ร้านค้า',
                onTap: () {},
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              AccountButton(
                text: 'ออกจากระบบ',
                onTap: () {},
              ),
              AccountButton(
                text: 'รายการของคุณ',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
