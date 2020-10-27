package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_C4_Satellite extends MovieClip
   {
       
      
      public function StD_C4_Satellite()
      {
         super();
         addFrameScript(319,this.frame320,323,this.frame324);
      }
      
      function frame320() : *
      {
         StDMain.instance.ShowFail("std_satellite","StDCCCChoice");
      }
      
      function frame324() : *
      {
         stop();
      }
   }
}
