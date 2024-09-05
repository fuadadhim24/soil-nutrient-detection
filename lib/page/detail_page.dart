import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soil_nutrient_detection/shared/theme.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height + 100,
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
                    SizedBox(height: 40),
                    topTitle(),
                    SizedBox(height: 40),
                    // slideCard(),
                    sensorCard()
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
              // Container(
              //   width: 44,
              //   height: 44,
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     color: whiteColor,
              //   ),
              // ),
              Image.asset(
                'assets/img/avatar1.png',
                width: 44,
                height: 44,
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

  Widget topTitle() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 7),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Informasi Sawah'),
          Image.asset(
            'assets/img/arrowBottom.png',
            width: 48,
            height: 48,
          )
        ],
      ),
    );
  }

  Widget slideCard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [],
        ),
      ),
    );
  }

  Widget sensorCard() {
    return Container(
      width: 340,
      height: 239,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 4,
            color: Color(0x40000000),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Grafik Suhu',
            style: blackToGreyTS.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          )
        ],
      ),
    );
  }
}
