package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A3_Wormhole extends MovieClip
   {
       
      
      public function StD_A3_Wormhole()
      {
         super();
         addFrameScript(314,this.frame315);
      }
      
      function frame315() : *
      {
         StDMain.instance.ShowFail("std_wormhole","diamondabove");
         stop();
      }
   }
}
