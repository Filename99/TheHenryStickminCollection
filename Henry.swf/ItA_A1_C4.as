package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A1_C4 extends MovieClip
   {
       
      
      public var ship:MovieClip;
      
      public function ItA_A1_C4()
      {
         super();
         addFrameScript(139,this.frame140);
      }
      
      function frame140() : *
      {
         this.ship.aa.stop();
         this.ship.ss.stop();
         this.ship.dd.stop();
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_c4","airshiptop");
         }
      }
   }
}
