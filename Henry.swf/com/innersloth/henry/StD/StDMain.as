package com.innersloth.henry.StD
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.MainScene;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import flash.filesystem.FileStream;
   import flash.filters.DropShadowFilter;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class StDMain extends Sprite
   {
      
      public static const Scale:Number = 1;
      
      public static var instance:StDMain;
       
      
      public const TotalUniqueFailCount:int = 40;
      
      private var mainMenu:Sprite;
      
      private var obj:Object;
      
      private var paintings:Dictionary;
      
      private var paths:Object;
      
      public var recentPath:int = 0;
      
      private var punlocker:MovieClip;
      
      private var curMap:MovieClip;
      
      private var mapToggleCallback:Function;
      
      public var uniqueFails:Dictionary;
      
      public var uniqueFailCount:int = 0;
      
      public var totalFailCount:int = 0;
      
      private var allSubs:Object;
      
      private var subsTarget:TextField;
      
      private var subsFormat:TextFormat;
      
      private var mostRecentPath:String = "intro";
      
      public var popsClosed:int = 0;
      
      public var jumblesHopped:int = 0;
      
      private var sceneKeys:Object;
      
      public function StDMain(param1:Sprite, param2:Object)
      {
         this.obj = new Object();
         this.paintings = new Dictionary();
         this.paths = new Object();
         this.uniqueFails = new Dictionary();
         super();
         this.mainMenu = param1;
         instance = this;
         this.obj = param2;
         if(param2)
         {
            this.curMap = new this.obj["StDMap"]();
            this.curMap.name = "StD_Map";
            this.curMap.stop();
            this.punlocker = new this.obj["StDPUnlocker"]();
            this.punlocker.gotoAndStop(45);
            this.addChild(this.punlocker);
         }
         this.LoadFromDisk();
         if(param1)
         {
            this.LoadSubs(MainScene.instance.subs);
         }
      }
      
      public static function ClearSave() : void
      {
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("std.sav");
         if(_loc1_.exists)
         {
            _loc1_.deleteFile();
         }
         instance.LoadFromDisk();
      }
      
      private function LoadSubs(param1:String) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         if(!this.subsTarget)
         {
            this.subsFormat = new TextFormat();
            this.subsFormat.font = "Arial";
            this.subsFormat.color = 16777215;
            this.subsFormat.size = 28;
            this.subsFormat.align = TextFormatAlign.CENTER;
            this.subsTarget = new TextField();
            this.subsTarget.mouseEnabled = false;
            this.subsTarget.filters = [new DropShadowFilter(0,0,0,1,6,6,10)];
            this.subsTarget.wordWrap = true;
            this.subsTarget.width = 700;
            this.subsTarget.height = 120;
            this.addChild(this.subsTarget);
         }
         this.allSubs = new Object();
         var _loc2_:File = File.applicationDirectory.resolvePath("std_" + param1 + ".txt");
         if(!_loc2_.exists)
         {
            return;
         }
         var _loc3_:FileStream = new FileStream();
         _loc3_.open(_loc2_,FileMode.READ);
         var _loc4_:String = _loc3_.readUTFBytes(_loc3_.bytesAvailable);
         _loc3_.close();
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         while(true)
         {
            _loc8_ = _loc4_.indexOf("=",_loc7_);
            if(_loc8_ == -1)
            {
               break;
            }
            _loc5_ = _loc4_.slice(_loc7_,_loc8_);
            _loc8_++;
            _loc7_ = _loc8_;
            _loc8_ = _loc4_.indexOf("\n",_loc7_);
            if(_loc8_ == -1)
            {
               break;
            }
            _loc6_ = _loc4_.slice(_loc7_,_loc8_ - 1);
            _loc8_++;
            _loc7_ = _loc8_;
            this.allSubs[_loc5_] = _loc6_;
         }
      }
      
      public function DriveSub(param1:String) : void
      {
         if(this.allSubs[param1])
         {
            this.subsTarget.text = this.allSubs[param1];
            this.subsTarget.setTextFormat(this.subsFormat);
         }
         else
         {
            this.subsTarget.text = "";
         }
      }
      
      public function EndingCount() : int
      {
         var _loc1_:int = 0;
         if((this.paths["a"] || 0) > 7)
         {
            _loc1_++;
         }
         if((this.paths["b"] || 0) > 7)
         {
            _loc1_++;
         }
         if((this.paths["c"] || 0) > 5)
         {
            _loc1_++;
         }
         return _loc1_;
      }
      
      public function HasAllFails() : Boolean
      {
         return this.uniqueFailCount == this.TotalUniqueFailCount;
      }
      
      public function GotoNextGame() : void
      {
         trace("Opening ita");
         var _loc1_:Stage = this.stage;
         _loc1_.removeChildren();
         _loc1_.addChild(this.mainMenu);
         this.mainMenu["StartItA"](false);
      }
      
      public function GotoMainMenu() : void
      {
         trace("Opening main menu");
         var _loc1_:Stage = this.stage;
         _loc1_.removeChildren();
         _loc1_.addChild(this.mainMenu);
         this.mainMenu["Refresh"]();
      }
      
      public function LoadFromDisk() : void
      {
         var _loc2_:ByteArray = null;
         var _loc3_:FileStream = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         this.uniqueFails = new Dictionary();
         this.uniqueFailCount = 0;
         this.totalFailCount = 0;
         this.paths = new Object();
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("std.sav");
         if(_loc1_.exists)
         {
            _loc2_ = new ByteArray();
            _loc3_ = new FileStream();
            _loc3_.open(_loc1_,FileMode.READ);
            _loc3_.readBytes(_loc2_,0,0);
            _loc3_.close();
            _loc2_.inflate();
            _loc2_.position = 0;
            while(_loc2_.position < _loc2_.length)
            {
               _loc4_ = _loc2_.readUTF();
               if(_loc4_.substr(0,2) == "f_")
               {
                  this.uniqueFails[_loc4_.substr(2)] = 1;
                  this.uniqueFailCount++;
               }
               else if(_loc4_.substr(0,3) == "tfc")
               {
                  this.totalFailCount = parseInt(_loc4_.substr(3));
               }
               else if(_loc4_.substr(0,3) == "pa_")
               {
                  this.paintings[_loc4_.substr(3)] = true;
               }
               else if(_loc4_.substr(0,2) == "p_")
               {
                  _loc5_ = _loc4_.substr(2).split("=");
                  this.paths[String(_loc5_[0])] = parseInt(_loc5_[1]);
               }
               else if(_loc4_.substr(0,2) == "r_")
               {
                  this.recentPath = parseInt(_loc4_.substr(2));
               }
            }
         }
      }
      
      public function SaveToDisk() : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:FileStream = null;
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("std.sav");
         var _loc2_:ByteArray = new ByteArray();
         for(_loc3_ in this.uniqueFails)
         {
            _loc2_.writeUTF("f_" + _loc3_);
         }
         _loc2_.writeUTF("tfc" + this.totalFailCount);
         for(_loc4_ in this.paintings)
         {
            _loc2_.writeUTF("pa_" + _loc4_);
         }
         for(_loc5_ in this.paths)
         {
            _loc2_.writeUTF("p_" + _loc5_ + "=" + this.paths[_loc5_]);
         }
         _loc2_.writeUTF("r_" + this.recentPath);
         _loc2_.deflate();
         _loc6_ = new FileStream();
         _loc6_.open(_loc1_,FileMode.WRITE);
         _loc6_.writeBytes(_loc2_,0,_loc2_.length);
         _loc6_.close();
      }
      
      public function SetPath(param1:String, param2:int) : void
      {
         this.mostRecentPath = param1 + (param2 - 1);
         trace("std setpath" + param1 + param2);
         this.paths[param1] = Math.max(Number(this.paths[param1]) || Number(1),param2);
         switch(param1)
         {
            case "b":
               this.recentPath = 0;
               break;
            case "a":
               this.recentPath = 1;
               break;
            case "c":
               this.recentPath = 2;
         }
         this.SaveToDisk();
      }
      
      public function SetUpMapButton(param1:MovieClip, param2:String) : void
      {
         var mapBg:MovieClip = null;
         var bgLabel:String = null;
         var button:MovieClip = param1;
         var label:String = param2;
         if(button)
         {
            if(label)
            {
               Helpers.CreateButton(button,false,false);
               button.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
               {
                  StartScene(label);
                  instance.addChild(curMap);
                  curMap.gotoAndPlay("out");
               });
            }
            mapBg = this.curMap["inner"]["mapbg"];
            bgLabel = button.name.substr(0,button.name.indexOf("butt"));
            button.addEventListener(MouseEvent.MOUSE_OVER,function(param1:MouseEvent):void
            {
               Helpers.TryGotoAndStop(mapBg,bgLabel);
            });
         }
      }
      
      private function Fail(param1:String) : int
      {
         if(this.uniqueFails[param1])
         {
            return 1;
         }
         return 0;
      }
      
      public function GetFailsByGroup(param1:String) : int
      {
         var _loc2_:int = 0;
         if(param1 == "a1")
         {
            _loc2_ = this.Fail("std_antigrav") + this.Fail("std_jumble") + this.Fail("std_liquid") + this.Fail("std_shrinkray") + this.Fail("std_teleporter");
         }
         else if(param1 == "a2")
         {
            _loc2_ = this.Fail("std_fpunch") + this.Fail("std_invisible") + this.Fail("std_tranq");
         }
         else if(param1 == "a3")
         {
            _loc2_ = this.Fail("std_drop") + this.Fail("std_wormhole");
         }
         else if(param1 == "a4")
         {
            _loc2_ = this.Fail("std_lasercut");
         }
         else if(param1 == "a5")
         {
            _loc2_ = this.Fail("std_cannon") + this.Fail("std_cheese");
         }
         else if(param1 == "a6")
         {
            _loc2_ = this.Fail("std_jump") + this.Fail("std_neck") + this.Fail("std_rifle");
         }
         else if(param1 == "b1")
         {
            _loc2_ = this.Fail("std_timed1kick") + this.Fail("std_timed1miss") + this.Fail("std_timed1jump");
         }
         else if(param1 == "b2")
         {
            _loc2_ = this.Fail("std_timed2flail") + this.Fail("std_timed2lance") + this.Fail("std_timed2miss");
         }
         else if(param1 == "b3")
         {
            _loc2_ = this.Fail("std_timed3basket") + this.Fail("std_timed3miss");
         }
         else if(param1 == "b4")
         {
            _loc2_ = this.Fail("std_timed4branch") + this.Fail("std_timed4miss");
         }
         else if(param1 == "b5")
         {
            _loc2_ = this.Fail("std_timed5snade") + this.Fail("std_timed5miss");
         }
         else if(param1 == "b6")
         {
            _loc2_ = this.Fail("std_timed6bribe") + this.Fail("std_timed6drive") + this.Fail("std_timed6miss");
         }
         else if(param1 == "c1")
         {
            _loc2_ = this.Fail("std_bomb") + this.Fail("std_gun") + this.Fail("std_timedwwii");
         }
         else if(param1 == "c2")
         {
            _loc2_ = this.Fail("std_sleepdiamond");
         }
         else if(param1 == "c3")
         {
            _loc2_ = this.Fail("std_crowbar") + this.Fail("std_alien") + this.Fail("std_goodball");
         }
         else if(param1 == "c4")
         {
            _loc2_ = this.Fail("std_satellite") + this.Fail("std_zero") + this.Fail("std_nuke");
         }
         return _loc2_;
      }
      
      private function TryGotoAndStopInside(param1:MovieClip, param2:String, param3:Object) : void
      {
         if(param1[param2])
         {
            trace("Went to " + param3 + " in " + param2);
            param1[param2].gotoAndStop(param3);
         }
      }
      
      public function ToggleMap(param1:DisplayObject, param2:Function = null) : void
      {
         if(param1.parent.getChildByName("StD_Map"))
         {
            if(this.mapToggleCallback != null)
            {
               this.mapToggleCallback();
               this.mapToggleCallback = null;
            }
            trace("toggling map off");
            this.curMap.gotoAndPlay("out");
         }
         else
         {
            trace("toggling map on");
            this.curMap.gotoAndPlay("in");
            this.mapToggleCallback = param2;
            param1.parent.setChildIndex(param1,param1.parent.numChildren - 1);
            param1.parent.addChild(this.curMap);
            param1.parent.setChildIndex(this.curMap,param1.parent.getChildIndex(param1));
         }
      }
      
      public function RefreshMap() : void
      {
         var _loc1_:MovieClip = this.curMap["inner"];
         this.TryGotoAndStopInside(_loc1_,"mapbg",this.mostRecentPath);
         this.TryGotoAndStopInside(_loc1_,"patha",this.paths["a"] || 1);
         this.TryGotoAndStopInside(_loc1_,"pathb",this.paths["b"] || 1);
         this.TryGotoAndStopInside(_loc1_,"pathc",this.paths["c"] || 1);
         this.MapButton(_loc1_,"intro",3);
         var _loc2_:MovieClip = _loc1_["pathb"];
         this.MapButton(_loc2_,"b1",3);
         this.MapButton(_loc2_,"b2",3);
         this.MapButton(_loc2_,"b3",2);
         this.MapButton(_loc2_,"b4",2);
         this.MapButton(_loc2_,"b5",2);
         this.MapButton(_loc2_,"b6",3);
         var _loc3_:MovieClip = _loc1_["patha"];
         this.MapButton(_loc3_,"a1",4);
         this.MapButton(_loc3_,"a2",3);
         this.MapButton(_loc3_,"a3",2);
         this.MapButton(_loc3_,"a4",1);
         this.MapButton(_loc3_,"a5",2);
         this.MapButton(_loc3_,"a6",3);
         var _loc4_:MovieClip = _loc1_["pathc"];
         this.MapButton(_loc4_,"c1",3);
         this.MapButton(_loc4_,"c2",1);
         this.MapButton(_loc4_,"c3",3);
         this.MapButton(_loc4_,"c4",3);
      }
      
      private function MapButton(param1:MovieClip, param2:String, param3:int) : void
      {
         var _loc4_:int = this.GetFailsByGroup(param2);
         this.TryGotoAndStopInside(param1,param2,_loc4_ + 1);
         if(_loc4_ == param3)
         {
            if(this.mostRecentPath == param2)
            {
               this.TryGotoAndStopInside(param1,param2 + "butt","overselect");
            }
            else
            {
               this.TryGotoAndStopInside(param1,param2 + "butt","over");
            }
         }
         else if(this.mostRecentPath == param2)
         {
            this.TryGotoAndStopInside(param1,param2 + "butt","upselect");
         }
         else
         {
            Helpers.TryGotoAndStopInside(param1,param2 + "butt","up");
         }
      }
      
      public function ShowFail(param1:String, param2:String, param3:String = null) : void
      {
         if(param3 == null)
         {
            param3 = param1;
         }
         this.uniqueFails[param3] = 1;
         this.uniqueFailCount = Helpers.Count(this.uniqueFails);
         this.totalFailCount++;
         this.SaveToDisk();
         var _loc4_:MovieClip = new this.obj["StDFailScreen"]();
         _loc4_.failwordLabel = param1;
         _loc4_.lastLabel = param2;
         _loc4_.scaleX = _loc4_.scaleY = Scale;
         this.addChild(_loc4_);
         if(this.HasAllFails())
         {
            AchMain.instance.Unlock(this,"std_fails");
         }
      }
      
      public function SetupPainting(param1:MovieClip) : void
      {
         var painting:MovieClip = param1;
         if(!instance.paintings[painting.name])
         {
            trace("painting: " + painting.name);
            painting.addEventListener(MouseEvent.MOUSE_DOWN,function clicker(param1:MouseEvent):void
            {
               painting.removeEventListener(MouseEvent.MOUSE_DOWN,clicker);
               painting.mouseEnabled = false;
               painting.gotoAndStop(2);
               UnlockPainting(painting.name);
            });
         }
         else
         {
            trace("got painting: " + painting.name);
            painting.gotoAndStop(2);
         }
      }
      
      public function UnlockPainting(param1:String) : void
      {
         trace("unlock painting: " + param1);
         this.paintings[param1] = true;
         if(Helpers.Count(this.paintings) == 30)
         {
            AchMain.instance.Unlock(this,"std_paintings");
         }
         this.punlocker.paintingName = param1;
         this.punlocker.paintingNum = Helpers.Count(this.paintings);
         Helpers.TryGotoAndPlay(this.punlocker,1);
         this.SaveToDisk();
      }
      
      public function StartScene(param1:String) : void
      {
         var _loc2_:MovieClip = null;
         if(param1 == "StDJumble")
         {
            this.jumblesHopped++;
         }
         this.DriveSub("");
         if(param1 == "StDTimed5")
         {
            param1 = "timed5";
         }
         if(!this.sceneKeys)
         {
            this.sceneKeys = new Object();
            this.sceneKeys["main"] = "StDIntro";
            this.sceneKeys["timed5"] = "StDTimed4";
            this.sceneKeys["timed5"] = "StDTimed4";
            this.sceneKeys["sneakinmain"] = "StDSneakin";
            this.sceneKeys["rooftop"] = "StDRooftop";
            this.sceneKeys["diamondabove"] = "StDDiamondAbove";
            this.sceneKeys["diamondsneak"] = "StDDiamondSneak";
            this.sceneKeys["ww2"] = "StDWW2Room";
            this.sceneKeys["storage"] = "StDBoxTrans";
            this.sceneKeys["backdoor"] = "StDBackdoor";
            this.sceneKeys["retro"] = "StDRetroTrans";
         }
         this.subsTarget.x = (this.stage.stageWidth - this.subsTarget.width) / 2;
         this.subsTarget.y = this.stage.stageHeight - 120;
         this.punlocker.x = this.stage.stageWidth;
         this.punlocker.y = this.stage.stageHeight - 360;
         trace("Going to " + param1);
         this.removeChildren();
         var _loc3_:String = this.sceneKeys[param1];
         if(_loc3_ == "StDIntro")
         {
            this.mostRecentPath = "intro";
         }
         if(_loc3_)
         {
            _loc2_ = new this.obj[_loc3_]();
            _loc2_.gotoAndPlay(param1);
         }
         else
         {
            _loc2_ = new this.obj[param1]();
         }
         _loc2_.scaleX = _loc2_.scaleY = Scale;
         this.addChild(_loc2_);
         this.addChild(this.subsTarget);
         this.addChild(this.punlocker);
      }
   }
}
