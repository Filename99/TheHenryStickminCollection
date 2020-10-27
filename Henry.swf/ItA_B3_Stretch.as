package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B3_Stretch extends MovieClip
   {
       
      
      public var bg:MovieClip;
      
      public function ItA_B3_Stretch()
      {
         super();
         addFrameScript(143,this.frame144);
      }
      
      function frame144() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_stretch","b3choice");
         }
         stop();
         this.bg.chains.stop();
         this.bg.pipe1.stop();
         this.bg.pipe2.stop();
         this.bg.pipe3.stop();
         this.bg.gear.stop();
         this.bg.gears.stop();
      }
   }
}
