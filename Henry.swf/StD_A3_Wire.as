package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A3_Wire extends MovieClip
   {
       
      
      public function StD_A3_Wire()
      {
         super();
         addFrameScript(54,this.frame55);
      }
      
      function frame55() : *
      {
         stop();
         if(StDMain.instance)
         {
            StDMain.instance.StartScene("StDDiamondSneak");
         }
      }
   }
}
