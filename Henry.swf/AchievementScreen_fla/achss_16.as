package AchievementScreen_fla
{
   import com.innersloth.henry.AchMain;
   import flash.display.MovieClip;
   
   public dynamic class achss_16 extends MovieClip
   {
       
      
      public var lockbg:MovieClip;
      
      public var lockfg:MovieClip;
      
      public var locktext:MovieClip;
      
      public var ticketbg:MovieClip;
      
      public function achss_16()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
         if(AchMain.instance)
         {
            AchMain.instance.SetButtonState(this);
         }
      }
   }
}
