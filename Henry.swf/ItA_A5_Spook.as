package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A5_Spook extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_A5_Spook()
      {
         super();
         addFrameScript(0,this.frame1,25,this.frame26,73,this.frame74,126,this.frame127,180,this.frame181,181,this.frame182,184,this.frame185,234,this.frame235,239,this.frame240,302,this.frame303,314,this.frame315,417,this.frame418,513,this.frame514);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame26() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a5_spook_ohhellomr");
         }
      }
      
      function frame74() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame127() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a5_spook_alrightyou");
         }
      }
      
      function frame181() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame182() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame185() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a5_spook_theresnow");
         }
      }
      
      function frame235() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame240() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a5_spook_lotsofguys");
         }
      }
      
      function frame303() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame315() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a5_spook_iiiiitlooks");
         }
      }
      
      function frame418() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame514() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItAPowerVent");
         }
         stop();
      }
   }
}
