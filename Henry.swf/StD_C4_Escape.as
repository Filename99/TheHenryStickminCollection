package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_C4_Escape extends MovieClip
   {
       
      
      public function StD_C4_Escape()
      {
         super();
         addFrameScript(563,this.frame564);
      }
      
      function frame564() : *
      {
         stop();
         if(StDMain.instance)
         {
            StDMain.instance.StartScene("StDEpicEnd");
         }
      }
   }
}
