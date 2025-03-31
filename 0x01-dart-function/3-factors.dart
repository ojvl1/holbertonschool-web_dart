int fact(int f) {
  if (f <= 0) return 1;
  return f == 1 ? 1 : f * fact(f - 1);
}