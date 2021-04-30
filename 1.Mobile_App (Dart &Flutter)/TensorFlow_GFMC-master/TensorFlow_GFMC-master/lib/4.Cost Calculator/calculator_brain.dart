import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.area, this.humidity, this.level, this.temperature});

  final int area;
  final int humidity;
  final int temperature;
  final int level;

  int _cost;
  int _hen;

  String calculateBMI() {

    _hen= (13*(area)) * level;

    _cost = (area * 13 * 60 * level) + (area * 13 * 120 * level)  ;

    if (humidity <= 100 && humidity >= 0 &&
        area>= 0 && level>= 0){
      return _cost.toStringAsFixed(1)+ '_Tk \nfor Starting Month';
    }
    else {return 'invalid input';};
    
  }





  String getResult() {
    if (temperature > 15 && temperature < 40 && humidity > 45 && humidity < 65) {
      return 'ideal weather';
    } else if (temperature > 15 && temperature < 40 && humidity <= 45) {
      return 'dry weather';
    } else if (temperature > 15 && temperature < 40 && humidity >= 65) {
      return 'wet weather';
    } else if (temperature >= 40 && temperature <= 50) {
      return 'hot weather';
    } else if (temperature <= 15 && temperature >= 0) {
      return 'cold weather';
    } else if (temperature < 0 || temperature > 50) {
      return 'harsh weather';
    }

    else {
      return 'poultry farming impossible';
    }
  }

  String getInterpretation() {
    if (temperature >= 40 && temperature <= 50) {
      return 'temperatue control: Additional 15%~20% of the total cost';
    } else if (temperature <= 15 && temperature >= 0) {
      return 'temperatue control: Additional 10%~12% of the total cost';
    }else if (temperature > 15 && temperature < 40) {
      return 'temperatue control: There is no additional cost';
    }
    else {
      return 'Only the farming cost is displayed \n But it is not feasible to carry on farming on a micro level';
    }
  }

  String getInterpretation2() {
    if (humidity >= 65 && humidity <=100) {
      return 'Humidity control: Additional 15%~18% of the total cost';
    } else if (humidity <= 45 && humidity>= 0) {
      return 'Humidity control: Additional 10%~12% of the total cost';
    } else if (humidity > 45 && humidity < 65) {
      return 'Humidity control: There is no additional cost';
    } else if (humidity > 100 || humidity < 0) {
      return 'Humidity control: Unrealistic input given';
    } else if (temperature >= 50 || temperature<= 0) {
      return 'Humidity control: No need to calculate';
    }
    else {
      return 'Only the farming cost is displayed \n But it is not feasible to carry on farming on a micro level';
    }
  }
}
