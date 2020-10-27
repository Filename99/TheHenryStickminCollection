package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A5_Plank extends MovieClip
   {
       
      
      public function StD_A5_Plank()
      {
         super();
         addFrameScript(0,this.frame1,73,this.frame74,133,this.frame134,136,this.frame137,170,this.frame171,174,this.frame175,187,this.frame188);
      }
      
      function frame1() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame74() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_a5_plank_difjob");
         }
      }
      
      function frame134() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame137() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_a5_plank_rly");
         }
      }
      
      function frame171() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame175() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_a5_plank_yea");
         }
      }
      
      function frame188() : *
      {
         stop();
         if(StDMain.instance)
         {
            StDMain.instance.StartScene("StDBackdoor");
         }
      }
   }
}
