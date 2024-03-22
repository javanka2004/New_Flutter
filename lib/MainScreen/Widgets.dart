import 'package:flutter/material.dart';
import 'package:lab2_test/MainScreen//Data.dart';

class TabBarMainScreen extends StatelessWidget {
  const TabBarMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              bottom: TabBar(
                  dividerColor: greyColor,
                  unselectedLabelColor: almostBlackColor,
                  indicatorColor: const Color(0xFF068441),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.black,
                  tabs: [Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 19),
                    child: const Text(
                      'Профиль',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 19),
                      child: const Text(
                        'Настройки',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'SFProText',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ]
              ),
              toolbarHeight: 256,
              title: const AccountWidget()
          ),
          body: const TabBarView(
            children: [
              TabBarProfile(),
              TabBarSettings()
            ],
          ),
        ),
      ),
    );
  }
}
class TabBarSettings extends StatelessWidget {
  const TabBarSettings({super.key} );

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 30.0,
      height: 30,
      child: Tab(text: 'Здесь могла быть ваша реклама'),
    );
  }
}

class AccountWidget extends StatelessWidget {
  const AccountWidget({super.key} );

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed:(){} ,
                  icon: const Image(image: AssetImage('assets/exit_screen.png'),
                      width: 24, height: 24)),
              IconButton(onPressed:(){} ,
                  icon: const Image(image: AssetImage('assets/exit_account.png'),
                      width: 24, height: 24))]
        ),
        const Column(
          children: [
            Image(image: AssetImage('assets/photo.png'),
                width: 110, height: 110),
            SizedBox(height: 36),
            Text("Екатерина",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'SFProText',
                  fontWeight: FontWeight.w700
              ),
            ),
          ],
        )
      ],
    );
  }
}

class InterestsWidget extends StatelessWidget {
  const InterestsWidget({super.key} );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(top: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Titles(title: "Интересы", subtitle: "Мы подбираем истории и предложения по темам, которые вам нравятся"),

          Container(
            margin: EdgeInsets.only(top: 16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              direction: Axis.horizontal,
              children: interests.map((i) =>
                  Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: almostBlackColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Material(
                        child: InkWell(
                          onTap: (){print("onTapped");},
                          child: Container(
                              color: greyColor,
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7) ,
                              child: Text( i ,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'SFProText',
                                  fontWeight: FontWeight.w500,),
                              )
                          ),
                        ),
                      )
                  )
              ).toList(),
            ),
          )

        ],
      ),
    );
  }
}



class Services {
  String name;
  String payment;
  String cost;
  String patch;
  Services(this.name, this.payment, this.cost, this.patch);
}

class SubscriptionsWidget extends StatelessWidget {
  const SubscriptionsWidget({super.key} );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Titles(title: "У вас подключено", subtitle: "Подписки, автоплатежи и сервисы на которые  вы подписались"),

        SizedBox(
          width: double.infinity,
          height: 165,
          child: ListView.builder(shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: services.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 236, height: 130,
                      margin: const EdgeInsets.only(top: 20, right:8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x114F4F6C),
                              blurRadius: 14,
                              offset: Offset(0, 8),
                              spreadRadius: 0,)]
                      ),
                      child: Material(
                        child: InkWell(
                          onTap: () { print("Tapped");},
                          child: Container(
                              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                              child: Column(
                                children: [
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Image(image: AssetImage(services[index].patch),
                                            width: 36, height: 36),
                                        const SizedBox(width: 8),
                                        Text(services[index].name,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'SFProText',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                      ),

                                      const SizedBox(height: 24),

                                      Text(services[index].payment,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'SFProText',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),

                                      Text(services[index].cost,
                                        style: const TextStyle(
                                          color: almostBlackColor,
                                          fontSize: 14,
                                          fontFamily: 'SFProText',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                          ),
                        ),
                      ),
                    )
                  ],
                );
              }
          ),
        )
      ],
    );
  }
}

class TabBarProfile extends StatelessWidget {
  const TabBarProfile({super.key} );

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 30, 0, 30),
        child: Column(
            children: [SubscriptionsWidget(), TariffWidget(), InterestsWidget()]
        )
    );
  }
}

class Tariff {
  String title;
  String subtitle;
  String patch;
  Tariff(this.title, this.subtitle, this.patch);
}

class TariffWidget extends StatelessWidget {
  const TariffWidget({super.key} );

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Titles(title: "Тарифы и лимиты", subtitle: "Для операций в Сбербанк Онлайн"),

            const SizedBox(height: 12),

            ListView.builder(shrinkWrap: true,
                itemCount: tariff.length,
                itemBuilder: (BuildContext context, int index){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Material(
                        child: InkWell(
                          onTap: () { print("Tapped");},
                          child: Row(
                            children: [
                              Image(
                                  image: AssetImage(tariff[index].patch),
                                  width: 36, height: 36),
                              const SizedBox(width: 12,),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(tariff[index].title,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'SFProText',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(tariff[index].subtitle,
                                    style: const TextStyle(
                                      color: almostBlackColor,
                                      fontSize: 14,
                                      fontFamily: 'SFProText',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Image(
                                  image: AssetImage("assets/disclosure.png"),
                                  width: 24, height: 24),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ),
                      ),
                      if (index != tariff.length-1) const Divider(indent: 50)
                    ],
                  );
                })
          ],
        )
    );
  }
}

class Titles extends StatelessWidget {

  final String title;
  final String subtitle;

  const Titles({super.key, required this.title, required this.subtitle} );

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(right: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text( title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'SFProText',
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 8),

            Text(subtitle,
              style: const TextStyle(
                color: almostBlackColor,
                fontSize: 14,
                fontFamily: 'SFProText',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        )
    );
  }
}