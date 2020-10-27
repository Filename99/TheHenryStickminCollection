package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A1_Keypad extends MovieClip
   {
       
      
      public var butt1:MovieClip;
      
      public var butt2:MovieClip;
      
      public var butt4:MovieClip;
      
      public function ItA_A1_Keypad()
      {
         super();
         addFrameScript(0,this.frame1,8,this.frame9,14,this.frame15,21,this.frame22,30,this.frame31,122,this.frame123,138,this.frame139);
      }
      
      function frame1() : *
      {
         stop();
         this.mouseEnabled = false;
         this.butt1.correct = "num1";
      }
      
      function frame9() : *
      {
         stop();
         this.butt1.correct = null;
         this.butt2.correct = "num2";
      }
      
      function frame15() : *
      {
         stop();
         this.butt1.correct = "num3";
         this.butt2.correct = null;
      }
      
      function frame22() : *
      {
         stop();
         this.butt1.correct = null;
         this.butt4.correct = "num4";
      }
      
      function frame31() : *
      {
         this.butt4.correct = null;
      }
      
      function frame123() : *
      {
         stop();
         ItAMain.instance.SetBiggoronStage(ItAMain.BiggoronCodeUsed);
         ItAMain.instance.StartScene("ItABoardroom");
      }
      
      function frame139() : *
      {
         gotoAndStop(1);
      }
   }
}
