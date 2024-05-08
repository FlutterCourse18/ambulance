class DoctorsModel {
  String? categories;
  String? name;
  String? image;
  double? grade;
  List<Comments>? comments;
  String? about;
  Contacts? contacts;
  bool? isFavorite;
  DoctorsModel(
      {this.about,
      this.comments,
      this.grade,
      this.image,
      this.name,
      this.categories,
      this.contacts,
      this.isFavorite});
}

class ArticleModel {
  String? title;
  String? subTitle;
  String? article;
  String? readTime;
  String? author;
  String? date;
  String? image;
  ArticleModel(
      {this.title,
      this.subTitle,
      this.article,
      this.readTime,
      this.author,
      this.date,
      this.image});
}

class Contacts {
  List<String>? phone;
  String? adress;
  String? email;
  Contacts({this.adress, this.email, this.phone});
}

class Comments {
  String? name;
  String? comment;
  Comments({required this.name, required this.comment});
}

abstract class ArticleData {
  static String image = 'https://media.wired.com/photos/65e0d28f18fecb6ce8a78d27/1:1/w_1800,h_1800,c_limit/Best-Wireless-Headphones-Gear-GettyImages-1329971784.jpg';
  static List<ArticleModel> articles = [
    ArticleModel(
      title: 'Приводит ли использование наушников к потере слуха?',
      subTitle:
          'Всемирная организация здравоохранения предупреждает — миллионы молодых людей слушают музыку слишком громко. Неужели мы все портим слух, проводя так много времени с наушниками?',
      image: image,
      article:
          'Житель большого города проводит около 75% времени в компании внутриканальных наушников. Мы слушаем подкасты в метро, затем ставим в очередь плейлист в Spotify, чтобы не отвлекаться от своих задач в открытом офисном пространстве. После работы тренируемся под электронную музыку и перегруженную басами попсу, а по пути домой знакомимся с новостями на радио. В конце дня заходим в сервис стримингового видео и, чтобы не нарушать спокойствия соседа, надеваем наушники, погружаясь в ноутбук. И уже после, положив влажные наушники на тумбочку, задаемся вопросом: портим ли вы свой слух, проводя большую часть дня в наушниках? Какие типы звуков приводят к потере слуха? В 2015 году Всемирная организация здравоохранения выпустила вторящее материнской заботе заявление, предупреждающее, что 1,1 миллиона молодых людей рискуют потерять слух из-за частого прослушивания громкой музыки через свои устройства и на концертах. ВОЗ проанализировала данные исследований «стран со средним и высоким уровнем дохода» и обнаружила, что почти 50% жителей в возрасте от 12 до 35 лет попадали под влияние небезопасных уровней шума своих смартфонов и плееров, а 40% получали потенциально опасное воздействие в барах, ночных клубах, спортивных стадионах и концертах. Когда же просто «громко» становится слишком громким? ВОЗ признала уровень шума больше 85 децибел на протяжении 8 часов опасным, и ограничила безопасное время прослушивания звуков громкостью 100 децибел 15 минутами.ваших наушниках зачастую ничуть не тише шума города? Слышите звон в ушах или у вас есть периоды, когда ваши уши болят, а вы плохо слышите? Если так, сделайте потише или отдохните от альбомов группы Slayer.',
      author: 'Эрика Исаева',
      date: '12 июня 2020.',
      readTime: '10 мин',
    ),
    ArticleModel(
      title: 'Приводит ли использование наушников к потере слуха?',
      subTitle:
          'Всемирная организация здравоохранения предупреждает — миллионы молодых людей слушают музыку слишком громко. Неужели мы все портим слух, проводя так много времени с наушниками?',
      image: image,
      article:
          'Житель большого города проводит около 75% времени в компании внутриканальных наушников. Мы слушаем подкасты в метро, затем ставим в очередь плейлист в Spotify, чтобы не отвлекаться от своих задач в открытом офисном пространстве. После работы тренируемся под электронную музыку и перегруженную басами попсу, а по пути домой знакомимся с новостями на радио. В конце дня заходим в сервис стримингового видео и, чтобы не нарушать спокойствия соседа, надеваем наушники, погружаясь в ноутбук. И уже после, положив влажные наушники на тумбочку, задаемся вопросом: портим ли вы свой слух, проводя большую часть дня в наушниках? Какие типы звуков приводят к потере слуха? В 2015 году Всемирная организация здравоохранения выпустила вторящее материнской заботе заявление, предупреждающее, что 1,1 миллиона молодых людей рискуют потерять слух из-за частого прослушивания громкой музыки через свои устройства и на концертах. ВОЗ проанализировала данные исследований «стран со средним и высоким уровнем дохода» и обнаружила, что почти 50% жителей в возрасте от 12 до 35 лет попадали под влияние небезопасных уровней шума своих смартфонов и плееров, а 40% получали потенциально опасное воздействие в барах, ночных клубах, спортивных стадионах и концертах. Когда же просто «громко» становится слишком громким? ВОЗ признала уровень шума больше 85 децибел на протяжении 8 часов опасным, и ограничила безопасное время прослушивания звуков громкостью 100 децибел 15 минутами.ваших наушниках зачастую ничуть не тише шума города? Слышите звон в ушах или у вас есть периоды, когда ваши уши болят, а вы плохо слышите? Если так, сделайте потише или отдохните от альбомов группы Slayer.',
      author: 'Эрика Исаева',
      date: '12 июня 2020.',
      readTime: '10 мин',
    ),
    ArticleModel(
      title: 'Приводит ли использование наушников к потере слуха?',
      subTitle:
          'Всемирная организация здравоохранения предупреждает — миллионы молодых людей слушают музыку слишком громко. Неужели мы все портим слух, проводя так много времени с наушниками?',
      image: image,
      article:
          'Житель большого города проводит около 75% времени в компании внутриканальных наушников. Мы слушаем подкасты в метро, затем ставим в очередь плейлист в Spotify, чтобы не отвлекаться от своих задач в открытом офисном пространстве. После работы тренируемся под электронную музыку и перегруженную басами попсу, а по пути домой знакомимся с новостями на радио. В конце дня заходим в сервис стримингового видео и, чтобы не нарушать спокойствия соседа, надеваем наушники, погружаясь в ноутбук. И уже после, положив влажные наушники на тумбочку, задаемся вопросом: портим ли вы свой слух, проводя большую часть дня в наушниках? Какие типы звуков приводят к потере слуха? В 2015 году Всемирная организация здравоохранения выпустила вторящее материнской заботе заявление, предупреждающее, что 1,1 миллиона молодых людей рискуют потерять слух из-за частого прослушивания громкой музыки через свои устройства и на концертах. ВОЗ проанализировала данные исследований «стран со средним и высоким уровнем дохода» и обнаружила, что почти 50% жителей в возрасте от 12 до 35 лет попадали под влияние небезопасных уровней шума своих смартфонов и плееров, а 40% получали потенциально опасное воздействие в барах, ночных клубах, спортивных стадионах и концертах. Когда же просто «громко» становится слишком громким? ВОЗ признала уровень шума больше 85 децибел на протяжении 8 часов опасным, и ограничила безопасное время прослушивания звуков громкостью 100 децибел 15 минутами.ваших наушниках зачастую ничуть не тише шума города? Слышите звон в ушах или у вас есть периоды, когда ваши уши болят, а вы плохо слышите? Если так, сделайте потише или отдохните от альбомов группы Slayer.',
      author: 'Эрика Исаева',
      date: '12 июня 2020.',
      readTime: '10 мин',
    ),
    ArticleModel(
      title: 'Приводит ли использование наушников к потере слуха?',
      subTitle:
          'Всемирная организация здравоохранения предупреждает — миллионы молодых людей слушают музыку слишком громко. Неужели мы все портим слух, проводя так много времени с наушниками?',
      image: image,
      article:
          'Житель большого города проводит около 75% времени в компании внутриканальных наушников. Мы слушаем подкасты в метро, затем ставим в очередь плейлист в Spotify, чтобы не отвлекаться от своих задач в открытом офисном пространстве. После работы тренируемся под электронную музыку и перегруженную басами попсу, а по пути домой знакомимся с новостями на радио. В конце дня заходим в сервис стримингового видео и, чтобы не нарушать спокойствия соседа, надеваем наушники, погружаясь в ноутбук. И уже после, положив влажные наушники на тумбочку, задаемся вопросом: портим ли вы свой слух, проводя большую часть дня в наушниках? Какие типы звуков приводят к потере слуха? В 2015 году Всемирная организация здравоохранения выпустила вторящее материнской заботе заявление, предупреждающее, что 1,1 миллиона молодых людей рискуют потерять слух из-за частого прослушивания громкой музыки через свои устройства и на концертах. ВОЗ проанализировала данные исследований «стран со средним и высоким уровнем дохода» и обнаружила, что почти 50% жителей в возрасте от 12 до 35 лет попадали под влияние небезопасных уровней шума своих смартфонов и плееров, а 40% получали потенциально опасное воздействие в барах, ночных клубах, спортивных стадионах и концертах. Когда же просто «громко» становится слишком громким? ВОЗ признала уровень шума больше 85 децибел на протяжении 8 часов опасным, и ограничила безопасное время прослушивания звуков громкостью 100 децибел 15 минутами.ваших наушниках зачастую ничуть не тише шума города? Слышите звон в ушах или у вас есть периоды, когда ваши уши болят, а вы плохо слышите? Если так, сделайте потише или отдохните от альбомов группы Slayer.',
      author: 'Эрика Исаева',
      date: '12 июня 2020.',
      readTime: '10 мин',
    ),
    ArticleModel(
      title: 'Приводит ли использование наушников к потере слуха?',
      subTitle:
          'Всемирная организация здравоохранения предупреждает — миллионы молодых людей слушают музыку слишком громко. Неужели мы все портим слух, проводя так много времени с наушниками?',
      image: image,
      article:
          'Житель большого города проводит около 75% времени в компании внутриканальных наушников. Мы слушаем подкасты в метро, затем ставим в очередь плейлист в Spotify, чтобы не отвлекаться от своих задач в открытом офисном пространстве. После работы тренируемся под электронную музыку и перегруженную басами попсу, а по пути домой знакомимся с новостями на радио. В конце дня заходим в сервис стримингового видео и, чтобы не нарушать спокойствия соседа, надеваем наушники, погружаясь в ноутбук. И уже после, положив влажные наушники на тумбочку, задаемся вопросом: портим ли вы свой слух, проводя большую часть дня в наушниках? Какие типы звуков приводят к потере слуха? В 2015 году Всемирная организация здравоохранения выпустила вторящее материнской заботе заявление, предупреждающее, что 1,1 миллиона молодых людей рискуют потерять слух из-за частого прослушивания громкой музыки через свои устройства и на концертах. ВОЗ проанализировала данные исследований «стран со средним и высоким уровнем дохода» и обнаружила, что почти 50% жителей в возрасте от 12 до 35 лет попадали под влияние небезопасных уровней шума своих смартфонов и плееров, а 40% получали потенциально опасное воздействие в барах, ночных клубах, спортивных стадионах и концертах. Когда же просто «громко» становится слишком громким? ВОЗ признала уровень шума больше 85 децибел на протяжении 8 часов опасным, и ограничила безопасное время прослушивания звуков громкостью 100 децибел 15 минутами.ваших наушниках зачастую ничуть не тише шума города? Слышите звон в ушах или у вас есть периоды, когда ваши уши болят, а вы плохо слышите? Если так, сделайте потише или отдохните от альбомов группы Slayer.',
      author: 'Эрика Исаева',
      date: '12 июня 2020.',
      readTime: '10 мин',
    ),
    ArticleModel(
      title: 'Приводит ли использование наушников к потере слуха?',
      subTitle:
          'Всемирная организация здравоохранения предупреждает — миллионы молодых людей слушают музыку слишком громко. Неужели мы все портим слух, проводя так много времени с наушниками?',
      image: image,
      article:
          'Житель большого города проводит около 75% времени в компании внутриканальных наушников. Мы слушаем подкасты в метро, затем ставим в очередь плейлист в Spotify, чтобы не отвлекаться от своих задач в открытом офисном пространстве. После работы тренируемся под электронную музыку и перегруженную басами попсу, а по пути домой знакомимся с новостями на радио. В конце дня заходим в сервис стримингового видео и, чтобы не нарушать спокойствия соседа, надеваем наушники, погружаясь в ноутбук. И уже после, положив влажные наушники на тумбочку, задаемся вопросом: портим ли вы свой слух, проводя большую часть дня в наушниках? Какие типы звуков приводят к потере слуха? В 2015 году Всемирная организация здравоохранения выпустила вторящее материнской заботе заявление, предупреждающее, что 1,1 миллиона молодых людей рискуют потерять слух из-за частого прослушивания громкой музыки через свои устройства и на концертах. ВОЗ проанализировала данные исследований «стран со средним и высоким уровнем дохода» и обнаружила, что почти 50% жителей в возрасте от 12 до 35 лет попадали под влияние небезопасных уровней шума своих смартфонов и плееров, а 40% получали потенциально опасное воздействие в барах, ночных клубах, спортивных стадионах и концертах. Когда же просто «громко» становится слишком громким? ВОЗ признала уровень шума больше 85 децибел на протяжении 8 часов опасным, и ограничила безопасное время прослушивания звуков громкостью 100 децибел 15 минутами.ваших наушниках зачастую ничуть не тише шума города? Слышите звон в ушах или у вас есть периоды, когда ваши уши болят, а вы плохо слышите? Если так, сделайте потише или отдохните от альбомов группы Slayer.',
      author: 'Эрика Исаева',
      date: '12 июня 2020.',
      readTime: '10 мин',
    ),
    ArticleModel(
      title: 'Приводит ли использование наушников к потере слуха?',
      subTitle:
          'Всемирная организация здравоохранения предупреждает — миллионы молодых людей слушают музыку слишком громко. Неужели мы все портим слух, проводя так много времени с наушниками?',
      image: image,
      article:
          'Житель большого города проводит около 75% времени в компании внутриканальных наушников. Мы слушаем подкасты в метро, затем ставим в очередь плейлист в Spotify, чтобы не отвлекаться от своих задач в открытом офисном пространстве. После работы тренируемся под электронную музыку и перегруженную басами попсу, а по пути домой знакомимся с новостями на радио. В конце дня заходим в сервис стримингового видео и, чтобы не нарушать спокойствия соседа, надеваем наушники, погружаясь в ноутбук. И уже после, положив влажные наушники на тумбочку, задаемся вопросом: портим ли вы свой слух, проводя большую часть дня в наушниках? Какие типы звуков приводят к потере слуха? В 2015 году Всемирная организация здравоохранения выпустила вторящее материнской заботе заявление, предупреждающее, что 1,1 миллиона молодых людей рискуют потерять слух из-за частого прослушивания громкой музыки через свои устройства и на концертах. ВОЗ проанализировала данные исследований «стран со средним и высоким уровнем дохода» и обнаружила, что почти 50% жителей в возрасте от 12 до 35 лет попадали под влияние небезопасных уровней шума своих смартфонов и плееров, а 40% получали потенциально опасное воздействие в барах, ночных клубах, спортивных стадионах и концертах. Когда же просто «громко» становится слишком громким? ВОЗ признала уровень шума больше 85 децибел на протяжении 8 часов опасным, и ограничила безопасное время прослушивания звуков громкостью 100 децибел 15 минутами.ваших наушниках зачастую ничуть не тише шума города? Слышите звон в ушах или у вас есть периоды, когда ваши уши болят, а вы плохо слышите? Если так, сделайте потише или отдохните от альбомов группы Slayer.',
      author: 'Эрика Исаева',
      date: '12 июня 2020.',
      readTime: '10 мин',
    ),
    ArticleModel(
      title: 'Приводит ли использование наушников к потере слуха?',
      subTitle:
          'Всемирная организация здравоохранения предупреждает — миллионы молодых людей слушают музыку слишком громко. Неужели мы все портим слух, проводя так много времени с наушниками?',
      image: image,
      article:
          'Житель большого города проводит около 75% времени в компании внутриканальных наушников. Мы слушаем подкасты в метро, затем ставим в очередь плейлист в Spotify, чтобы не отвлекаться от своих задач в открытом офисном пространстве. После работы тренируемся под электронную музыку и перегруженную басами попсу, а по пути домой знакомимся с новостями на радио. В конце дня заходим в сервис стримингового видео и, чтобы не нарушать спокойствия соседа, надеваем наушники, погружаясь в ноутбук. И уже после, положив влажные наушники на тумбочку, задаемся вопросом: портим ли вы свой слух, проводя большую часть дня в наушниках? Какие типы звуков приводят к потере слуха? В 2015 году Всемирная организация здравоохранения выпустила вторящее материнской заботе заявление, предупреждающее, что 1,1 миллиона молодых людей рискуют потерять слух из-за частого прослушивания громкой музыки через свои устройства и на концертах. ВОЗ проанализировала данные исследований «стран со средним и высоким уровнем дохода» и обнаружила, что почти 50% жителей в возрасте от 12 до 35 лет попадали под влияние небезопасных уровней шума своих смартфонов и плееров, а 40% получали потенциально опасное воздействие в барах, ночных клубах, спортивных стадионах и концертах. Когда же просто «громко» становится слишком громким? ВОЗ признала уровень шума больше 85 децибел на протяжении 8 часов опасным, и ограничила безопасное время прослушивания звуков громкостью 100 децибел 15 минутами.ваших наушниках зачастую ничуть не тише шума города? Слышите звон в ушах или у вас есть периоды, когда ваши уши болят, а вы плохо слышите? Если так, сделайте потише или отдохните от альбомов группы Slayer.',
      author: 'Эрика Исаева',
      date: '12 июня 2020.',
      readTime: '10 мин',
    ),
    ArticleModel(
      title: 'Приводит ли использование наушников к потере слуха?',
      subTitle:
          'Всемирная организация здравоохранения предупреждает — миллионы молодых людей слушают музыку слишком громко. Неужели мы все портим слух, проводя так много времени с наушниками?',
      image: image,
      article:
          'Житель большого города проводит около 75% времени в компании внутриканальных наушников. Мы слушаем подкасты в метро, затем ставим в очередь плейлист в Spotify, чтобы не отвлекаться от своих задач в открытом офисном пространстве. После работы тренируемся под электронную музыку и перегруженную басами попсу, а по пути домой знакомимся с новостями на радио. В конце дня заходим в сервис стримингового видео и, чтобы не нарушать спокойствия соседа, надеваем наушники, погружаясь в ноутбук. И уже после, положив влажные наушники на тумбочку, задаемся вопросом: портим ли вы свой слух, проводя большую часть дня в наушниках? Какие типы звуков приводят к потере слуха? В 2015 году Всемирная организация здравоохранения выпустила вторящее материнской заботе заявление, предупреждающее, что 1,1 миллиона молодых людей рискуют потерять слух из-за частого прослушивания громкой музыки через свои устройства и на концертах. ВОЗ проанализировала данные исследований «стран со средним и высоким уровнем дохода» и обнаружила, что почти 50% жителей в возрасте от 12 до 35 лет попадали под влияние небезопасных уровней шума своих смартфонов и плееров, а 40% получали потенциально опасное воздействие в барах, ночных клубах, спортивных стадионах и концертах. Когда же просто «громко» становится слишком громким? ВОЗ признала уровень шума больше 85 децибел на протяжении 8 часов опасным, и ограничила безопасное время прослушивания звуков громкостью 100 децибел 15 минутами.ваших наушниках зачастую ничуть не тише шума города? Слышите звон в ушах или у вас есть периоды, когда ваши уши болят, а вы плохо слышите? Если так, сделайте потише или отдохните от альбомов группы Slayer.',
      author: 'Эрика Исаева',
      date: '12 июня 2020.',
      readTime: '10 мин',
    ),
  ];
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
  static String aboutDoctor =
      '''Максимально внимательно относится к каждому своему пациенту, старается найти индивидуальный подход, успешно диагностирует и получает хорошие результаты в лечении острых и хронических болезней. 
В частности, занимается вопросами нарушения сердечного ритма, врожденными пороками сердца, так называемыми синкопальными состояниями (проще говоря – обмороками).

Для подбора эффективного лечения врач оценивает жизненно важные функции, анализирует информацию о принимаемых ребенком лекарствах и перенесенных заболеваниях, назначает необходимые исследования нервной системы. 
Возможно получение медицинской помощи без взимания платы при очном обращении в объемах, предусмотренных стандартами обязательного медицинского страхования (ОМС).

''';

