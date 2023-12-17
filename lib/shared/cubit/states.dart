import 'dart:ui';

abstract class AppStates{}

class AppInitialState extends AppStates{}

class AppChangeModeState extends AppStates{}

abstract class SlashAppStates{}

class CounterInitialStates extends SlashAppStates{}

class CounterPlusState extends SlashAppStates{
  final int counter;
  CounterPlusState(this.counter);
}

class CounterMinusState extends SlashAppStates{
  final int counter;
  CounterMinusState(this.counter);
}

class ChangeSelectedButtonState extends SlashAppStates{}

class ChangeUnSelectedButtonState extends SlashAppStates{}