package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B6_Shell extends MovieClip
   {
       
      
      public var bg:MovieClip;
      
      public function ItA_B6_Shell()
      {
         super();
         addFrameScript(152,this.frame153);
      }
      
      function frame153() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_shell","wingchoice");
         }
         stop();
         this.bg.stop();
      }
   }
}
