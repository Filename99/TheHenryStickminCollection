package
{
   import com.innersloth.henry.BtB.BtBMain;
   import flash.display.MovieClip;
   
   public dynamic class BtB_TeleporterScene extends MovieClip
   {
       
      
      public function BtB_TeleporterScene()
      {
         super();
         addFrameScript(256,this.frame257,274,this.frame275);
      }
      
      function frame257() : *
      {
         BtBMain.instance.ShowFail("teleporter");
      }
      
      function frame275() : *
      {
         stop();
      }
   }
}
