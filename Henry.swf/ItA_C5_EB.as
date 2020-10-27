package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_C5_EB extends MovieClip
   {
       
      
      public var bash:MovieClip;
      
      public var bios_ita:MovieClip;
      
      public var defend:MovieClip;
      
      public var goods:MovieClip;
      
      public var psi:MovieClip;
      
      public function ItA_C5_EB()
      {
         super();
         addFrameScript(146,this.frame147,434,this.frame435,671,this.frame672,961,this.frame962,1235,this.frame1236);
      }
      
      function frame147() : *
      {
         stop();
         Helpers.CreateButton(this.bash,true,false);
         this.bash.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("bash");
         });
         Helpers.CreateButton(this.psi,true,false);
         this.psi.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("psi");
         });
         Helpers.CreateButton(this.goods,true,false);
         this.goods.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("goods");
         });
         Helpers.CreateButton(this.defend,true,false);
         this.defend.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("defend");
         });
      }
      
      function frame435() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_EB_bash","vgbattles");
         }
         stop();
      }
      
      function frame672() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_EB_defend","vgbattles");
         }
         stop();
      }
      
      function frame962() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_EB_psi","vgbattles");
         }
         stop();
      }
      
      function frame1236() : *
      {
         stop();
         AchMain.instance.Unlock(this,"ita_eb");
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItAAfterVg");
         }
      }
   }
}
