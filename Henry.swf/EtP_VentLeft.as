package
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   
   public dynamic class EtP_VentLeft extends MovieClip
   {
       
      
      public var bios_sideburns:MovieClip;
      
      public var ventd1:MovieClip;
      
      public var ventd2:MovieClip;
      
      public var ventd3:MovieClip;
      
      public function EtP_VentLeft()
      {
         super();
         addFrameScript(0,this.frame1,19,this.frame20,127,this.frame128,134,this.frame135,167,this.frame168,183,this.frame184,202,this.frame203,206,this.frame207,259,this.frame260,268,this.frame269,302,this.frame303,317,this.frame318,386,this.frame387,398,this.frame399,402,this.frame403);
      }
      
      function frame1() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame20() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("ventleft_nowallinfavbor");
         }
      }
      
      function frame128() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame135() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("ventleft_aye");
         }
      }
      
      function frame168() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame184() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("ventleft_nay");
         }
      }
      
      function frame203() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame207() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("ventleft_shutupjanitor");
         }
      }
      
      function frame260() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame269() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("ventleft_nextitem");
         }
      }
      
      function frame303() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame318() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame387() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("ventleft_gethim");
         }
      }
      
      function frame399() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
         EtPMain.instance.ShowFail("etp_ventLeft","ClosetMenu");
      }
      
      function frame403() : *
      {
         stop();
      }
   }
}
