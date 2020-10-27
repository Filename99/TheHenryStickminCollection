package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_A5_Recordstimed extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public var falconkick:MovieClip;
      
      public var ninjastar:MovieClip;
      
      public var spook:MovieClip;
      
      public var self;
      
      public function ItA_A5_Recordstimed()
      {
         super();
         addFrameScript(0,this.frame1,18,this.frame19,64,this.frame65,70,this.frame71,149,this.frame150,158,this.frame159,220,this.frame221,287,this.frame288,298,this.frame299,341,this.frame342,353,this.frame354);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame19() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a5_recordstimed_ohmanirem");
         }
      }
      
      function frame65() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame71() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a5_recordstimed_goodthingn");
         }
      }
      
      function frame150() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame159() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.SetPath("a",6);
         }
         this.self = this;
         Helpers.CreateButton(this.ninjastar,true,false);
         this.ninjastar.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            self.stop();
            ItAMain.instance.StartScene("ItANinjaStar");
         });
         Helpers.CreateButton(this.falconkick,true,false);
         this.falconkick.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            self.stop();
            ItAMain.instance.StartScene("ItAFalconKick");
         });
         Helpers.CreateButton(this.spook,true,false);
         this.spook.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            self.stop();
            ItAMain.instance.StartScene("ItASpook");
         });
      }
      
      function frame221() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a5_recordstimed_ohmanthat");
         }
      }
      
      function frame288() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame299() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a5_recordstimed_ohwhatame");
         }
      }
      
      function frame342() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame354() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_records","ItARecords");
         }
         stop();
      }
   }
}
