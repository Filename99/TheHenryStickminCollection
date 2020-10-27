package
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   
   public dynamic class EtP_Rocket extends MovieClip
   {
       
      
      public var bios_dave:MovieClip;
      
      public function EtP_Rocket()
      {
         super();
         addFrameScript(416,this.frame417,419,this.frame420);
      }
      
      function frame417() : *
      {
         EtPMain.instance.ShowFail("etp_rocket","MainMenu");
      }
      
      function frame420() : *
      {
         stop();
      }
   }
}
