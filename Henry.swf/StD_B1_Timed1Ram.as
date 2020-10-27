package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_B1_Timed1Ram extends MovieClip
   {
       
      
      public var p_datboi:MovieClip;
      
      public var p_hatty:MovieClip;
      
      public var p_hyrule:MovieClip;
      
      public var p_kek:MovieClip;
      
      public var p_pootis:MovieClip;
      
      public var paintingget:MovieClip;
      
      public var paintingget2:MovieClip;
      
      public var paintingget3:MovieClip;
      
      public var paintingget4:MovieClip;
      
      public var paintingget5:MovieClip;
      
      public var paintingget6:MovieClip;
      
      public var paintingget7:MovieClip;
      
      public function StD_B1_Timed1Ram()
      {
         super();
         addFrameScript(0,this.frame1,200,this.frame201,219,this.frame220,230,this.frame231,306,this.frame307,329,this.frame330,403,this.frame404);
      }
      
      function frame1() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame201() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b1_timed1ram_whoa");
         }
      }
      
      function frame220() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame231() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b1_timed1ram_breach");
         }
      }
      
      function frame307() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame330() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b1_timed1ram_prepare2engage");
         }
      }
      
      function frame404() : *
      {
         StDMain.instance.StartScene("StDTimed2");
         stop();
      }
   }
}
