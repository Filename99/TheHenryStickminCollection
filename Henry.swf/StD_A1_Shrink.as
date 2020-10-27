package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A1_Shrink extends MovieClip
   {
       
      
      public function StD_A1_Shrink()
      {
         super();
         addFrameScript(365,this.frame366);
      }
      
      function frame366() : *
      {
         StDMain.instance.ShowFail("std_shrinkray","sneakinmain");
         stop();
      }
   }
}
