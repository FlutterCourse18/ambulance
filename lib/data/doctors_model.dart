class DoctorsModel {
  String? categories;
  String? name;
  String? image;
  double? grade;
  List<String>? comments;
  String? about;
  Contacts? contacts;

  DoctorsModel(
      {this.about,
      this.comments,
      this.grade,
      this.image,
      this.name,
      this.categories,
      this.contacts});
}

class Contacts {
  String? phone;
  String? adress;
  String? email;
  Contacts({this.adress, this.email, this.phone});
}

abstract class DoctorsData {
  static const List<String> categories = [
    "Все",
    "Терапевт",
    "Хирург",
    "Окулист",
    "Стоматолог",
    "Педиатр",
    "Невролог",
    "Гинеколог",
    "Уролог",
    "Лор",
    "Кардиолог"
  ];

  static List<DoctorsModel> doctors = [
    DoctorsModel(
      name: "Иванов Петров",
      comments: [
        'Спасибо',
        'Спасибо',
        'Спасибо',
        'Спасибо',
        'Спасибо',
      ],
      grade: 4.8,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Кардиолог',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Московская, 224, клиника “Медикал Нео”',
        phone: '+996 555 89 39 54',
        email: 'akylbekov.ch@example.com',
      ),
    ),
    DoctorsModel(
      name: "Александрова Мария",
      comments: [
        'Отличный специалист!',
        'Быстро поставил диагноз',
        'Очень довольна приемом',
      ],
      grade: 4.9,
      image: 'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Терапевт',
      contacts: Contacts(
        adress: 'г. Москва, ул. Ленина, 15, клиника "Здоровье"',
        phone: '+7 999 123 45 67',
        email: 'alexandrova.m@example.com',
      ),
    ),
    DoctorsModel(
      name: "Доктор Иванов",
      comments: [
        'Спасибо за профессионализм!',
        'Все вопросы подробно разъяснил',
      ],
      grade: 4.5,
      image: 'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Кардиолог',
      contacts: Contacts(
        adress: 'г. Москва, ул. Ленина, д. 10',
        phone: '+7 999 123 45 67',
        email: 'ivanov@example.com',
      ),
    ),
    DoctorsModel(
      name: "Доктор Петрова",
      comments: [
        'Очень внимательный и заботливый врач!',
        'Быстро поставила диагноз',
      ],
      grade: 4.8,
      image: 'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Терапевт',
      contacts: Contacts(
        adress: 'г. Санкт-Петербург, ул. Московская, д. 20',
        phone: '+7 999 987 65 43',
        email: 'petrova@example.com',
      ),
    ),
    DoctorsModel(
      name: "Доктор Смирнов",
      comments: [
        'Профессиональный подход!',
        'Быстро решил проблему',
        'Очень доволен результатом',
      ],
      grade: 4.9,
      image: 'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Офтальмолог',
      contacts: Contacts(
        adress: 'г. Екатеринбург, ул. Пушкина, д. 30',
        phone: '+7 999 987 65 43',
        email: 'smirnov@example.com',
      ),
    ),
    DoctorsModel(
      name: "Доктор Кузнецова",
      comments: [
        'Отзывчивый и компетентный специалист!',
        'Подробно объяснила план лечения',
        'Рекомендую всем!',
      ],
      grade: 4.7,
      image: 'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Хирург',
      contacts: Contacts(
        adress: 'г. Новосибирск, ул. Ленина, д. 50',
        phone: '+7 999 123 45 67',
        email: 'kuznetsova@example.com',
      ),
    ),
  ];
}
