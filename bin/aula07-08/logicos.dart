void main() {
  var shift = 2 << 1;
  print(2.toRadixString(2).padLeft(8, '0')); // > 00101010
  print(shift); // > 104
  print(shift.toRadixString(2).padLeft(8, '0')); // > 00010101
 
  var shift1 = -42 >>> 1;
  print((-42).toRadixString(2).padLeft(8, '0')); // > 0-101010
  print(shift1); // > 9223372036854775787
  print(shift1.toRadixString(2));
// > 111111111111111111111111111111111111111111111111111111111101011
}



