package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_B3_TowCable extends MovieClip
   {
       
      
      public function StD_B3_TowCable()
      {
         super();
         addFrameScript(0,this.frame1,19,this.frame20,76,this.frame77,105,this.frame106,106,this.frame107,109,this.frame110,168,this.frame169,171,this.frame172,205,this.frame206,208,this.frame209,223,this.frame224,229,this.frame230,297,this.frame298,305,this.frame306,402,this.frame403,467,this.frame468,482,this.frame483,500,this.frame501);
      }
      
      function frame1() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame20() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame77() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame106() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame107() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame110() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b3_timed3towcable_arrested");
         }
      }
      
      function frame169() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame172() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b3_timed3towcable_whoareally");
         }
      }
      
      function frame206() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame209() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b3_timed3towcable_yeah");
         }
      }
      
      function frame224() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame230() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b3_timed3towcable_diffjob");
         }
      }
      
      function frame298() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame306() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b3_timed3towcable_nightguard");
         }
      }
      
      function frame403() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame468() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b3_timed3towcable_crap");
         }
      }
      
      function frame483() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame501() : *
      {
         StDMain.instance.StartScene("StDTimed4");
         stop();
      }
   }
}
