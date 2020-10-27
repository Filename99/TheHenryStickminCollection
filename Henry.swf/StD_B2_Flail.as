package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_B2_Flail extends MovieClip
   {
       
      
      public var bios_std:MovieClip;
      
      public function StD_B2_Flail()
      {
         super();
         addFrameScript(75,this.frame76,157,this.frame158);
      }
      
      function frame76() : *
      {
         Helpers.StopMusic("scooter1");
      }
      
      function frame158() : *
      {
         StDMain.instance.ShowFail("std_timed2flail","StDTimed2");
         stop();
      }
   }
}
