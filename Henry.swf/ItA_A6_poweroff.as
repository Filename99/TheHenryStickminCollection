package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A6_poweroff extends MovieClip
   {
       
      
      public var ship:MovieClip;
      
      public function ItA_A6_poweroff()
      {
         super();
         addFrameScript(154,this.frame155);
      }
      
      function frame155() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_poweroff","ItAPowerVent");
         }
         stop();
         this.ship.aa.stop();
         this.ship.ss.stop();
      }
   }
}
