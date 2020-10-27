package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class StD_B4_Timed4 extends MovieClip
   {
       
      
      public var bios_std:MovieClip;
      
      public var branch:MovieClip;
      
      public var bubble:MovieClip;
      
      public var rock:MovieClip;
      
      public var snade:MovieClip;
      
      public function StD_B4_Timed4()
      {
         super();
         addFrameScript(143,this.frame144,171,this.frame172,213,this.frame214,216,this.frame217,413,this.frame414,417,this.frame418,484,this.frame485,512,this.frame513,526,this.frame527,591,this.frame592,730,this.frame731,759,this.frame760,786,this.frame787,832,this.frame833,833,this.frame834,836,this.frame837,977,this.frame978,980,this.frame981,1414,this.frame1415);
      }
      
      public function branchbuttonClicked(param1:MouseEvent) : void
      {
         this.branch.removeEventListener(MouseEvent.MOUSE_DOWN,this.branchbuttonClicked);
         this.rock.removeEventListener(MouseEvent.MOUSE_DOWN,this.rockbuttonClicked);
         gotoAndPlay("branch");
      }
      
      public function rockbuttonClicked(param1:MouseEvent) : void
      {
         this.branch.removeEventListener(MouseEvent.MOUSE_DOWN,this.branchbuttonClicked);
         this.rock.removeEventListener(MouseEvent.MOUSE_DOWN,this.rockbuttonClicked);
         gotoAndPlay("rock");
      }
      
      public function bubblebuttonClicked(param1:MouseEvent) : void
      {
         this.snade.removeEventListener(MouseEvent.MOUSE_DOWN,this.snadebuttonClicked);
         this.bubble.removeEventListener(MouseEvent.MOUSE_DOWN,this.bubblebuttonClicked);
         gotoAndPlay("bubble");
      }
      
      public function snadebuttonClicked(param1:MouseEvent) : void
      {
         this.snade.removeEventListener(MouseEvent.MOUSE_DOWN,this.snadebuttonClicked);
         this.bubble.removeEventListener(MouseEvent.MOUSE_DOWN,this.bubblebuttonClicked);
         gotoAndPlay("snade");
      }
      
      function frame144() : *
      {
         this.branch.addEventListener(MouseEvent.MOUSE_DOWN,this.branchbuttonClicked);
         this.rock.addEventListener(MouseEvent.MOUSE_DOWN,this.rockbuttonClicked);
         if(StDMain.instance)
         {
            StDMain.instance.SetPath("b",5);
         }
         Helpers.CreateButton(this.branch,true,false);
         Helpers.CreateButton(this.rock,true,false);
      }
      
      function frame172() : *
      {
         this.branch.removeEventListener(MouseEvent.CLICK,this.branchbuttonClicked);
         this.rock.removeEventListener(MouseEvent.CLICK,this.rockbuttonClicked);
      }
      
      function frame214() : *
      {
         StDMain.instance.ShowFail("std_timed4miss","StDTimed4");
      }
      
      function frame217() : *
      {
         stop();
      }
      
      function frame414() : *
      {
         StDMain.instance.ShowFail("std_timed4branch","StDTimed4");
      }
      
      function frame418() : *
      {
         stop();
      }
      
      function frame485() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b3_timed4_nojohnny");
         }
      }
      
      function frame513() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame527() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b3_timed4_officerdown");
         }
      }
      
      function frame592() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame731() : *
      {
         this.bubble.addEventListener(MouseEvent.MOUSE_DOWN,this.bubblebuttonClicked);
         this.snade.addEventListener(MouseEvent.MOUSE_DOWN,this.snadebuttonClicked);
         if(StDMain.instance)
         {
            StDMain.instance.SetPath("b",6);
         }
         Helpers.CreateButton(this.bubble,true,false);
         Helpers.CreateButton(this.snade,true,false);
      }
      
      function frame760() : *
      {
         removeEventListener(MouseEvent.CLICK,this.bubblebuttonClicked);
         removeEventListener(MouseEvent.CLICK,this.snadebuttonClicked);
      }
      
      function frame787() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b4_timed4_aussie");
         }
      }
      
      function frame833() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame834() : *
      {
         StDMain.instance.ShowFail("std_timed5miss","StDTimed5");
      }
      
      function frame837() : *
      {
         stop();
      }
      
      function frame978() : *
      {
         StDMain.instance.ShowFail("std_timed5snade","StDTimed5");
      }
      
      function frame981() : *
      {
         stop();
      }
      
      function frame1415() : *
      {
         stop();
         StDMain.instance.StartScene("StDTimed6");
      }
   }
}
