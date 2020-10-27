package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_C3_Mushroom extends MovieClip
   {
       
      
      public var bios_std:MovieClip;
      
      public var cactus:MovieClip;
      
      public function StD_C3_Mushroom()
      {
         super();
         addFrameScript(828,this.frame829);
      }
      
      function frame829() : *
      {
         StDMain.instance.StartScene("StDCCC");
         stop();
      }
   }
}
