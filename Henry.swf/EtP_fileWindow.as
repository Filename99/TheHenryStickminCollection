package
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   
   public dynamic class EtP_fileWindow extends MovieClip
   {
       
      
      public function EtP_fileWindow()
      {
         super();
         addFrameScript(192,this.frame193,195,this.frame196);
      }
      
      function frame193() : *
      {
         EtPMain.instance.ShowFail("etp_fileWindow","MainMenu");
      }
      
      function frame196() : *
      {
         stop();
      }
   }
}
