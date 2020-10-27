package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_C3_Pokeball extends MovieClip
   {
       
      
      public function StD_C3_Pokeball()
      {
         super();
         addFrameScript(648,this.frame649,652,this.frame653);
      }
      
      function frame649() : *
      {
         StDMain.instance.ShowFail("std_goodball","retro");
      }
      
      function frame653() : *
      {
         stop();
      }
   }
}
