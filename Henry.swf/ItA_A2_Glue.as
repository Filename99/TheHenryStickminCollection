package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A2_Glue extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_A2_Glue()
      {
         super();
         addFrameScript(0,this.frame1,75,this.frame76,97,this.frame98,100,this.frame101,121,this.frame122,125,this.frame126,196,this.frame197,205,this.frame206,272,this.frame273,280,this.frame281,374,this.frame375,420,this.frame421,444,this.frame445,478,this.frame479);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame76() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a2_glue_nawwecan");
         }
      }
      
      function frame98() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame101() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a2_glue_whynotman");
         }
      }
      
      function frame122() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame126() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a2_glue_youdoreali");
         }
      }
      
      function frame197() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame206() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a2_glue_dudewetot");
         }
      }
      
      function frame273() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame281() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a2_glue_wellimst");
         }
      }
      
      function frame375() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame421() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame445() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a2_glue_doorsjamme");
         }
      }
      
      function frame479() : *
      {
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItAEngineRoom");
         }
      }
   }
}
