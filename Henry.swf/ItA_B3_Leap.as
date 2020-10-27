package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B3_Leap extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public var dave:MovieClip;
      
      public function ItA_B3_Leap()
      {
         super();
         addFrameScript(0,this.frame1,49,this.frame50,108,this.frame109,139,this.frame140,143,this.frame144,193,this.frame194,206,this.frame207,245,this.frame246,355,this.frame356);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame50() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame109() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b3_leap_myapologies");
         }
      }
      
      function frame140() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame144() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b3_leap_hadtodeplo");
         }
      }
      
      function frame194() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame207() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b3_leap_aflockofd");
         }
      }
      
      function frame246() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
         if(ItAMain.instance && ItAMain.instance.goronStage >= ItAMain.BiggoronDaveUnlocked)
         {
            removeChild(this.dave);
         }
      }
      
      function frame356() : *
      {
         stop();
         if(ItAMain.instance)
         {
            if(ItAMain.instance.goronStage == ItAMain.BiggoronKeyGot)
            {
               ItAMain.instance.SetBiggoronStage(ItAMain.BiggoronDaveUnlocked);
               ItAMain.instance.StartScene("ItAFreeDave");
            }
            else
            {
               ItAMain.instance.StartScene("ItABrigVault");
            }
         }
      }
   }
}
