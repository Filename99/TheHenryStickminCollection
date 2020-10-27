package
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   
   public dynamic class EtP_Teleporter extends MovieClip
   {
       
      
      public var bios_dave:MovieClip;
      
      public function EtP_Teleporter()
      {
         super();
         addFrameScript(0,this.frame1,164,this.frame165,192,this.frame193,205,this.frame206,220,this.frame221,232,this.frame233,302,this.frame303,305,this.frame306);
      }
      
      function frame1() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame165() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("teleporter_ready");
         }
      }
      
      function frame193() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame206() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("teleporter_fire");
         }
      }
      
      function frame221() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame233() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("teleporter_reactions1");
         }
      }
      
      function frame303() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
         EtPMain.instance.ShowFail("etp_teleporter","MainMenu");
      }
      
      function frame306() : *
      {
         stop();
      }
   }
}
