
#include <RGBLed.h>

RGBLed led(11, 10, 9, COMMON_CATHODE);


void setup()
{
  
  Serial.begin(9600);
}

void loop()
{ float i;
  for(i=380;i<=780;i++){
    generateRGB(i);  
  }
  
}

void generateRGB(float i){
    float r=0;
    float g=0;
    float b=0;
    const float gamma = 0.80;
    const float depth = 255;
    if (i >= 380 && i <= 440) {
        r = -1 * (i - 440) / (440 - 380);
        b = 1;
        
    }
    else if (i >= 440 && i <= 490 ) {
        g = (i - 440) / (490 - 440);
        b = 1;
    }
    else if (i >= 490 && i <= 510 ) {
        g = 1;
        b = -1 * (i - 510) / (510 - 490);
    }
    else if (i >= 510 && i <= 580 ) {
        r = (i - 510) / (580 - 510);
        g = 1;
    }
    else if (i >= 580 && i <= 645 ) {
        r = 1;
        g = -1 * (i - 645) / (645 - 580);
    }
    else if (i >= 645 && i <= 780 ) {
        r = 1;
    }

    // LET THE INTENSITY SSS FALL OFF NEAR THE VISION LIMITS
    float sss = 1;
    if (i > 700) {
        sss = 0.3 + 0.7 * (780 - i) / (780 - 700);
    }
    else if (i < 420) {
        sss = 0.3 + 0.7 * (i - 380) / (420 - 380);
    }

    // GAMMA ADJUST AND WRITE IMAGE TO AN ARRAY
    r =floor(depth * (pow((sss * r),gamma)));
    g =floor(depth * (pow((sss * g),gamma)));
    b =floor(depth * (pow((sss * b),gamma)));
   
    Serial.println(r);
    Serial.println(g);
    Serial.println(b);
 
   
     led.setColor(r, g,b);
     delay(40);
}
