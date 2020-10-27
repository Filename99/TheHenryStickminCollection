package ComputerRoomScene_fla
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public dynamic class BGS_Keymain_10 extends MovieClip
   {
       
      
      public var keyy:SimpleButton;
      
      public function BGS_Keymain_10()
      {
         super();
         addFrameScript(0,this.frame1,26,this.frame27);
      }
      
      function frame1() : *
      {
         stop();
         if(ItAMain.instance && ItAMain.instance.goronStage > ItAMain.BiggoronNotStarted)
         {
            this.parent.removeChild(this);
         }
         else
         {
            addEventListener(MouseEvent.CLICK,function keyclick(param1:*):*
            {
               ItAMain.instance.SetBiggoronStage(ItAMain.BiggoronKeyGot);
               removeEventListener(MouseEvent.CLICK,keyclick);
               play();
            });
         }
      }
      
      function frame27() : *
      {
         this.enabled = false;
         stop();
      }
   }
}
