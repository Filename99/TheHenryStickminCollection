package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A4_Remote extends MovieClip
   {
       
      
      public var bg:MovieClip;
      
      public var bios_ita:MovieClip;
      
      public function ItA_A4_Remote()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,138,this.frame139,156,this.frame157,182,this.frame183);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame5() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a4_remote_alrightuh");
         }
      }
      
      function frame139() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame157() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame183() : *
      {
         stop();
         this.bg.chains.stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_remote","rampchoice");
         }
      }
   }
}
