//week06_4_arduino_slow_jogging
void setup() {
  // put your setup code here, to run once:
  pinMode(8,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  tone(8, 780, 60); // pin8, 780Hz, 60ms
  delay(333); //等0.333秒 換下個音
  tone(8, 320, 60); // pin8, 320Hz, 60ms
  delay(333); //等0.333秒 換下個音
}
