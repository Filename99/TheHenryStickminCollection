package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_C7_Missile extends MovieClip
   {
       
      
      public var heli:MovieClip;
      
      public function ItA_C7_Missile()
      {
         super();
         addFrameScript(0,this.frame1,69,this.frame70,125,this.frame126,131,this.frame132,157,this.frame158,236,this.frame237);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame70() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c7_missile_hesfirin");
         }
      }
      
      function frame126() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame132() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c7_missile_returnfire");
         }
      }
      
      function frame158() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame237() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_missile","cfinalchoice");
         }
         stop();
         this.heli.ss.stop();
         this.heli.aa.stop();
      }
   }
}
