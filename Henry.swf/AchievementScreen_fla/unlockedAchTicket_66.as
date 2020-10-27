package AchievementScreen_fla
{
   import com.innersloth.Helpers;
   import flash.display.MovieClip;
   
   public dynamic class unlockedAchTicket_66 extends MovieClip
   {
       
      
      public var lockbg:MovieClip;
      
      public var locktext:MovieClip;
      
      public var value:String;
      
      public function unlockedAchTicket_66()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         this.value = this["value"] || "btb_car";
         Helpers.TryGotoAndStop(this.lockbg,this.value);
         Helpers.TryGotoAndStop(this.locktext,this.value);
      }
   }
}