  static List<DoctorsModel> doctors = [
    DoctorsModel(
      about: aboutDoctor,
      isFavorite: false,
      name: "Чынгыз Акылбеков",
      comments: [
        Comments(name: 'user user', comment: 'Профессионал'),
        Comments(name: 'user user', comment: 'Отличный доктор'),
        Comments(name: 'user user', comment: 'Рекомендую всем'),
        Comments(name: 'user user', comment: 'Благодарен'),
      ],
      grade: 3.7,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Стоматолог',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Чуй, 77, клиника “Медикал Спринт”',
        phone: ['+996 555 77 88 99', '+996 555 77 88 99'],
        email: 'kozlov.igor@example.com',
      ),
    ),
    DoctorsModel(
      about: aboutDoctor,
      isFavorite: false,
      name: "Рафаэль Шабутдинов",
      comments: [
        Comments(name: 'user user', comment: 'Профессионал'),
        Comments(name: 'user user', comment: 'Отличный доктор'),
        Comments(name: 'user user', comment: 'Рекомендую всем'),
        Comments(name: 'user user', comment: 'Благодарен'),
      ],
      grade: 4.1,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Невролог',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Чуй, 77, клиника “Медикал Спринт”',
        phone: ['+996 555 77 88 99', '+996 555 77 88 99'],
        email: 'kozlov.igor@example.com',
      ),
    ),
    DoctorsModel(
      about: aboutDoctor,
      isFavorite: false,
      name: "Рината Сафиуллина",
      comments: [
        Comments(name: 'user user', comment: 'Профессионал'),
        Comments(name: 'user user', comment: 'Отличный доктор'),
        Comments(name: 'user user', comment: 'Рекомендую всем'),
        Comments(name: 'user user', comment: 'Благодарен'),
      ],
      grade: 4.3,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Педиатр',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Чуй, 77, клиника “Медикал Спринт”',
        phone: ['+996 555 77 88 99', '+996 555 77 88 99'],
        email: 'kozlov.igor@example.com',
      ),
    ),
    DoctorsModel(
      about: aboutDoctor,
      isFavorite: false,
      name: "Алексей Захаренко",
      comments: [
        Comments(name: 'user user', comment: 'Профессионал'),
        Comments(name: 'user user', comment: 'Отличный доктор'),
        Comments(name: 'user user', comment: 'Рекомендую всем'),
        Comments(name: 'user user', comment: 'Благодарен'),
      ],
      grade: 2.7,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Хирург',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Чуй, 77, клиника “Медикал Спринт”',
        phone: ['+996 555 77 88 99', '+996 555 77 88 99'],
        email: 'kozlov.igor@example.com',
      ),
    ),
    DoctorsModel(
      about: aboutDoctor,
      isFavorite: false,
      name: "Иванов Петров",
      comments: [
        Comments(name: 'user user', comment: 'Профессионал'),
        Comments(name: 'user user', comment: 'Отличный доктор'),
        Comments(name: 'user user', comment: 'Рекомендую всем'),
        Comments(name: 'user user', comment: 'Благодарен'),
      ],
      grade: 3.8,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Кардиолог',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Московская, 224, клиника “Медикал Нео”',
        phone: ['+996 555 77 88 99', '+996 555 77 88 99'],
        email: 'akylbekov.ch@example.com',
      ),
    ),
    DoctorsModel(
      about: aboutDoctor,
      isFavorite: false,
      name: "Павлов Иванов",
      comments: [
        Comments(name: 'user user', comment: 'Профессионал'),
        Comments(name: 'user user', comment: 'Отличный доктор'),
        Comments(name: 'user user', comment: 'Рекомендую всем'),
        Comments(name: 'user user', comment: 'Благодарен'),
      ],
      grade: 4.5,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Терапевт',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Советская, 50, клиника “Медикал Эстетик”',
        phone: ['+996 555 77 88 99', '+996 555 77 88 99'],
        email: 'pavlov.iv@example.com',
      ),
    ),
    DoctorsModel(
      about: aboutDoctor,
      isFavorite: false,
      name: "Сидоров Александр",
      comments: [
        Comments(name: 'user user', comment: 'Профессионал'),
        Comments(name: 'user user', comment: 'Отличный доктор'),
        Comments(name: 'user user', comment: 'Рекомендую всем'),
        Comments(name: 'user user', comment: 'Благодарен'),
      ],
      grade: 4.9,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Хирург',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Ленина, 11, клиника “Медикал Формула”',
        phone: ['+996 555 77 88 99', '+996 555 77 88 99'],
        email: 'sidorov.alex@example.com',
      ),
    ),
    DoctorsModel(
      about: aboutDoctor,
      isFavorite: false,
      name: "Айбек Сатыбалдиев",
      comments: [
        Comments(name: 'user user', comment: 'Профессионал'),
        Comments(name: 'user user', comment: 'Отличный доктор'),
        Comments(name: 'user user', comment: 'Рекомендую всем'),
        Comments(name: 'user user', comment: 'Благодарен'),
      ],
      grade: 3.4,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Стоматолог',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Ленина, 11, клиника “Медикал Формула”',
        phone: ['+996 555 77 88 99', '+996 555 77 88 99'],
        email: 'sidorov.alex@example.com',
      ),
    ),
    DoctorsModel(
      about: aboutDoctor,
      isFavorite: false,
      name: "Козлов Игорь",
      comments: [
        Comments(name: 'user user', comment: 'Профессионал'),
        Comments(name: 'user user', comment: 'Отличный доктор'),
        Comments(name: 'user user', comment: 'Рекомендую всем'),
        Comments(name: 'user user', comment: 'Благодарен'),
      ],
      grade: 4.2,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Педиатр',
      contacts: Contacts(
        adress: 'г. Бишкек, ул. Чуй, 77, клиника “Медикал Спринт”',
        phone: ['+996 555 77 88 99', '+996 555 77 88 99'],
        email: 'kozlov.igor@example.com',
      ),
    ),
    DoctorsModel(
      about: aboutDoctor,
      isFavorite: false,
      name: "Александрова Мария",
      comments: [
        Comments(name: 'user user', comment: 'Профессионал'),
        Comments(name: 'user user', comment: 'Отличный доктор'),
        Comments(name: 'user user', comment: 'Рекомендую всем'),
        Comments(name: 'user user', comment: 'Благодарен'),
      ],
      grade: 4.1,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Терапевт',
      contacts: Contacts(
        adress: 'г. Москва, ул. Ленина, 15, клиника "Здоровье"',
        phone: ['+996 555 77 88 99', '+996 555 77 88 99'],
        email: 'alexandrova.m@example.com',
      ),
    ),
    DoctorsModel(
      about: aboutDoctor,
      isFavorite: false,
      name: "Доктор Иванов",
      comments: [
        Comments(name: 'user user', comment: 'Профессионал'),
        Comments(name: 'user user', comment: 'Отличный доктор'),
        Comments(name: 'user user', comment: 'Рекомендую всем'),
        Comments(name: 'user user', comment: 'Благодарен'),
      ],
      grade: 4.5,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Кардиолог',
      contacts: Contacts(
        adress: 'г. Москва, ул. Ленина, д. 10',
        phone: ['+996 555 77 88 99', '+996 555 77 88 99'],
        email: 'ivanov@example.com',
      ),
    ),
    DoctorsModel(
      about: aboutDoctor,
      isFavorite: false,
      name: "Доктор Петрова",
      comments: [
        Comments(name: 'user user', comment: 'Профессионал'),
        Comments(name: 'user user', comment: 'Отличный доктор'),
        Comments(name: 'user user', comment: 'Рекомендую всем'),
        Comments(name: 'user user', comment: 'Благодарен'),
      ],
      grade: 4.8,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Терапевт',
      contacts: Contacts(
        adress: 'г. Санкт-Петербург, ул. Московская, д. 20',
        phone: ['+996 555 77 88 99', '+996 555 77 88 99'],
        email: 'petrova@example.com',
      ),
    ),
    DoctorsModel(
      about: aboutDoctor,
      isFavorite: false,
      name: "Доктор Смирнов",
      comments: [
        Comments(name: 'user user', comment: 'Профессионал'),
        Comments(name: 'user user', comment: 'Отличный доктор'),
        Comments(name: 'user user', comment: 'Рекомендую всем'),
        Comments(name: 'user user', comment: 'Благодарен'),
      ],
      grade: 4.9,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Окулист',
      contacts: Contacts(
        adress: 'г. Екатеринбург, ул. Пушкина, д. 30',
        phone: ['+996 555 77 88 99', '+996 555 77 88 99'],
        email: 'smirnov@example.com',
      ),
    ),
    DoctorsModel(
      about: aboutDoctor,
      isFavorite: false,
      name: "Доктор Кузнецова",
      comments: [
        Comments(name: 'user user', comment: 'Профессионал'),
        Comments(name: 'user user', comment: 'Отличный доктор'),
        Comments(name: 'user user', comment: 'Рекомендую всем'),
        Comments(name: 'user user', comment: 'Благодарен'),
      ],
      grade: 1.7,
      image:
          'https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor_1001x665.jpg?v=1684314843',
      categories: 'Хирург',
      contacts: Contacts(
        adress: 'г. Новосибирск, ул. Ленина, д. 50',
        phone: ['+996 555 77 88 99', '+996 555 77 88 99'],
        email: 'kuznetsova@example.com',
      ),
    ),
  ];
}
