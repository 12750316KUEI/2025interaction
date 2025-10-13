//week06_2_Example_Analyze_AudioWaveform
//它使用了Waveform的物件變數，來分析音樂

import processing.sound.*;

SoundFile sample;//宣告 SoundFile 物件變數
Waveform waveform;//宣告 Waveform 物件變數
int samples = 100;//一次讀入多少sample: 100個sample

public void setup() {
  size(640, 360);
  //background(255);

  sample = new SoundFile(this, "beat.aiff"); //讀入音樂檔
  sample.loop();//循環播放 vs 之前 .play()是只播放一次

  waveform = new Waveform(this, samples); //想用100格 分析音樂
  waveform.input(sample); //用剛剛的音樂檔 進行分析
}

public void draw() {
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  waveform.analyze(); // 進行波形分析
  
  beginShape();
  for(int i = 0; i < samples; i++){ //把這100格 的座標都算出來
    // Draw current data of the waveform
    // Each sample in the data array is between -1 and +1 
    vertex(
      map(i, 0, samples, 0, width), //x座標 對應0...100的值，拉長到視窗長度640
      map(waveform.data[i], -1, 1, 0, height) //y座標，就是waveform.data[i] 的值
    );
  }
  endShape();
}
