package
{
   import com.innersloth.henry.BtB.BtBMain;
   import flash.display.MovieClip;
   
   public dynamic class BtB_ShovelScene extends MovieClip
   {
       
      
      public function BtB_ShovelScene()
      {
         super();
         addFrameScript(401,this.frame402,412,this.frame413);
      }
      
      function frame402() : *
      {
         BtBMain.instance.ShowFail("shovel");
      }
      
      function frame413() : *
      {
         stop();
      }
   }
}
