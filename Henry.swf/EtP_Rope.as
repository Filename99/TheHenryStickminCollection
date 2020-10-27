package
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   
   public dynamic class EtP_Rope extends MovieClip
   {
       
      
      public function EtP_Rope()
      {
         super();
         addFrameScript(544,this.frame545,548,this.frame549);
      }
      
      function frame545() : *
      {
         EtPMain.instance.ShowFail("etp_rope","RoofChoice");
      }
      
      function frame549() : *
      {
         stop();
      }
   }
}
