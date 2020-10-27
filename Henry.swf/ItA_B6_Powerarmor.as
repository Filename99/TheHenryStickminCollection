package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B6_Powerarmor extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_B6_Powerarmor()
      {
         super();
         addFrameScript(0,this.frame1,560,this.frame561,608,this.frame609,779,this.frame780,820,this.frame821,830,this.frame831,870,this.frame871,876,this.frame877,920,this.frame921,925,this.frame926,956,this.frame957,966,this.frame967,998,this.frame999,1037,this.frame1038);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame561() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b6_powerarmor_moveoutmen");
         }
      }
      
      function frame609() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame780() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b6_powerarmor_wilsonwev");
         }
      }
      
      function frame821() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame831() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b6_powerarmor_wevegotch");
         }
      }
      
      function frame871() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame877() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b6_powerarmor_werenotbu");
         }
      }
      
      function frame921() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame926() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b6_powerarmor_goevacuate");
         }
      }
      
      function frame957() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame967() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b6_powerarmor_icantakec");
         }
      }
      
      function frame999() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame1038() : *
      {
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItACCC");
         }
      }
   }
}
