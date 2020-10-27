package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_B2_Lance extends MovieClip
   {
       
      
      public var bios_std:MovieClip;
      
      public function StD_B2_Lance()
      {
         super();
         addFrameScript(65,this.frame66,112,this.frame113);
      }
      
      function frame66() : *
      {
         Helpers.StopMusic("scooter1");
      }
      
      function frame113() : *
      {
         StDMain.instance.ShowFail("std_timed2lance","StDTimed2");
         stop();
      }
   }
}
