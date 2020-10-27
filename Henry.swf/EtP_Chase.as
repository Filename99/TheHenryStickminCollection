package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class EtP_Chase extends MovieClip
   {
       
      
      public var bios_sideburns:MovieClip;
      
      public var onedown:MovieClip;
      
      public var oneup:MovieClip;
      
      public var showdown:MovieClip;
      
      public var twodown:MovieClip;
      
      public var twoleft:MovieClip;
      
      public function EtP_Chase()
      {
         super();
         addFrameScript(0,this.frame1,101,this.frame102,131,this.frame132,191,this.frame192,195,this.frame196,213,this.frame214,267,this.frame268,270,this.frame271,271,this.frame272,490,this.frame491,537,this.frame538,561,this.frame562,565,this.frame566,586,this.frame587,601,this.frame602,613,this.frame614,616,this.frame617,794,this.frame795,870,this.frame871,1231,this.frame1232,1247,this.frame1248,1260,this.frame1261,1265,this.frame1266,2050,this.frame2051);
      }
      
      public function oneupButtonClicked(param1:MouseEvent) : void
      {
         gotoAndPlay("c1");
      }
      
      public function onedownButtonClicked(param1:MouseEvent) : void
      {
         gotoAndPlay("d1");
      }
      
      public function twodownButtonClicked(param1:MouseEvent) : void
      {
         gotoAndPlay("e1");
      }
      
      public function twoleftButtonClicked(param1:MouseEvent) : void
      {
         gotoAndPlay("f1");
      }
      
      public function showdownButtonClicked(param1:MouseEvent) : void
      {
         gotoAndPlay("Matrix");
      }
      
      function frame1() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.SetPath("c",3);
         }
         Helpers.StartMusic("dnb",DrumBassSong,0.5);
      }
      
      function frame102() : *
      {
         this.oneup.addEventListener(MouseEvent.CLICK,this.oneupButtonClicked);
         this.onedown.addEventListener(MouseEvent.CLICK,this.onedownButtonClicked);
      }
      
      function frame132() : *
      {
         Helpers.StopMusic("dnb");
      }
      
      function frame192() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.ShowFail("etp_chase1Time","EtPChase");
         }
      }
      
      function frame196() : *
      {
         stop();
      }
      
      function frame214() : *
      {
         Helpers.StopMusic("dnb");
      }
      
      function frame268() : *
      {
         EtPMain.instance.ShowFail("etp_chase1Up","EtPChase");
      }
      
      function frame271() : *
      {
         stop();
      }
      
      function frame272() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.SetPath("c",4);
         }
         Helpers.StartMusic("dnb",DrumBassSong,0.5);
      }
      
      function frame491() : *
      {
         this.twodown.addEventListener(MouseEvent.CLICK,this.twodownButtonClicked);
         this.twoleft.addEventListener(MouseEvent.CLICK,this.twoleftButtonClicked);
      }
      
      function frame538() : *
      {
         Helpers.StopMusic("dnb");
      }
      
      function frame562() : *
      {
         EtPMain.instance.ShowFail("etp_chase2Time","d1");
      }
      
      function frame566() : *
      {
         stop();
      }
      
      function frame587() : *
      {
         Helpers.StopMusic("dnb");
      }
      
      function frame602() : *
      {
         if(AchMain.instance)
         {
            AchMain.instance.Unlock(stage,"etp_brawl");
         }
      }
      
      function frame614() : *
      {
         EtPMain.instance.ShowFail("etp_chase2Down","d1");
      }
      
      function frame617() : *
      {
         stop();
      }
      
      function frame795() : *
      {
         Helpers.StopMusic("dnb");
      }
      
      function frame871() : *
      {
         EtPMain.instance.SetPath("c",5);
      }
      
      function frame1232() : *
      {
         this.showdown.addEventListener(MouseEvent.CLICK,this.showdownButtonClicked);
         this.bios_sideburns.addEventListener(MouseEvent.CLICK,this.showdownButtonClicked);
      }
      
      function frame1248() : *
      {
         this.bios_sideburns.removeEventListener(MouseEvent.CLICK,this.showdownButtonClicked);
      }
      
      function frame1261() : *
      {
         EtPMain.instance.ShowFail("etp_timedFinal","showdown");
      }
      
      function frame1266() : *
      {
         stop();
      }
      
      function frame2051() : *
      {
         EtPMain.instance.SetPath("c",6);
         stop();
      }
   }
}
