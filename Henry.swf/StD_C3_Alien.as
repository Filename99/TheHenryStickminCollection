package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_C3_Alien extends MovieClip
   {
       
      
      public function StD_C3_Alien()
      {
         super();
         addFrameScript(193,this.frame194,197,this.frame198);
      }
      
      function frame194() : *
      {
         StDMain.instance.ShowFail("std_alien","retro");
      }
      
      function frame198() : *
      {
         stop();
      }
   }
}
