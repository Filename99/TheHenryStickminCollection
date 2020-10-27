package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A2_Penny extends MovieClip
   {
       
      
      public function StD_A2_Penny()
      {
         super();
         addFrameScript(0,this.frame1,54,this.frame55,97,this.frame98);
      }
      
      function frame1() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame55() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_a2_penny_falcon");
         }
      }
      
      function frame98() : *
      {
         stop();
         if(StDMain.instance)
         {
            StDMain.instance.StartScene("StDDiamondAbove");
         }
      }
   }
}
