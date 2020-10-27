package
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   
   public dynamic class EtP_Jetpack extends MovieClip
   {
       
      
      public var bios_dave:MovieClip;
      
      public function EtP_Jetpack()
      {
         super();
         addFrameScript(0,this.frame1,407,this.frame408,446,this.frame447,462,this.frame463,465,this.frame466);
      }
      
      function frame1() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame408() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("jetpack_ohlookurback");
         }
      }
      
      function frame447() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame463() : *
      {
         EtPMain.instance.ShowFail("etp_jetpack","RoofChoice");
      }
      
      function frame466() : *
      {
         stop();
      }
   }
}
