package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_B1_Timed1Miss extends MovieClip
   {
       
      
      public function StD_B1_Timed1Miss()
      {
         super();
         addFrameScript(101,this.frame102);
      }
      
      function frame102() : *
      {
         StDMain.instance.ShowFail("std_timed1miss","StDTimed1");
         stop();
      }
   }
}
