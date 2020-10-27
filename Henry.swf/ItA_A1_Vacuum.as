package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A1_Vacuum extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_A1_Vacuum()
      {
         super();
         addFrameScript(184,this.frame185,221,this.frame222,244,this.frame245,248,this.frame249,324,this.frame325,327,this.frame328,388,this.frame389,393,this.frame394,458,this.frame459,476,this.frame477,560,this.frame561,570,this.frame571,597,this.frame598);
      }
      
      function frame185() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
         this.mouseEnabled = false;
      }
      
      function frame222() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a1_vacuum_heygoodjob");
         }
      }
      
      function frame245() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame249() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a1_vacuum_ohuhsoy");
         }
      }
      
      function frame325() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame328() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a1_vacuum_somethingth");
         }
      }
      
      function frame389() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame394() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a1_vacuum_imeanthat");
         }
      }
      
      function frame459() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame477() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a1_vacuum_alrightgent");
         }
      }
      
      function frame561() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame571() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a1_vacuum_anyideas");
         }
      }
      
      function frame598() : *
      {
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItABoardroom");
         }
      }
   }
}
