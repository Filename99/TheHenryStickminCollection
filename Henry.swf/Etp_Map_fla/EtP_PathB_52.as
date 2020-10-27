package Etp_Map_fla
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   
   public dynamic class EtP_PathB_52 extends MovieClip
   {
       
      
      public var cellphone:MovieClip;
      
      public var cellphoneFailCount:MovieClip;
      
      public var legalend:MovieClip;
      
      public function EtP_PathB_52()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      function frame1() : *
      {
         stop();
         EtPMain.instance.SetupMapButton(this.cellphone,"etp_courtroom","Evidence");
         EtPMain.instance.SetupMapButton(this.legalend,"etp_endlegal",null);
      }
      
      function frame2() : *
      {
         stop();
         EtPMain.instance.SetupMapButton(this.cellphone,"etp_courtroom","Evidence");
         EtPMain.instance.SetupMapButton(this.legalend,"etp_endlegal",null);
      }
      
      function frame3() : *
      {
         stop();
         EtPMain.instance.SetupMapButton(this.cellphone,"etp_courtroom","Evidence");
         EtPMain.instance.SetupMapButton(this.legalend,"etp_endlegal",null);
      }
   }
}
