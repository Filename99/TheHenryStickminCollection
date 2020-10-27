package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_C1_Bomb extends MovieClip
   {
       
      
      public var bios_std:MovieClip;
      
      public function StD_C1_Bomb()
      {
         super();
         addFrameScript(67,this.frame68,71,this.frame72);
      }
      
      function frame68() : *
      {
         StDMain.instance.ShowFail("std_bomb","ww2");
      }
      
      function frame72() : *
      {
         stop();
      }
   }
}
