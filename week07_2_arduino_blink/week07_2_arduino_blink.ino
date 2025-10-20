//week07_2_arduino_blink_blink
void setup() {
  pinMode(12 ,OUTPUT);
  pinMode(13,OUTPUT);
}

void loop() {
  digitalWrite(12,LOW);
  digitalWrite(13,HIGH);
  delay(500);
  digitalWrite(13,LOW);
  digitalWrite(12,HIGH);
  delay(500);
}