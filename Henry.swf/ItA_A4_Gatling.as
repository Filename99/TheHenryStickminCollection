package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A4_Gatling extends MovieClip
   {
       
      
      public var bg2:MovieClip;
      
      public var bios_ita:MovieClip;
      
      public function ItA_A4_Gatling()
      {
         super();
         addFrameScript(0,this.frame1,11,this.frame12,64,this.frame65,112,this.frame113,145,this.frame146);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame12() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a4_gatling_alriiiight");
         }
      }
      
      function frame65() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame113() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a4_gatling_youshouldb");
         }
      }
      
      function frame146() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
         stop();
         this.bg2.bg.chains.stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_gatling","rampchoice");
         }
      }
   }
}
