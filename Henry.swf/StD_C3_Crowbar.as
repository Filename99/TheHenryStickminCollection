package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_C3_Crowbar extends MovieClip
   {
       
      
      public function StD_C3_Crowbar()
      {
         super();
         addFrameScript(290,this.frame291,294,this.frame295);
      }
      
      function frame291() : *
      {
         StDMain.instance.ShowFail("std_crowbar","retro");
      }
      
      function frame295() : *
      {
         stop();
      }
   }
}
