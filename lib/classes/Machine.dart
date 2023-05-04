import 'dart:async';

class CoffeeMachine {
  CoffeeMachine() {
    _heatWater();
  }

  Future<void> _heatWater() async {
    print('Подождите...Нагрев воды...');
    await Future.delayed(Duration(seconds: 3));
    print('Вода успешно нагрета!');
    _brewCoffee();
  }

  Future<void> _brewCoffee() async {
    print('Готовлю кофе...');
    await Future.delayed(Duration(seconds: 5));
    print('Кофе готов!');
    _frothMilk();
  }

  Future<void> _frothMilk() async {
    print('Молоко взбивается...');
    await Future.delayed(Duration(seconds: 5));
    print('Молоко вспенилось!');
    _mixCoffeeAndMilk();
  }

  Future<void> _mixCoffeeAndMilk() async {
    print('Смешиваем кофе с молоком...');
    await Future.delayed(Duration(seconds: 3));
    print('Смешиваем кофе и молоко!');
    print('Ваш капучино готов!');
  }
}

void main() {
  var coffeeMachine = CoffeeMachine();
}п