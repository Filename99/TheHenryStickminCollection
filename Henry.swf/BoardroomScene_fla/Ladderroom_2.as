package BoardroomScene_fla
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class Ladderroom_2 extends MovieClip
   {
       
      
      public var keypad:MovieClip;
      
      public function Ladderroom_2()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance && ItAMain.instance.goronStage == ItAMain.BiggoronCodeGot)
         {
            this.keypad.addEventListener(MouseEvent.CLICK,function keyclick(param1:*):*
            {
               MovieClip(parent).stop();
               ItAMain.instance.StartScene("ItAKeypad");
               removeEventListener(MouseEvent.CLICK,keyclick);
            });
         }
      }
   }
}
