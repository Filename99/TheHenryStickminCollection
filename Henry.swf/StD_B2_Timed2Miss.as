package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_B2_Timed2Miss extends MovieClip
   {
       
      
      public var bios_std:MovieClip;
      
      public function StD_B2_Timed2Miss()
      {
         super();
         addFrameScript(18,this.frame19,47,this.frame48);
      }
      
      function frame19() : *
      {
         Helpers.StopMusic("scooter1");
      }
      
      function frame48() : *
      {
         StDMain.instance.ShowFail("std_timed2miss","StDTimed2");
         stop();
      }
   }
}
