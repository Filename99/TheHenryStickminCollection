package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class StD_B2_Timed2 extends MovieClip
   {
       
      
      public var flail:MovieClip;
      
      public var lance:MovieClip;
      
      public var shield:MovieClip;
      
      public var self;
      
      public function StD_B2_Timed2()
      {
         super();
         addFrameScript(0,this.frame1,52,this.frame53,94,this.frame95);
      }
      
      public function lancebuttonClicked(param1:MouseEvent) : void
      {
         this.lance.removeEventListener(MouseEvent.CLICK,this.lancebuttonClicked);
         this.shield.removeEventListener(MouseEvent.CLICK,this.shieldbuttonClicked);
         this.flail.removeEventListener(MouseEvent.CLICK,this.flailbuttonClicked);
         StDMain.instance.StartScene("StDTimed2Lance");
         this.self.stop();
      }
      
      public function shieldbuttonClicked(param1:MouseEvent) : void
      {
         this.lance.removeEventListener(MouseEvent.CLICK,this.lancebuttonClicked);
         this.shield.removeEventListener(MouseEvent.CLICK,this.shieldbuttonClicked);
         this.flail.removeEventListener(MouseEvent.CLICK,this.flailbuttonClicked);
         StDMain.instance.StartScene("StDTimed2Shield");
         this.self.stop();
      }
      
      public function flailbuttonClicked(param1:MouseEvent) : void
      {
         this.lance.removeEventListener(MouseEvent.CLICK,this.lancebuttonClicked);
         this.shield.removeEventListener(MouseEvent.CLICK,this.shieldbuttonClicked);
         this.flail.removeEventListener(MouseEvent.CLICK,this.flailbuttonClicked);
         StDMain.instance.StartScene("StDTimed2Flail");
         this.self.stop();
      }
      
      function frame1() : *
      {
         Helpers.StartMusic("scooter1",scooter1,0.8);
      }
      
      function frame53() : *
      {
         this.lance.addEventListener(MouseEvent.CLICK,this.lancebuttonClicked);
         this.shield.addEventListener(MouseEvent.CLICK,this.shieldbuttonClicked);
         this.flail.addEventListener(MouseEvent.CLICK,this.flailbuttonClicked);
         if(StDMain.instance)
         {
            StDMain.instance.SetPath("b",3);
         }
         this.self = this;
         Helpers.CreateButton(this.lance,true,false);
         Helpers.CreateButton(this.shield,true,false);
         Helpers.CreateButton(this.flail,true,false);
      }
      
      function frame95() : *
      {
         stop();
         StDMain.instance.StartScene("StDTimed2Miss");
      }
   }
}
