package
{
   import com.innersloth.henry.BtB.BtBMain;
   import flash.display.MovieClip;
   
   public dynamic class BtB_LaserScene extends MovieClip
   {
       
      
      public function BtB_LaserScene()
      {
         super();
         addFrameScript(139,this.frame140,150,this.frame151);
      }
      
      function frame140() : *
      {
         BtBMain.instance.ShowFail("laser");
      }
      
      function frame151() : *
      {
         stop();
      }
   }
}
