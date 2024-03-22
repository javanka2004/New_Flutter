import 'dart:ui';
import 'Widgets.dart';

const almostBlackColor = Color(0x8C000000);
const greyColor = Color(0x1F000000);

final List<Tariff> tariff = <Tariff>[
  Tariff("Изменить суточный лимит", "На платежи и переводы", "assets/speedometer.png"),
  Tariff("Переводы без комиссии", "Показать остаток в этом месяце", "assets/percent.png"),
  Tariff("Информация о тарифах и лимитах", "" ,"assets/arrows_forward_back.png")
];

final List<Services> services = <Services>[
  Services("СберПрайм"," Платеж 9 июля","199 P в месяц", "assets/sber_icon.png"),
  Services("Переводы", "Автопродление 21 августа", "199 P в месяц", "assets/percent_circle.png")
];

List<String> interests = ["Еда", "Саморазвитие", "Технологии", "Дом", "Досуг", "Забота о себе", "Наука"];
