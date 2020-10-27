package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A2_FPunch extends MovieClip
   {
       
      
      public function StD_A2_FPunch()
      {
         super();
         addFrameScript(0,this.frame1,16,this.frame17,38,this.frame39,43,this.frame44,65,this.frame66,86,this.frame87,110,this.frame111,145,this.frame146);
      }
      
      function frame1() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame17() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_a2_fpunch_falcon");
         }
      }
      
      function frame39() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame44() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_a2_fpunch_punch");
         }
      }
      
      function frame66() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame87() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_a2_fpunch_ch");
         }
      }
      
      function frame111() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame146() : *
      {
         StDMain.instance.ShowFail("std_fpunch","rooftop");
         stop();
      }
   }
}
