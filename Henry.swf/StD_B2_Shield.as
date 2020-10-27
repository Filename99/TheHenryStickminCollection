package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   import flash.media.SoundMixer;
   
   public dynamic class StD_B2_Shield extends MovieClip
   {
       
      
      public var bios_std:MovieClip;
      
      public function StD_B2_Shield()
      {
         super();
         addFrameScript(159,this.frame160,215,this.frame216);
      }
      
      function frame160() : *
      {
         Helpers.StopMusic("scooter1");
      }
      
      function frame216() : *
      {
         SoundMixer.stopAll();
         StDMain.instance.StartScene("StDTimed3");
         stop();
      }
   }
}
