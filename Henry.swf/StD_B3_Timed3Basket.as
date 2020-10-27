package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_B3_Timed3Basket extends MovieClip
   {
       
      
      public function StD_B3_Timed3Basket()
      {
         super();
         addFrameScript(112,this.frame113);
      }
      
      function frame113() : *
      {
         StDMain.instance.ShowFail("std_timed3basket","StDTimed3");
         stop();
      }
   }
}
