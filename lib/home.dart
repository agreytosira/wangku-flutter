import 'package:flutter/material.dart';
import 'package:wangku_app/systems/colors.dart';
// import 'package:wangku_app/systems/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.grey[50],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: MyColors.grey,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: MyColors.greyDark),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: MyColors.primary,
                      border: Border.all(color: MyColors.greyDark),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset('assets/images/icon-wallet.png'),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('MY WALLET',
                          style: TextStyle(
                            letterSpacing: 2,
                            color: Color.fromARGB(164, 38, 50, 56),
                            fontSize: 7,
                          )),
                      Text(
                        'Rp 875.000',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: MyColors.text,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: MyColors.secondary,
                  side: BorderSide(
                    width: 1,
                    color: MyColors.secondaryDark,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Column(
                  children: [
                    SizedBox(height: 4),
                    Image.asset(
                      'assets/images/icon-bar.png',
                    ),
                    SizedBox(height: 4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    print('Tombol Last Month ditekan');
                  },
                  enableFeedback: true,
                  child: Container(
                    decoration: BoxDecoration(
                        color: MyColors.grey,
                        border: Border.all(color: MyColors.greyDark),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        'Last Month',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    print('Tombol this month ditekan');
                  },
                  enableFeedback: true,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: MyColors.secondaryDark),
                        color: MyColors.secnodaryLight,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        'This Month',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    print('Tombol future ditekan');
                  },
                  enableFeedback: true,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: MyColors.greyDark),
                        color: MyColors.grey,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        'Future',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  color: MyColors.green,
                  border: Border.all(color: MyColors.greenDark),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/icon-income.png'),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'INCOME',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: MyColors.greenDark,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text('+Rp 1.875.000',
                          style: TextStyle(
                              color: MyColors.greenDark,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ],
                  ),
                ),
              )),
              SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  color: MyColors.orange,
                  border: Border.all(color: MyColors.orangeDark),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/icon-expense.png'),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'EXPENSE',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: MyColors.orangeDark,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text('-Rp 2.300.000',
                          style: TextStyle(
                              color: MyColors.orangeDark,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ],
                  ),
                ),
              )),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: MyColors.yellow,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: MyColors.yellowDark),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SUMMARY',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    color: MyColors.yellowDark,
                  ),
                ),
                Text(
                  '-Rp 425.000',
                  style: TextStyle(
                    color: MyColors.yellowDark,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: MyColors.grey,
              border: Border.all(color: MyColors.greyDark),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '20',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 4),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Yesterday',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'January 2022',
                              style:
                                  TextStyle(fontFamily: 'Inter', fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      '-Rp 390.000',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Divider(
                  color: MyColors.greyDark, // Atur warna garis
                  thickness: 1, // Atur ketebalan garis
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/icon-food.png'),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Food & Beverage',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Fried Rice + 2 Iced Tea',
                              style:
                                  TextStyle(fontFamily: 'Inter', fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '-Rp 20.000',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/icon-shopping.png'),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shopping',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              '2 T-Shirts',
                              style:
                                  TextStyle(fontFamily: 'Inter', fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '-Rp 360.000',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/icon-food.png'),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Food & Beverage',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Iced Coffee',
                              style:
                                  TextStyle(fontFamily: 'Inter', fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '-Rp 10.000',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/icon-food.png'),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Food & Beverage',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Meatball and Orange Juice',
                              style:
                                  TextStyle(fontFamily: 'Inter', fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '-Rp 30.000',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
