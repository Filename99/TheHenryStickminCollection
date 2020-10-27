package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_C4_RocketJump extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_C4_RocketJump()
      {
         super();
         addFrameScript(0,this.frame1,141,this.frame142,169,this.frame170,179,this.frame180,182,this.frame183,223,this.frame224);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame142() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c4_rocketjump_nonoget");
         }
      }
      
      function frame170() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame180() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame183() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c4_rocketjump_nowivegot");
         }
      }
      
      function frame224() : *
      {
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
            ItAMain.instance.StartScene("ItARHMChoice");
         }
      }
   }
}
