package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A3_Drop extends MovieClip
   {
       
      
      public function StD_A3_Drop()
      {
         super();
         addFrameScript(157,this.frame158);
      }
      
      function frame158() : *
      {
         StDMain.instance.ShowFail("std_drop","diamondabove");
         stop();
      }
   }
}
