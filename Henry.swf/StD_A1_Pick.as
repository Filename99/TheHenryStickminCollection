package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A1_Pick extends MovieClip
   {
       
      
      public function StD_A1_Pick()
      {
         super();
         addFrameScript(92,this.frame93);
      }
      
      function frame93() : *
      {
         stop();
         if(StDMain.instance)
         {
            StDMain.instance.StartScene("StDWW2Room");
         }
      }
   }
}
