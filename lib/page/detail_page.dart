import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soil_nutrient_detection/data/dummy.dart';
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
                    SizedBox(height: 24),
                    Container(
                      height: MediaQuery.of(context).size.height - 160,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            topTitle(),
                            SizedBox(height: 30),
                            // slideCard(),
                            sensorCard(),
                            SizedBox(height: 40),
                            cuacaCard(),
                            SizedBox(height: 14),
                            listTanaman(),
                            SizedBox(height: 40),
                            statusCard(),
                          ],
                        ),
                      ),
                    ),
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
          decoration: BoxDecoration(
              shape: BoxShape.circle, border: Border.all(color: whiteColor)),
          child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.keyboard_arrow_left_rounded,
                color: whiteColor,
              )),
        ),
        Text(
          'Informasi Sawah A',
          style: whiteTS.copyWith(fontWeight: bold),
        ),
      ],
    );
  }

  Widget topTitle() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpansionTile(
        backgroundColor: whiteColor,
        title: Text('Informasi Sawah'),
        trailing: Image.asset(
          'assets/img/arrowBottom.png',
          width: 24,
          height: 24,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama: Sawah A'),
                SizedBox(height: 8),
                Text('Alamat Lokasi: Jl. Mastrip, Krajan Timur, Sumbersari'),
                SizedBox(height: 8),
                Text('Tahap Fase: Fase Penanaman'),
                SizedBox(height: 8),
                Text('Visibilitas: Ditampilkan'),
              ],
            ),
          ),
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
      width: double.infinity,
      height: 250,
      padding: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: sensorTitles.length,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width - 53,
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              margin: EdgeInsets.only(right: 14),
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
                    sensorTitles[index],
                    style:
                        blackToGreyTS.copyWith(fontSize: 16, fontWeight: bold),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget cuacaCard() {
    return Stack(
      children: [
        // Container untuk box shadow
        Container(
          height: 100,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          decoration: BoxDecoration(
            color: Colors
                .white, // Tambahkan warna latar belakang untuk melihat shadow
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                offset: Offset(0, 4),
                blurRadius: 4,
                spreadRadius: 0,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          width: double.infinity,
          height: 100,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.7599, 0.9929],
              colors: [
                Color.fromRGBO(0, 176, 116, 0.15),
                Color.fromRGBO(255, 255, 255, 0.15),
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sumbersari, Jember',
                      style: TextStyle(color: Colors.black),
                    ),
                    Row(
                      children: [
                        Text(
                          '36°',
                          style: blackTS.copyWith(
                              fontSize: 32, fontWeight: semiBold),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Terang Benderang',
                          style: blackToGreyTS.copyWith(
                              fontSize: 12, fontWeight: semiBold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: yellowColor),
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget listTanaman() {
    return Container(
      padding: EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Text(
            'Tanaman Terdaftar',
            style: blackToGreyTS.copyWith(fontWeight: bold, fontSize: 12),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _showBottomSheet(context);
                },
                child: Column(
                  children: [
                    Container(
                      height: 76,
                      width: 76,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: greenTransparentColor, shape: BoxShape.circle),
                      child: Image.asset('assets/img/jagung.png'),
                    ),
                    SizedBox(height: 2),
                    Text('Jagung'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showBottomSheet(context);
                },
                child: Column(
                  children: [
                    Container(
                      height: 76,
                      width: 76,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: greenTransparentColor, shape: BoxShape.circle),
                      child: Image.asset('assets/img/beras.png'),
                    ),
                    SizedBox(height: 2),
                    Text('Padi'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showBottomSheet(context);
                },
                child: Column(
                  children: [
                    Container(
                      height: 76,
                      width: 76,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: greenTransparentColor, shape: BoxShape.circle),
                      child: Image.asset('assets/img/tebu.png'),
                    ),
                    SizedBox(height: 2),
                    Text('Tebu'),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget statusCard() {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            color: greenTransparentColor,
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Center(
              child: Text(
                'S  T  A  T  U  S',
                style: greenTS.copyWith(fontSize: 16, fontWeight: bold),
              ),
            ),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kadar:',
                style: greyTS,
              ),
              Column(
                children: [
                  Text(
                    'N = 2000 mg/kg',
                    style: blackTS,
                  ),
                  Text(
                    'P = 1300 mg/kg',
                    style: blackTS,
                  ),
                  Text(
                    'K = 1500 mg/kg',
                    style: blackTS,
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 24),
          Text(
            'Curah hujan = Tinggi',
            style: blackTS,
          ),
          SizedBox(height: 36),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(text: 'Update terakhir 19/03/2024 ', style: greyTS),
                TextSpan(
                  text: '19.05 WIB',
                  style: greyTS.copyWith(
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24)
        ],
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(13),
          topRight: Radius.circular(13),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 20),
              Container(
                  width: double.infinity,
                  color: greenTransparentColor,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Center(
                      child: Text(
                    'REKOMENDASI TREATMENT',
                    style: greenTS.copyWith(fontSize: 16, fontWeight: bold),
                  ))),
              SizedBox(height: 32),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                    color: redColor, borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Tanah Kering, Segera siram air!',
                    style: whiteTS.copyWith(fontWeight: bold, fontSize: 16),
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              Container(
                  child: Center(
                child: Text(
                  'Tutup',
                  style: greyTS.copyWith(fontWeight: bold),
                ),
              )),
            ],
          ),
        );
      },
    );
  }
}
