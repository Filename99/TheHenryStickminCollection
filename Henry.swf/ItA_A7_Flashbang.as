package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A7_Flashbang extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public var heli:MovieClip;
      
      public var ship:MovieClip;
      
      public function ItA_A7_Flashbang()
      {
         super();
         addFrameScript(0,this.frame1,12,this.frame13,41,this.frame42,160,this.frame161);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame13() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a7_flashbang_fireinthe");
         }
      }
      
      function frame42() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame161() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_flashbang","afinalchoice");
         }
         stop();
         this.ship.aa.stop();
         this.ship.ss.stop();
         this.ship.dd.stop();
         this.heli.ss.stop();
         this.heli.dd.stop();
      }
   }
}
