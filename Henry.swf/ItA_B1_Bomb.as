package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B1_Bomb extends MovieClip
   {
       
      
      public var ship:MovieClip;
      
      public function ItA_B1_Bomb()
      {
         super();
         addFrameScript(179,this.frame180);
      }
      
      function frame180() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_bomb","deck");
         }
         stop();
         this.ship.aa.stop();
         this.ship.ss.stop();
         this.ship.dd.stop();
      }
   }
}
