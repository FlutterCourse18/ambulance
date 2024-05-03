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
    "Кардиолог"
  ];

  static List<DoctorsModel> doctors = [
    DoctorsModel(
      name: "Чынгыз Акылбеков",
      comments: [
        'Спасибо за операцию',
        'Профессионал',
        'Отличный доктор',
        'Благодарен',
        'Рекомендую всем',
      ],
      grade: 4.7,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Стоматолог',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Чуй, 77, клиника “Медикал Спринт”',
        phone: '+996 555 77 88 99',
        email: 'kozlov.igor@example.com',
      ),
    ),
    DoctorsModel(
      name: "Рафаэль Шабутдинов",
      comments: [
        'Спасибо за операцию',
        'Профессионал',
        'Отличный доктор',
        'Благодарен',
        'Рекомендую всем',
      ],
      grade: 4.7,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Невролог',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Чуй, 77, клиника “Медикал Спринт”',
        phone: '+996 555 77 88 99',
        email: 'kozlov.igor@example.com',
      ),
    ),
    DoctorsModel(
      name: "Рината Сафиуллина",
      comments: [
        'Спасибо за операцию',
        'Профессионал',
        'Отличный доктор',
        'Благодарен',
        'Рекомендую всем',
      ],
      grade: 4.7,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Педиатр',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Чуй, 77, клиника “Медикал Спринт”',
        phone: '+996 555 77 88 99',
        email: 'kozlov.igor@example.com',
      ),
    ),
    DoctorsModel(
      name: "Алексей Захаренко",
      comments: [
        'Спасибо за операцию',
        'Профессионал',
        'Отличный доктор',
        'Благодарен',
        'Рекомендую всем',
      ],
      grade: 4.7,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Хирург',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Чуй, 77, клиника “Медикал Спринт”',
        phone: '+996 555 77 88 99',
        email: 'kozlov.igor@example.com',
      ),
    ),
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
      name: "Павлов Иванов",
      comments: [
        'Отличный врач',
        'Спасибо за помощь',
        'Очень внимательный',
        'Очень доволен',
        'Очень рекомендую',
      ],
      grade: 4.5,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Терапевт',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Советская, 50, клиника “Медикал Эстетик”',
        phone: '+996 555 11 22 33',
        email: 'pavlov.iv@example.com',
      ),
    ),
    DoctorsModel(
      name: "Сидоров Александр",
      comments: [
        'Врач высокого класса',
        'Очень доволен приемом',
        'Рекомендую всем',
        'Спасибо за операцию',
        'Профессионал своего дела',
      ],
      grade: 4.9,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Хирург',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Ленина, 11, клиника “Медикал Формула”',
        phone: '+996 555 44 55 66',
        email: 'sidorov.alex@example.com',
      ),
    ),
    DoctorsModel(
      name: "Айбек Сатыбалдиев",
      comments: [
        'Врач высокого класса',
        'Очень доволен приемом',
        'Рекомендую всем',
        'Спасибо за операцию',
        'Профессионал своего дела',
      ],
      grade: 4.9,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Стоматолог',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Ленина, 11, клиника “Медикал Формула”',
        phone: '+996 555 44 55 66',
        email: 'sidorov.alex@example.com',
      ),
    ),
    DoctorsModel(
      name: "Козлов Игорь",
      comments: [
        'Спасибо за операцию',
        'Профессионал',
        'Отличный доктор',
        'Благодарен',
        'Рекомендую всем',
      ],
      grade: 4.7,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Педиатр',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Чуй, 77, клиника “Медикал Спринт”',
        phone: '+996 555 77 88 99',
        email: 'kozlov.igor@example.com',
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
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
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
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
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
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
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
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Окулист',
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
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Хирург',
      contacts: Contacts(
        adress: 'г. Новосибирск, ул. Ленина, д. 50',
        phone: '+7 999 123 45 67',
        email: 'kuznetsova@example.com',
      ),
    ),
  ];
}
