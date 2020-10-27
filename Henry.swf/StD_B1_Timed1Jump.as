package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_B1_Timed1Jump extends MovieClip
   {
       
      
      public function StD_B1_Timed1Jump()
      {
         super();
         addFrameScript(108,this.frame109);
      }
      
      function frame109() : *
      {
         StDMain.instance.ShowFail("std_timed1jump","StDTimed1");
         stop();
      }
   }
}
