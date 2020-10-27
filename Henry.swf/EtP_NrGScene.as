package
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   public dynamic class EtP_NrGScene extends MovieClip
   {
       
      
      public var bios_dave:MovieClip;
      
      public var bios_sideburns:MovieClip;
      
      public var nrgdonut:MovieClip;
      
      public var wanted:SimpleButton;
      
      public function EtP_NrGScene()
      {
         super();
         addFrameScript(1386,this.frame1387,1389,this.frame1390);
      }
      
      function frame1387() : *
      {
         EtPMain.instance.ShowFail("etp_nrg","MainMenu");
      }
      
      function frame1390() : *
      {
         stop();
      }
   }
}
