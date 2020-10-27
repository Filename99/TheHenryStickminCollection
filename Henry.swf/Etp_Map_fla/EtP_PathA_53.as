package Etp_Map_fla
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.Dictionary;
   
   public dynamic class EtP_PathA_53 extends MovieClip
   {
       
      
      public var closet:MovieClip;
      
      public var closetFailCount:MovieClip;
      
      public var hallway:MovieClip;
      
      public var hallwayFailCount:MovieClip;
      
      public var roof:MovieClip;
      
      public var roofFailCount:MovieClip;
      
      public var sneakyend:MovieClip;
      
      public var __setTabDict:Dictionary;
      
      public var __lastFrameTab:int = -1;
      
      public function EtP_PathA_53()
      {
         this.__setTabDict = new Dictionary(true);
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5);
         addEventListener(Event.FRAME_CONSTRUCTED,this.__setTab_handler,false,0,true);
      }
      
      function __setTab_closetFailCount_EtP_PathA_Layer4_2(param1:int) : *
      {
         if(this.closetFailCount != null && param1 >= 3 && param1 <= 62 && (this.__setTabDict[this.closetFailCount] == undefined || !(int(this.__setTabDict[this.closetFailCount]) >= 3 && int(this.__setTabDict[this.closetFailCount]) <= 62)))
         {
            this.__setTabDict[this.closetFailCount] = param1;
            this.closetFailCount.tabIndex = 1;
         }
      }
      
      function __setTab_handler(param1:Object) : *
      {
         var _loc2_:int = currentFrame;
         if(this.__lastFrameTab == _loc2_)
         {
            return;
         }
         this.__lastFrameTab = _loc2_;
         this.__setTab_closetFailCount_EtP_PathA_Layer4_2(_loc2_);
      }
      
      function frame1() : *
      {
         stop();
         EtPMain.instance.SetupMapButton(this.hallway,"etp_hallway","FileRetry");
         EtPMain.instance.SetupMapButton(this.closet,"etp_closet","ClosetMenu");
         EtPMain.instance.SetupMapButton(this.roof,"etp_rooftop","RoofChoice");
         EtPMain.instance.SetupMapButton(this.sneakyend,"etp_endsneaky",null);
      }
      
      function frame2() : *
      {
         stop();
         EtPMain.instance.SetupMapButton(this.hallway,"etp_hallway","FileRetry");
         EtPMain.instance.SetupMapButton(this.closet,"etp_closet","ClosetMenu");
         EtPMain.instance.SetupMapButton(this.roof,"etp_rooftop","RoofChoice");
         EtPMain.instance.SetupMapButton(this.sneakyend,"etp_endsneaky",null);
      }
      
      function frame3() : *
      {
         stop();
         EtPMain.instance.SetupMapButton(this.hallway,"etp_hallway","FileRetry");
         EtPMain.instance.SetupMapButton(this.closet,"etp_closet","ClosetMenu");
         EtPMain.instance.SetupMapButton(this.roof,"etp_rooftop","RoofChoice");
         EtPMain.instance.SetupMapButton(this.sneakyend,"etp_endsneaky",null);
      }
      
      function frame4() : *
      {
         stop();
         EtPMain.instance.SetupMapButton(this.hallway,"etp_hallway","FileRetry");
         EtPMain.instance.SetupMapButton(this.closet,"etp_closet","ClosetMenu");
         EtPMain.instance.SetupMapButton(this.roof,"etp_rooftop","RoofChoice");
         EtPMain.instance.SetupMapButton(this.sneakyend,"etp_endsneaky",null);
      }
      
      function frame5() : *
      {
         stop();
         EtPMain.instance.SetupMapButton(this.hallway,"etp_hallway","FileRetry");
         EtPMain.instance.SetupMapButton(this.closet,"etp_closet","ClosetMenu");
         EtPMain.instance.SetupMapButton(this.roof,"etp_rooftop","RoofChoice");
         EtPMain.instance.SetupMapButton(this.sneakyend,"etp_endsneaky",null);
      }
   }
}
