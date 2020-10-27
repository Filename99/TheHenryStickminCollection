package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A4_LaserCut extends MovieClip
   {
       
      
      public function StD_A4_LaserCut()
      {
         super();
         addFrameScript(134,this.frame135);
      }
      
      function frame135() : *
      {
         StDMain.instance.ShowFail("std_lasercut","diamondsneak");
         stop();
      }
   }
}
