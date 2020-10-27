package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.media.SoundMixer;
   
   public dynamic class StD_C1_WWIIRoom extends MovieClip
   {
       
      
      public var bomb:MovieClip;
      
      public var gun:MovieClip;
      
      public var paintingget:MovieClip;
      
      public var paintingget2:MovieClip;
      
      public var paintingget3:MovieClip;
      
      public var paintingget4:MovieClip;
      
      public var paintingget5:MovieClip;
      
      public var paintingget6:MovieClip;
      
      public var paintingget7:MovieClip;
      
      public var plane:MovieClip;
      
      public var self;
      
      public function StD_C1_WWIIRoom()
      {
         super();
         addFrameScript(0,this.frame1,94,this.frame95,137,this.frame138,139,this.frame140,191,this.frame192,194,this.frame195,226,this.frame227,237,this.frame238,263,this.frame264,270,this.frame271,297,this.frame298,308,this.frame309,333,this.frame334,359,this.frame360,369,this.frame370,418,this.frame419,426,this.frame427,442,this.frame443,449,this.frame450,451,this.frame452,513,this.frame514,520,this.frame521,602,this.frame603,606,this.frame607,655,this.frame656,661,this.frame662,738,this.frame739,778,this.frame779,799,this.frame800,835,this.frame836,894,this.frame895,932,this.frame933,999,this.frame1000,1006,this.frame1007,1069,this.frame1070,1075,this.frame1076,1121,this.frame1122,1123,this.frame1124,1139,this.frame1140,1150,this.frame1151);
      }
      
      public function gunbuttonClicked(param1:MouseEvent) : void
      {
         this.gun.removeEventListener(MouseEvent.CLICK,this.gunbuttonClicked);
         this.plane.removeEventListener(MouseEvent.CLICK,this.planebuttonClicked);
         this.bomb.removeEventListener(MouseEvent.CLICK,this.bombbuttonClicked);
         SoundMixer.stopAll();
         StDMain.instance.StartScene("StDGun");
         this.self.stop();
      }
      
      public function planebuttonClicked(param1:MouseEvent) : void
      {
         this.gun.removeEventListener(MouseEvent.CLICK,this.gunbuttonClicked);
         this.plane.removeEventListener(MouseEvent.CLICK,this.planebuttonClicked);
         this.bomb.removeEventListener(MouseEvent.CLICK,this.bombbuttonClicked);
         SoundMixer.stopAll();
         StDMain.instance.StartScene("StDPlane");
         this.self.stop();
      }
      
      public function bombbuttonClicked(param1:MouseEvent) : void
      {
         this.gun.removeEventListener(MouseEvent.CLICK,this.gunbuttonClicked);
         this.plane.removeEventListener(MouseEvent.CLICK,this.planebuttonClicked);
         this.bomb.removeEventListener(MouseEvent.CLICK,this.bombbuttonClicked);
         SoundMixer.stopAll();
         StDMain.instance.StartScene("StDBomb");
         this.self.stop();
      }
      
      function frame1() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame95() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_apparently");
         }
      }
      
      function frame138() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame140() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_somethingincakle");
         }
      }
      
      function frame192() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame195() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_usedtoeascape");
         }
      }
      
      function frame227() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame238() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_fired");
         }
      }
      
      function frame264() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame271() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_lame huh");
         }
      }
      
      function frame298() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame309() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_yeahidont");
         }
      }
      
      function frame334() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_yeahidont");
         }
      }
      
      function frame360() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame370() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_pleaseshut");
         }
      }
      
      function frame419() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame427() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_lohaha");
         }
      }
      
      function frame443() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame450() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_tryconversation");
         }
      }
      
      function frame452() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.SetPath("c",2);
         }
         this.gun.addEventListener(MouseEvent.CLICK,this.gunbuttonClicked);
         this.plane.addEventListener(MouseEvent.CLICK,this.planebuttonClicked);
         this.bomb.addEventListener(MouseEvent.CLICK,this.bombbuttonClicked);
         this.self = this;
         Helpers.CreateButton(this.gun,true,false);
         Helpers.CreateButton(this.plane,true,false);
         Helpers.CreateButton(this.bomb,true,false);
      }
      
      function frame514() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame521() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_yunno");
         }
      }
      
      function frame603() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame607() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_ijustwanted");
         }
      }
      
      function frame656() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame662() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_gettoknow");
         }
      }
      
      function frame739() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame779() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_yunno2");
         }
      }
      
      function frame800() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame836() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_justkinda");
         }
      }
      
      function frame895() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame933() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_lightenthiungsoup");
         }
      }
      
      function frame1000() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame1007() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_whathappenmuseum");
         }
      }
      
      function frame1070() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame1076() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_draft");
         }
      }
      
      function frame1122() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame1124() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_c1_wwiiroom_hey");
         }
      }
      
      function frame1140() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame1151() : *
      {
         StDMain.instance.ShowFail("std_timedwwii","ww2");
         stop();
      }
   }
}
