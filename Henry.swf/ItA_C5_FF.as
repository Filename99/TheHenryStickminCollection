package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_C5_FF extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public var blitzbutt:MovieClip;
      
      public var fightbutt:MovieClip;
      
      public var magicbutt:MovieClip;
      
      public var toolsbutt:MovieClip;
      
      public function ItA_C5_FF()
      {
         super();
         addFrameScript(118,this.frame119,379,this.frame380,635,this.frame636,879,this.frame880,1357,this.frame1358);
      }
      
      function frame119() : *
      {
         stop();
         Helpers.CreateButton(this.fightbutt,true,false);
         this.fightbutt.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("fight");
         });
         Helpers.CreateButton(this.blitzbutt,true,false);
         this.blitzbutt.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("blitz");
         });
         Helpers.CreateButton(this.toolsbutt,true,false);
         this.toolsbutt.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("tools");
         });
         Helpers.CreateButton(this.magicbutt,true,false);
         this.magicbutt.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("magic");
         });
      }
      
      function frame380() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_FF_fight","vgbattles");
         }
         stop();
      }
      
      function frame636() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_FF_blitz","vgbattles");
         }
         stop();
      }
      
      function frame880() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_FF_magic","vgbattles");
         }
         stop();
      }
      
      function frame1358() : *
      {
         stop();
         AchMain.instance.Unlock(this,"ita_ff");
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItAAfterVg");
         }
      }
   }
}
