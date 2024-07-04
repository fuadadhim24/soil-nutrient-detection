import 'package:flutter/material.dart';
import 'package:soil_nutrient_detection/shared/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 44),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    topProfile(),
                    SizedBox(height: 50),
                    searchContainer(),
                    SizedBox(height: 10),
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

  Widget searchContainer() {
    return TextFormField(
      style: whiteTS.copyWith(fontSize: 15),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: BorderSide(color: whiteColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: BorderSide(color: whiteColor),
        ),
        contentPadding: const EdgeInsets.all(14),
        labelText: 'Lahan apa yang anda cari?',
        labelStyle: whiteTS.copyWith(fontSize: 15),
      ),
    );
  }

  Widget sawahContent() {
    return Container(
      height: MediaQuery.of(context).size.height - 350,
      child: lahanList(),
    );
  }

  Widget lahanList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return lahanCard();
      },
    );
  }

  Widget lahanCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 22),
      width: 340,
      height: 147,
      padding: EdgeInsets.symmetric(horizontal: 22),
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Sawah A',
                    style: blackTS.copyWith(fontSize: 22),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Text(
                    'Luas 30x24 m2',
                    style: blackTS.copyWith(fontSize: 12),
                  ),
                ],
              ),
              Container(
                width: 128,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(color: greyColor, width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 27,
                      height: 24,
                      decoration: BoxDecoration(
                        color: greenTransparentColor,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.location_on_outlined,
                          size: 16,
                          color: greenColor,
                        ),
                      ),
                    ),
                    Text(
                      'Lihat lokasi',
                      style: blackTS.copyWith(fontSize: 11),
                    ),
                  ],
                ),
              )
            ],
          ),
          Text(
            'Hi Jenifer',
            style: blackTS.copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
