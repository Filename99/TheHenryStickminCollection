package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B6_Umbrella extends MovieClip
   {
       
      
      public var bg:MovieClip;
      
      public function ItA_B6_Umbrella()
      {
         super();
         addFrameScript(145,this.frame146);
      }
      
      function frame146() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_umbrella","wingchoice");
         }
         stop();
         this.bg.stop();
      }
   }
}
