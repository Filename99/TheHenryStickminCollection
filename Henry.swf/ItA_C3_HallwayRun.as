package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.media.SoundMixer;
   
   public dynamic class ItA_C3_HallwayRun extends MovieClip
   {
       
      
      public var beans:MovieClip;
      
      public var bios_ita:MovieClip;
      
      public var metalfist:MovieClip;
      
      public var warp:MovieClip;
      
      public function ItA_C3_HallwayRun()
      {
         super();
         addFrameScript(0,this.frame1,67,this.frame68,80,this.frame81,124,this.frame125,220,this.frame221,248,this.frame249,259,this.frame260,286,this.frame287,361,this.frame362,388,this.frame389,430,this.frame431,436,this.frame437,445,this.frame446,576,this.frame577,596,this.frame597,634,this.frame635,739,this.frame740,802,this.frame803);
      }
      
      function frame1() : *
      {
         Helpers.StartMusic("chasesong",Chasesong,0.25);
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame68() : *
      {
         if(ItAMain.instance && ItAMain.instance.goronStage == ItAMain.BiggoronCodeUsed)
         {
            stop();
            ItAMain.instance.SetBiggoronStage(ItAMain.BiggoronCodeGot);
            ItAMain.instance.StartScene("ItABiggol");
         }
      }
      
      function frame81() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c3_hallwayrun_hurryupnow");
         }
      }
      
      function frame125() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame221() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.SetPath("c",4);
         }
         Helpers.CreateButton(this.metalfist,true,false);
         this.metalfist.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("metalfist");
         });
         Helpers.CreateButton(this.beans,true,false);
         this.beans.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("beans");
         });
         Helpers.CreateButton(this.warp,true,false);
         this.warp.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("warp");
         });
      }
      
      function frame249() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame260() : *
      {
         Helpers.StopMusic("chasesong");
      }
      
      function frame287() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_hallwayrun","ItAHallwayRun");
         }
         stop();
      }
      
      function frame362() : *
      {
         Helpers.StopMusic("chasesong");
      }
      
      function frame389() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c3_hallwayrun_oww");
         }
      }
      
      function frame431() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame437() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_metalfist","ItAHallwayRun");
         }
         stop();
      }
      
      function frame446() : *
      {
         Helpers.StopMusic("chasesong");
      }
      
      function frame577() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c3_hallwayrun_ahhgetaway");
         }
      }
      
      function frame597() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame635() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_warp","ItAHallwayRun");
         }
         stop();
      }
      
      function frame740() : *
      {
         Helpers.StopMusic("chasesong");
      }
      
      function frame803() : *
      {
         stop();
         SoundMixer.stopAll();
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItABrigChoice");
         }
      }
   }
}
