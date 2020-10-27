package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_C4_Robot extends MovieClip
   {
       
      
      public function StD_C4_Robot()
      {
         super();
         addFrameScript(779,this.frame780);
      }
      
      function frame780() : *
      {
         stop();
         if(StDMain.instance)
         {
            StDMain.instance.StartScene("StDEscape");
         }
      }
   }
}
