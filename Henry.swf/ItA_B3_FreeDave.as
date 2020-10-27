package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B3_FreeDave extends MovieClip
   {
       
      
      public function ItA_B3_FreeDave()
      {
         super();
         addFrameScript(195,this.frame196);
      }
      
      function frame196() : *
      {
         stop();
         ItAMain.instance.StartScene("ItABrigVault");
      }
   }
}
