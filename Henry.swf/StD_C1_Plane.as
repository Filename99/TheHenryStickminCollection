package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_C1_Plane extends MovieClip
   {
       
      
      public var bios_std:MovieClip;
      
      public function StD_C1_Plane()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,63,this.frame64,90,this.frame91,109,this.frame110);
      }
      
      function frame1() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame2() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame64() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_plane_gottawarm");
         }
      }
      
      function frame91() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame110() : *
      {
         StDMain.instance.StartScene("StDSleeping");
         stop();
      }
   }
}
