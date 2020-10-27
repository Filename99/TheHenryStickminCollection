package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B2_Elevator extends MovieClip
   {
       
      
      public var keyy:MovieClip;
      
      public var ship:MovieClip;
      
      public function ItA_B2_Elevator()
      {
         super();
         addFrameScript(139,this.frame140);
      }
      
      function frame140() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_elevator","monitorroom");
         }
         stop();
         this.ship.aa.stop();
         this.ship.ss.stop();
         this.ship.dd.stop();
      }
   }
}
