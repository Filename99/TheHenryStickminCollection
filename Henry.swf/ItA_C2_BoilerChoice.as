package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_C2_BoilerChoice extends MovieClip
   {
       
      
      public var boost:MovieClip;
      
      public var eject:MovieClip;
      
      public var spikes:MovieClip;
      
      public function ItA_C2_BoilerChoice()
      {
         super();
         addFrameScript(0,this.frame1,37,this.frame38,100,this.frame101,124,this.frame125,164,this.frame165,192,this.frame193,256,this.frame257,308,this.frame309,355,this.frame356);
      }
      
      function frame1() : *
      {
         Helpers.StartMusic("chasesong",Chasesong,0.25);
      }
      
      function frame38() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.SetPath("c",3);
         }
         Helpers.CreateButton(this.eject,true,false);
         this.eject.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("eject");
         });
         Helpers.CreateButton(this.spikes,true,false);
         this.spikes.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("spikes");
         });
         Helpers.CreateButton(this.boost,true,false);
         this.boost.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("boost");
         });
      }
      
      function frame101() : *
      {
         Helpers.StopMusic("chasesong");
      }
      
      function frame125() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_boiler","ItABoilerChoice");
         }
         stop();
      }
      
      function frame165() : *
      {
         Helpers.StopMusic("chasesong");
      }
      
      function frame193() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_spikes","ItABoilerChoice");
         }
         stop();
      }
      
      function frame257() : *
      {
         Helpers.StopMusic("chasesong");
      }
      
      function frame309() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_boost","ItABoilerChoice");
         }
         stop();
      }
      
      function frame356() : *
      {
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItAHallwayRun");
         }
      }
   }
}
