import 'package:flutter/material.dart';
import 'package:soil_nutrient_detection/data/dummy.dart';
import 'package:soil_nutrient_detection/shared/theme.dart';

class IotPage extends StatefulWidget {
  const IotPage({super.key});

  @override
  State<IotPage> createState() => _IotPageState();
}

class _IotPageState extends State<IotPage> {
  var iots = listIot;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    color: greenColor,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    color: whiteColor,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 55),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    topProfile(),
                    SizedBox(height: 35),
                    headerText(),
                    sawahContent(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget topProfile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor,
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi Jenifer',
                    style: whiteTS.copyWith(fontSize: 15, fontWeight: bold),
                  ),
                  Text(
                    'Admin',
                    style: whiteTS.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Icon(
          Icons.notifications_none_rounded,
          color: whiteColor,
        ),
      ],
    );
  }

  Widget headerText() {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'IoT Terdaftar',
          style: whiteTS.copyWith(fontSize: 15, fontWeight: bold),
        ),
        Text(
          'Status keaktifan IoT secara real time',
          style: whiteTS.copyWith(
            fontSize: 11,
          ),
        ),
      ],
    );
  }

  Widget sawahContent() {
    return Container(
      height: MediaQuery.of(context).size.height - 250,
      child: iotList(),
    );
  }

  Widget iotList() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      shrinkWrap: true,
      itemCount: iots.length,
      itemBuilder: (context, index) {
        return iotCard(
            iots[index]['name'], iots[index]['count'], iots[index]['active']);
      },
    );
  }

  Widget iotCard(name, count, active) {
    return Container(
      width: double.infinity / 2,
      height: 147,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: whiteColor,
        border: Border.all(width: 1, color: greyColor),
        boxShadow: [
          BoxShadow(
            color: blackTransparentColor,
            offset: Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  name,
                  style: blackTS.copyWith(fontSize: 13, fontWeight: bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '$count barang',
                  style: blackTS.copyWith(fontSize: 11),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 22,
            color: active == '0' ? redTransparentColor : greenTransparentColor,
            child: Center(
              child: Text(
                // active,
                active == '0' ? 'Tidak Aktif' : 'Aktif',
                style: active == '0'
                    ? redTS.copyWith(fontSize: 12, fontWeight: semiBold)
                    : greenTS.copyWith(fontSize: 12, fontWeight: semiBold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
