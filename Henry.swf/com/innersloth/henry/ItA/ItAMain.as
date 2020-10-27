package com.innersloth.henry.ItA
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
   
   public class ItAMain extends Sprite
   {
      
      public static const BiggoronNotStarted:int = 0;
      
      public static const BiggoronKeyGot:int = 1;
      
      public static const BiggoronDaveUnlocked:int = 2;
      
      public static const BiggoronFlashGot:int = 3;
      
      public static const BiggoronFlashUsed:int = 4;
      
      public static const BiggoronCodeGot:int = 5;
      
      public static const BiggoronCodeUsed:int = 6;
      
      public static const Scale:Number = 1.5;
      
      public static var instance:ItAMain;
       
      
      public const TotalUniqueFailCount:int = 60;
      
      private var mainMenu:Sprite;
      
      private var obj:Object;
      
      private var curMap:MovieClip;
      
      private var mapToggleCallback:Function;
      
      private var paths:Object;
      
      public var uniqueFails:Dictionary;
      
      public var uniqueFailCount:int = 0;
      
      public var totalFailCount:int = 0;
      
      public var goronStage:int = 0;
      
      private var allSubs:Object;
      
      private var subsTarget:TextField;
      
      private var subsFormat:TextFormat;
      
      private var mostRecentPath:String = "intro";
      
      private var sceneKeys:Object;
      
      public function ItAMain(param1:Sprite, param2:Object)
      {
         this.obj = new Object();
         this.paths = new Object();
         this.uniqueFails = new Dictionary();
         super();
         this.mainMenu = param1;
         instance = this;
         this.obj = param2;
         if(param2)
         {
            this.curMap = new this.obj["ItAMap"]();
            this.curMap.name = "ItA_Map";
            this.curMap.scaleX = this.curMap.scaleY = 1 / Scale;
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
         _loc1_ = _loc1_.resolvePath("ita.sav");
         if(_loc1_.exists)
         {
            _loc1_.deleteFile();
         }
         instance.LoadFromDisk();
      }
      
      public function EndingCount() : int
      {
         var _loc1_:int = 0;
         if((this.paths["a"] || 0) > 8)
         {
            _loc1_++;
         }
         if((this.paths["b"] || 0) > 8)
         {
            _loc1_++;
         }
         if((this.paths["c"] || 0) > 8)
         {
            _loc1_++;
         }
         if((this.paths["c"] || 0) == 11)
         {
            _loc1_++;
         }
         return _loc1_;
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
            this.subsTarget.width = 600;
            this.subsTarget.height = 80;
            this.addChild(this.subsTarget);
         }
         this.allSubs = new Object();
         var _loc2_:File = File.applicationDirectory.resolvePath("ita_" + param1 + ".txt");
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
      
      public function SetBiggoronStage(param1:int) : void
      {
         trace("biggoron: " + param1);
         this.goronStage = param1;
         this.SaveToDisk();
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
      
      public function GotoNextGame() : void
      {
         trace("Opening ftc");
         MainScene.instance.SetMenuUnlockedFrame(MainScene.UnlockedFtC);
         var _loc1_:Stage = this.stage;
         _loc1_.removeChildren();
         _loc1_.addChild(this.mainMenu);
         this.mainMenu["StartFtC"](false);
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
         this.goronStage = 0;
         this.paths = new Object();
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("ita.sav");
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
               else if(_loc4_.substr(0,2) == "p_")
               {
                  _loc5_ = _loc4_.substr(2).split("=");
                  this.paths[String(_loc5_[0])] = parseInt(_loc5_[1]);
               }
               else if(_loc4_.substr(0,2) == "b_")
               {
                  this.goronStage = parseInt(_loc4_.substr(2));
                  trace("biggoron: " + this.goronStage);
               }
            }
         }
      }
      
      public function SaveToDisk() : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:FileStream = null;
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("ita.sav");
         var _loc2_:ByteArray = new ByteArray();
         for(_loc3_ in this.uniqueFails)
         {
            _loc2_.writeUTF("f_" + _loc3_);
         }
         _loc2_.writeUTF("tfc" + this.totalFailCount);
         for(_loc4_ in this.paths)
         {
            _loc2_.writeUTF("p_" + _loc4_ + "=" + this.paths[_loc4_]);
         }
         _loc2_.writeUTF("b_" + this.goronStage);
         _loc2_.deflate();
         _loc5_ = new FileStream();
         _loc5_.open(_loc1_,FileMode.WRITE);
         _loc5_.writeBytes(_loc2_,0,_loc2_.length);
         _loc5_.close();
      }
      
      public function SetPath(param1:String, param2:int) : void
      {
         this.mostRecentPath = param1 + (param2 - 1);
         trace("set path " + param1 + " to " + param2);
         if(param1 == "c")
         {
            if(param2 == 9 && this.paths[param1] == 10 || param2 == 10 && this.paths[param1] == 9)
            {
               this.paths[param1] = 11;
            }
         }
         this.paths[param1] = Math.max(Number(this.paths[param1]) || Number(1),param2);
         this.SaveToDisk();
      }
      
      public function HasPath(param1:String, param2:int) : Boolean
      {
         if(this.paths[param1])
         {
            return this.paths[param1] == param2;
         }
         return false;
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
         var _loc2_:String = param1.substr(0,1);
         var _loc3_:int = parseInt(param1.substr(1,1));
         if(_loc2_ == "a")
         {
            switch(_loc3_)
            {
               case 1:
                  return this.Fail("ItA_acid") + this.Fail("ItA_c4") + this.Fail("ItA_knock");
               case 2:
                  return this.Fail("ItA_disguise") + this.Fail("ItA_transd");
               case 3:
                  return this.Fail("ItA_platform") + this.Fail("ItA_gravbubble") + this.Fail("ItA_charles");
               case 4:
                  return this.Fail("ItA_remote") + this.Fail("ItA_mindcontrol") + this.Fail("ItA_gatling");
               case 5:
                  return this.Fail("ItA_falconkick") + this.Fail("ItA_ninjastar") + this.Fail("ItA_records");
               case 6:
                  return this.Fail("ItA_poweroff") + this.Fail("ItA_nohelp");
               case 7:
                  return this.Fail("ItA_flashbang") + this.Fail("ItA_sleepinggas") + this.Fail("ItA_banana");
            }
         }
         else if(_loc2_ == "b")
         {
            switch(_loc3_)
            {
               case 1:
                  return this.Fail("ItA_expandingfoam") + this.Fail("ItA_joybuzzer") + this.Fail("ItA_bomb");
               case 2:
                  return this.Fail("ItA_computer") + this.Fail("ItA_elevator");
               case 3:
                  return this.Fail("ItA_stretch") + this.Fail("ItA_teleporter") + this.Fail("ItA_pencil");
               case 4:
                  return this.Fail("ItA_hack") + this.Fail("ItA_retroglove") + this.Fail("ItA_magic");
               case 5:
                  return this.Fail("ItA_gravgun") + this.Fail("ItA_clawpack");
               case 6:
                  return this.Fail("ItA_propane") + this.Fail("ItA_shell") + this.Fail("ItA_umbrella");
               case 7:
                  return this.Fail("ItA_deb") + this.Fail("ItA_lcut") + this.Fail("ItA_unknown");
            }
         }
         else if(_loc2_ == "c")
         {
            switch(_loc3_)
            {
               case 1:
                  return this.Fail("ItA_laser") + this.Fail("ItA_thruster");
               case 2:
                  return this.Fail("ItA_boiler") + this.Fail("ItA_boost") + this.Fail("ItA_spikes");
               case 3:
                  return this.Fail("ItA_metalfist") + this.Fail("ItA_hallwayrun") + this.Fail("ItA_warp");
               case 4:
                  return this.Fail("ItA_metalbend") + this.Fail("ItA_technotrousers");
               case 5:
                  return this.Fail("ItA_EB_bash") + this.Fail("ItA_EB_defend") + this.Fail("ItA_EB_psi") + this.Fail("ItA_FF_fight") + this.Fail("ItA_FF_blitz") + this.Fail("ItA_FF_magic");
               case 6:
                  return this.Fail("ItA_beefup") + this.Fail("ItA_jetboots");
               case 7:
                  return this.Fail("ItA_missile") + this.Fail("ItA_parachute");
            }
         }
         else if(_loc2_ == "d")
         {
            switch(_loc3_)
            {
               case 1:
                  return this.Fail("ItA_ballnchain") + this.Fail("ItA_zpe");
            }
         }
         return 0;
      }
      
      public function CloseMap(param1:DisplayObject) : void
      {
         if(this.mapToggleCallback != null)
         {
            this.mapToggleCallback();
            this.mapToggleCallback = null;
         }
         trace("toggling map off");
         if(param1.parent)
         {
            param1.parent.removeChild(this.curMap);
         }
         param1.stage.addChild(this.curMap);
         this.curMap.scaleX = this.curMap.scaleY = 1;
         this.curMap.gotoAndPlay("out");
      }
      
      public function ToggleMap(param1:DisplayObject, param2:Function = null) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         if(param1.parent.getChildByName("ItA_Map"))
         {
            this.CloseMap(param1);
         }
         else
         {
            if(this.curMap.parent)
            {
               this.curMap.parent.removeChild(this.curMap);
            }
            trace("toggling map on");
            this.mapToggleCallback = param2;
            _loc5_ = this.curMap["inner"];
            Helpers.TryGotoAndStopInside(_loc5_,"patha",this.paths["a"] || 1);
            Helpers.TryGotoAndStopInside(_loc5_,"pathb",this.paths["b"] || 1);
            Helpers.TryGotoAndStopInside(_loc5_,"pathc",this.paths["c"] || 1);
            Helpers.TryGotoAndStopInside(_loc5_,"pathd",this.paths["d"] || 1);
            Helpers.TryGotoAndStopInside(_loc5_,"mapbg",this.mostRecentPath);
            if(this.mostRecentPath == "intro")
            {
               Helpers.TryGotoAndStopInside(_loc5_,"hubbutt","over");
            }
            else
            {
               Helpers.TryGotoAndStopInside(_loc5_,"hubbutt","up");
            }
            _loc6_ = new Array("a1","a2","a3","a4","a5","a6","a7");
            _loc7_ = new Array(3,2,3,3,3,2,3);
            _loc8_ = _loc5_["patha"];
            _loc4_ = 0;
            while(_loc4_ < _loc6_.length)
            {
               this.MapButton(_loc8_,_loc6_[_loc4_],_loc7_[_loc4_]);
               _loc4_++;
            }
            _loc6_ = new Array("b1","b2","b3","b4","b5","b6","b7");
            _loc7_ = new Array(3,2,3,3,2,3,3);
            _loc9_ = _loc5_["pathb"];
            _loc4_ = 0;
            while(_loc4_ < _loc6_.length)
            {
               this.MapButton(_loc9_,_loc6_[_loc4_],_loc7_[_loc4_]);
               _loc4_++;
            }
            _loc6_ = new Array("c1","c2","c3","c4","c5","c6","c7");
            _loc7_ = new Array(2,3,3,2,6,2,2);
            _loc10_ = _loc5_["pathc"];
            _loc4_ = 0;
            while(_loc4_ < _loc6_.length)
            {
               this.MapButton(_loc10_,_loc6_[_loc4_],_loc7_[_loc4_]);
               _loc4_++;
            }
            _loc11_ = _loc5_["pathd"];
            this.MapButton(_loc11_,"d1",2);
            param1.parent.setChildIndex(param1,param1.parent.numChildren - 1);
            param1.parent.addChild(this.curMap);
            param1.parent.setChildIndex(this.curMap,param1.parent.getChildIndex(param1));
            this.curMap.scaleX = this.curMap.scaleY = 1 / Scale;
            this.curMap.gotoAndPlay(1);
         }
      }
      
      private function MapButton(param1:MovieClip, param2:String, param3:int) : void
      {
         var _loc4_:int = this.GetFailsByGroup(param2);
         Helpers.TryGotoAndStopInside(param1,param2,_loc4_ + 1);
         if(_loc4_ == param3)
         {
            if(this.mostRecentPath == param2)
            {
               Helpers.TryGotoAndStopInside(param1,param2 + "butt","overselect");
            }
            else
            {
               Helpers.TryGotoAndStopInside(param1,param2 + "butt","over");
            }
         }
         else if(this.mostRecentPath == param2)
         {
            Helpers.TryGotoAndStopInside(param1,param2 + "butt","upselect");
         }
         else
         {
            Helpers.TryGotoAndStopInside(param1,param2 + "butt","up");
         }
      }
      
      public function SetUpMapButton(param1:MovieClip, param2:String) : void
      {
         var mapBg:MovieClip = null;
         var bgLabel:String = null;
         var button:MovieClip = param1;
         var label:String = param2;
         if(button)
         {
            button.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               var _loc2_:Stage = button.stage;
               if(button.parent.parent.parent.parent && button.parent.parent.parent.parent is MovieClip)
               {
                  MovieClip(button.parent.parent.parent.parent).stop();
               }
               StartScene(label);
               ItAMain.instance.CloseMap(_loc2_);
            });
            mapBg = this.curMap["inner"]["mapbg"];
            bgLabel = button.name.substr(0,button.name.indexOf("butt"));
            button.addEventListener(MouseEvent.MOUSE_OVER,function(param1:MouseEvent):void
            {
               Helpers.TryGotoAndStop(mapBg,bgLabel);
            });
         }
      }
      
      public function HasAllFails() : Boolean
      {
         return this.uniqueFailCount == this.TotalUniqueFailCount;
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
         var _loc4_:MovieClip = new this.obj["ItAFailScreen"]();
         _loc4_.failwordLabel = param1;
         _loc4_.lastLabel = param2;
         _loc4_.scaleX = _loc4_.scaleY = Scale;
         this.addChild(_loc4_);
         if(this.HasAllFails())
         {
            AchMain.instance.Unlock(this,"ita_fails");
         }
      }
      
      public function StartScene(param1:String) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.sceneKeys)
         {
            this.sceneKeys = new Object();
            this.sceneKeys["mainchoice"] = "ItAIntro";
            this.sceneKeys["airshiptop"] = "ItAEarpiece";
            this.sceneKeys["boardroomchoice"] = "ItABoardroom";
            this.sceneKeys["engineroom"] = "ItAEngineRoom";
            this.sceneKeys["rampchoice"] = "ItARampRoom";
            this.sceneKeys["afinalchoice"] = "ItAAFinal";
            this.sceneKeys["deck"] = "ItAGrapple";
            this.sceneKeys["monitorroom"] = "ItASurveillanceRoom";
            this.sceneKeys["b3choice"] = "ItAEngineGem";
            this.sceneKeys["prisonb"] = "ItABrigVault";
            this.sceneKeys["vault"] = "ItAVault";
            this.sceneKeys["wingchoice"] = "ItAWing";
            this.sceneKeys["bfinal"] = "ItACCC";
            this.sceneKeys["cockpit"] = "ItACannonball";
            this.sceneKeys["brig"] = "ItABrigChoice";
            this.sceneKeys["vgbattles"] = "ItARHMChoice";
            this.sceneKeys["ventroom"] = "ItAAfterVg";
            this.sceneKeys["cfinalchoice"] = "ItACFinal";
            this.sceneKeys["safe"] = "ItAStickyHand";
         }
         this.subsTarget.x = (this.stage.stageWidth - this.subsTarget.width) / 2;
         this.subsTarget.y = this.stage.stageHeight - 120;
         trace("Going to " + param1);
         this.removeChildren();
         var _loc3_:String = this.sceneKeys[param1];
         if(_loc3_ == "ItAIntro")
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
      }
   }
}
