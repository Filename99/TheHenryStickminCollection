package
{
   import com.innersloth.henry.BtB.BtBMain;
   import flash.display.MovieClip;
   
   public dynamic class BtB_ExplosivesScene extends MovieClip
   {
       
      
      public function BtB_ExplosivesScene()
      {
         super();
         addFrameScript(198,this.frame199,225,this.frame226);
      }
      
      function frame199() : *
      {
         BtBMain.instance.ShowFail("explosives");
      }
      
      function frame226() : *
      {
         stop();
      }
   }
}
