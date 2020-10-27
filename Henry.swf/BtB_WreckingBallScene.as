package
{
   import com.innersloth.henry.BtB.BtBMain;
   import flash.display.MovieClip;
   
   public dynamic class BtB_WreckingBallScene extends MovieClip
   {
       
      
      public var bios_guard1:MovieClip;
      
      public function BtB_WreckingBallScene()
      {
         super();
         addFrameScript(280,this.frame281,301,this.frame302);
      }
      
      function frame281() : *
      {
         BtBMain.instance.ShowFail("wreckingball");
      }
      
      function frame302() : *
      {
         stop();
      }
   }
}
