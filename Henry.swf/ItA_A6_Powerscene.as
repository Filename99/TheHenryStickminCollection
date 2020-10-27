package
{
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.media.SoundMixer;
   
   public dynamic class ItA_A6_Powerscene extends MovieClip
   {
       
      
      public function ItA_A6_Powerscene()
      {
         super();
         addFrameScript(0,this.frame1,10,this.frame11,78,this.frame79,84,this.frame85,238,this.frame239,255,this.frame256,272,this.frame273,274,this.frame275,289,this.frame290,311,this.frame312,326,this.frame327,370,this.frame371,372,this.frame373,389,this.frame390,437,this.frame438,439,this.frame440,453,this.frame454,524,this.frame525,543,this.frame544,609,this.frame610);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame11() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a6_powerchoice_alrightive");
         }
      }
      
      function frame79() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame85() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.SetPath("a",7);
         }
      }
      
      function frame239() : *
      {
         trace("asdfasdf");
         gotoAndPlay("loopa");
      }
      
      function frame256() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a6_powerchoice_sheepbaa");
         }
      }
      
      function frame273() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame275() : *
      {
         if(AchMain.instance)
         {
            AchMain.instance.Unlock(stage,"ita_barn");
         }
      }
      
      function frame290() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a6_powerchoice_okaayy");
         }
      }
      
      function frame312() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame327() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a6_powerchoice_iidontun");
         }
      }
      
      function frame371() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame373() : *
      {
         this.animal = true;
         gotoAndPlay("mechoice");
      }
      
      function frame390() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a6_powerchoice_mkshutting");
         }
      }
      
      function frame438() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame440() : *
      {
         SoundMixer.stopAll();
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItAMassEffectOff");
         }
         stop();
      }
      
      function frame454() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a6_powerchoice_imsorryi");
         }
      }
      
      function frame525() : *
      {
         SoundMixer.stopAll();
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItAMassEffectNoHelp");
         }
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame544() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a6_powerchoice_okillrero");
         }
      }
      
      function frame610() : *
      {
         SoundMixer.stopAll();
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItAMassEffectReroute");
         }
         stop();
      }
   }
}
