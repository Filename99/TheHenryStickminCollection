package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A7_Sleepinggas extends MovieClip
   {
       
      
      public var heli:MovieClip;
      
      public var ship:MovieClip;
      
      public function ItA_A7_Sleepinggas()
      {
         super();
         addFrameScript(160,this.frame161);
      }
      
      function frame161() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_sleepinggas","ItAAFinal");
         }
         stop();
         this.ship.aa.stop();
         this.ship.ss.stop();
         this.ship.dd.stop();
         this.heli.heli2.ss.stop();
         this.heli.heli2.dd.stop();
         this.heli.heli2.ff.stop();
      }
   }
}
