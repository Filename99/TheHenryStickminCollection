package
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   
   public dynamic class EtP_Grenades extends MovieClip
   {
       
      
      public var bios_dave:MovieClip;
      
      public var bios_sideburns:MovieClip;
      
      public function EtP_Grenades()
      {
         super();
         addFrameScript(0,this.frame1,71,this.frame72,99,this.frame100,186,this.frame187,211,this.frame212,228,this.frame229,237,this.frame238);
      }
      
      function frame1() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame72() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("grenades_yocheckyoself");
         }
      }
      
      function frame100() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame187() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("grenades_whathe");
         }
      }
      
      function frame212() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame229() : *
      {
         EtPMain.instance.ShowFail("etp_grenade","ClosetMenu");
      }
      
      function frame238() : *
      {
         stop();
      }
   }
}
