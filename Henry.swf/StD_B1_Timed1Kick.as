package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_B1_Timed1Kick extends MovieClip
   {
       
      
      public function StD_B1_Timed1Kick()
      {
         super();
         addFrameScript(108,this.frame109);
      }
      
      function frame109() : *
      {
         StDMain.instance.ShowFail("std_timed1kick","StDTimed1");
         stop();
      }
   }
}
