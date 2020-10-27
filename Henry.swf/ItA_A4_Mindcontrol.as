package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A4_Mindcontrol extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_A4_Mindcontrol()
      {
         super();
         addFrameScript(0,this.frame1,36,this.frame37,85,this.frame86,94,this.frame95,138,this.frame139,216,this.frame217,236,this.frame237,243,this.frame244);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame37() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a4_mindcontrol_wowthisgu");
         }
      }
      
      function frame86() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame95() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a4_mindcontrol_cantbeliev");
         }
      }
      
      function frame139() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame217() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a4_mindcontrol_woops");
         }
      }
      
      function frame237() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame244() : *
      {
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_mindcontrol","rampchoice");
         }
      }
   }
}
