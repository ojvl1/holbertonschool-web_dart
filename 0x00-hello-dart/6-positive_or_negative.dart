void main(List<String> args) {
  int number = int.parse(args[0]);
  print('$number is ' + (number > 0 ? 'positive' : number < 0 ? 'negative' : 'zero'));
}