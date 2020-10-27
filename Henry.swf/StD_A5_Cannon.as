package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A5_Cannon extends MovieClip
   {
       
      
      public function StD_A5_Cannon()
      {
         super();
         addFrameScript(329,this.frame330);
      }
      
      function frame330() : *
      {
         StDMain.instance.ShowFail("std_cannon","storage");
         stop();
      }
   }
}
