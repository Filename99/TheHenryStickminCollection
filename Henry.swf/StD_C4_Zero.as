package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_C4_Zero extends MovieClip
   {
       
      
      public function StD_C4_Zero()
      {
         super();
         addFrameScript(476,this.frame477,480,this.frame481);
      }
      
      function frame477() : *
      {
         StDMain.instance.ShowFail("std_zero","StDCCCChoice");
      }
      
      function frame481() : *
      {
         stop();
      }
   }
}
