package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B1_Expandingfoam extends MovieClip
   {
       
      
      public var ship:MovieClip;
      
      public function ItA_B1_Expandingfoam()
      {
         super();
         addFrameScript(102,this.frame103);
      }
      
      function frame103() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_expandingfoam","deck");
         }
         stop();
         this.ship.aa.stop();
         this.ship.ss.stop();
         this.ship.dd.stop();
      }
   }
}
