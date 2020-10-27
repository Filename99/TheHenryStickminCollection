package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A3_Platform extends MovieClip
   {
       
      
      public var bg2:MovieClip;
      
      public function ItA_A3_Platform()
      {
         super();
         addFrameScript(0,this.frame1,11,this.frame12,95,this.frame96,190,this.frame191);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame12() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a3_platform_okuhlet");
         }
      }
      
      function frame96() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame191() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_platform","engineroom");
         }
         stop();
         this.bg2.bg.chains.stop();
         this.bg2.bg.pipe1.stop();
         this.bg2.bg.pipe2.stop();
         this.bg2.bg.pipe3.stop();
         this.bg2.bg.gear.stop();
         this.bg2.bg.gears.stop();
      }
   }
}
