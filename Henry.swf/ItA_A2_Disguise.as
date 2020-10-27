package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A2_Disguise extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public var ship:MovieClip;
      
      public function ItA_A2_Disguise()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7,69,this.frame70,77,this.frame78,97,this.frame98,110,this.frame111,156,this.frame157,162,this.frame163,187,this.frame188,234,this.frame235,301,this.frame302,311,this.frame312,376,this.frame377,404,this.frame405,420,this.frame421,432,this.frame433,468,this.frame469,542,this.frame543);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame7() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a2_disguise_alrightsoi");
         }
      }
      
      function frame70() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame78() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a2_disguise_heyyouther");
         }
      }
      
      function frame98() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame111() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a2_disguise_whatdoyou");
         }
      }
      
      function frame157() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame163() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a2_disguise_itssmith");
         }
      }
      
      function frame188() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame235() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a2_disguise_whatareyou");
         }
      }
      
      function frame302() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame312() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a2_disguise_takethates");
         }
      }
      
      function frame377() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame405() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a2_disguise_goahead");
         }
      }
      
      function frame421() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame433() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a2_disguise_dontworry");
         }
      }
      
      function frame469() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame543() : *
      {
         this.ship.aa.stop();
         this.ship.ss.stop();
         this.ship.dd.stop();
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_disguise","boardroomchoice");
         }
      }
   }
}
