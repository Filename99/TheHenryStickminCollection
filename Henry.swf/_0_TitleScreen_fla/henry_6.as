package _0_TitleScreen_fla
{
   import com.innersloth.henry.MainScene;
   import flash.display.MovieClip;
   
   public dynamic class henry_6 extends MovieClip
   {
       
      
      public function henry_6()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,10,this.frame11,15,this.frame16,20,this.frame21,25,this.frame26);
      }
      
      function frame1() : *
      {
         stop();
         if(MainScene.instance)
         {
            gotoAndStop(MainScene.instance.CurrentFrameString());
         }
      }
      
      function frame6() : *
      {
         stop();
      }
      
      function frame11() : *
      {
         stop();
      }
      
      function frame16() : *
      {
         stop();
      }
      
      function frame21() : *
      {
         stop();
      }
      
      function frame26() : *
      {
         stop();
      }
   }
}
