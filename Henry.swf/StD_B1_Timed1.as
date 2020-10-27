package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.media.SoundMixer;
   
   public dynamic class StD_B1_Timed1 extends MovieClip
   {
       
      
      public var jump:MovieClip;
      
      public var kick:MovieClip;
      
      public var ram:MovieClip;
      
      public var self;
      
      public function StD_B1_Timed1()
      {
         super();
         addFrameScript(38,this.frame39,89,this.frame90);
      }
      
      public function kickbuttonClicked(param1:MouseEvent) : void
      {
         this.kick.removeEventListener(MouseEvent.CLICK,this.kickbuttonClicked);
         this.ram.removeEventListener(MouseEvent.CLICK,this.rambuttonClicked);
         this.jump.removeEventListener(MouseEvent.CLICK,this.jumpbuttonClicked);
         SoundMixer.stopAll();
         StDMain.instance.StartScene("StDTimed1Kick");
         this.self.stop();
      }
      
      public function rambuttonClicked(param1:MouseEvent) : void
      {
         this.kick.removeEventListener(MouseEvent.CLICK,this.kickbuttonClicked);
         this.ram.removeEventListener(MouseEvent.CLICK,this.rambuttonClicked);
         this.jump.removeEventListener(MouseEvent.CLICK,this.jumpbuttonClicked);
         SoundMixer.stopAll();
         StDMain.instance.StartScene("StDTimed1Ram");
         this.self.stop();
      }
      
      public function jumpbuttonClicked(param1:MouseEvent) : void
      {
         this.kick.removeEventListener(MouseEvent.CLICK,this.kickbuttonClicked);
         this.ram.removeEventListener(MouseEvent.CLICK,this.rambuttonClicked);
         this.jump.removeEventListener(MouseEvent.CLICK,this.jumpbuttonClicked);
         SoundMixer.stopAll();
         StDMain.instance.StartScene("StDTimed1Jump");
         this.self.stop();
      }
      
      function frame39() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.SetPath("b",2);
         }
         this.kick.addEventListener(MouseEvent.CLICK,this.kickbuttonClicked);
         this.ram.addEventListener(MouseEvent.CLICK,this.rambuttonClicked);
         this.jump.addEventListener(MouseEvent.CLICK,this.jumpbuttonClicked);
         this.self = this;
         Helpers.CreateButton(this.kick,true,false);
         Helpers.CreateButton(this.ram,true,false);
         Helpers.CreateButton(this.jump,true,false);
      }
      
      function frame90() : *
      {
         StDMain.instance.StartScene("StDTimed1Miss");
         stop();
      }
   }
}
