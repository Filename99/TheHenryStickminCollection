package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.media.SoundMixer;
   
   public dynamic class StD_B3_Timed3 extends MovieClip
   {
       
      
      public var basket:MovieClip;
      
      public var towcable:MovieClip;
      
      public var self;
      
      public function StD_B3_Timed3()
      {
         super();
         addFrameScript(49,this.frame50,147,this.frame148);
      }
      
      public function towcablebuttonClicked(param1:MouseEvent) : void
      {
         this.towcable.removeEventListener(MouseEvent.CLICK,this.towcablebuttonClicked);
         this.basket.removeEventListener(MouseEvent.CLICK,this.basketbuttonClicked);
         SoundMixer.stopAll();
         StDMain.instance.StartScene("StDTimed3TowCable");
         this.self.stop();
      }
      
      public function basketbuttonClicked(param1:MouseEvent) : void
      {
         removeEventListener(MouseEvent.CLICK,this.towcablebuttonClicked);
         removeEventListener(MouseEvent.CLICK,this.basketbuttonClicked);
         SoundMixer.stopAll();
         StDMain.instance.StartScene("StDTimed3Basket");
         this.self.stop();
      }
      
      function frame50() : *
      {
         this.towcable.addEventListener(MouseEvent.CLICK,this.towcablebuttonClicked);
         this.basket.addEventListener(MouseEvent.CLICK,this.basketbuttonClicked);
         if(StDMain.instance)
         {
            StDMain.instance.SetPath("b",4);
         }
         this.self = this;
         Helpers.CreateButton(this.towcable,true,false);
         Helpers.CreateButton(this.basket,true,false);
      }
      
      function frame148() : *
      {
         SoundMixer.stopAll();
         StDMain.instance.StartScene("StDTimed3Miss");
         stop();
      }
   }
}
