package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_B3_Timed3Fail extends MovieClip
   {
       
      
      public function StD_B3_Timed3Fail()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,41,this.frame42,46,this.frame47,85,this.frame86,95,this.frame96);
      }
      
      function frame1() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame6() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b3_timed3fail_freeze");
         }
      }
      
      function frame42() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame47() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b3_timed3fail_dont move");
         }
      }
      
      function frame86() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame96() : *
      {
         StDMain.instance.ShowFail("std_timed3miss","StDTimed3");
         stop();
      }
   }
}
