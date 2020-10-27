package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A3_Charles extends MovieClip
   {
       
      
      public var bg2:MovieClip;
      
      public var bios_ita:MovieClip;
      
      public var heli:MovieClip;
      
      public function ItA_A3_Charles()
      {
         super();
         addFrameScript(0,this.frame1,16,this.frame17,50,this.frame51,64,this.frame65,118,this.frame119);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame17() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a3_charles_alriiighthe");
         }
      }
      
      function frame51() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame65() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a3_charles_singingfan");
         }
      }
      
      function frame119() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_charles","engineroom");
         }
         stop();
         this.heli.blade.stop();
         this.bg2.bg.chains.stop();
         this.bg2.bg.pipe1.stop();
         this.bg2.bg.pipe2.stop();
         this.bg2.bg.pipe3.stop();
         this.bg2.bg.gear.stop();
         this.bg2.bg.gears.stop();
      }
   }
}
