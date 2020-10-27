package com.innersloth.henry.EtP
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
   
   public class EtPMain extends Sprite
   {
      
      public static const Scale:Number = 1.608;
      
      public static var instance:EtPMain;
       
      
      public const TotalUniqueFailCount:int = 18;
      
      private var obj:Object;
      
      private var curMap:MovieClip;
      
      public var donuts:Dictionary;
      
      public var uniqueFails:Dictionary;
      
      public var uniqueFailCount:int = 0;
      
      public var totalFailCount:int = 0;
      
      private var paths:Object;
      
      public var recentPath:int = 0;
      
      private var donutget:Class;
      
      private var allSubs:Object;
      
      private var subsTarget:TextField;
      
      private var subsFormat:TextFormat;
      
      private var mostRecentPath:String = "cell";
      
      private var sceneKeys:Object;
      
      public function EtPMain(param1:Sprite, param2:Object)
      {
         this.obj = new Object();
         this.donuts = new Dictionary();
         this.uniqueFails = new Dictionary();
         this.paths = new Object();
         super();
         instance = this;
         this.obj = param2;
         if(param2)
         {
            this.donutget = this.obj["DonutGet"];
            this.curMap = new this.obj["EtPMap"]();
            this.curMap.stop();
            this.curMap.name = "EtP_Map";
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
         _loc1_ = _loc1_.resolvePath("etp.sav");
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
            this.subsTarget.height = 80;
            this.addChild(this.subsTarget);
         }
         this.allSubs = new Object();
         var _loc2_:File = File.applicationDirectory.resolvePath("etp_" + param1 + ".txt");
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
         if((this.paths["a"] || 0) > 4)
         {
            _loc1_++;
         }
         if((this.paths["b"] || 0) > 2)
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
         trace("Opening std");
         MainScene.instance.SetMenuUnlockedFrame(MainScene.UnlockedStD);
         var _loc1_:Stage = this.stage;
         _loc1_.removeChildren();
         _loc1_.addChild(MainScene.instance);
         MainScene.instance.StartStD(false);
      }
      
      public function GotoMainMenu() : void
      {
         trace("Opening main menu");
         var _loc1_:Stage = this.stage;
         _loc1_.removeChildren();
         _loc1_.addChild(MainScene.instance);
         MainScene.instance.Refresh();
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
         this.donuts = new Dictionary();
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("etp.sav");
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
               else if(_loc4_.substr(0,2) == "d_")
               {
                  this.donuts[_loc4_.substr(2)] = 1;
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
         _loc1_ = _loc1_.resolvePath("etp.sav");
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
         for(_loc5_ in this.donuts)
         {
            _loc2_.writeUTF("d_" + _loc5_);
         }
         _loc2_.writeUTF("r_" + this.recentPath);
         _loc2_.deflate();
         _loc6_ = new FileStream();
         _loc6_.open(_loc1_,FileMode.WRITE);
         _loc6_.writeBytes(_loc2_,0,_loc2_.length);
         _loc6_.close();
      }
      
      public function SetupDonut(param1:MovieClip) : void
      {
         if(this.donuts[param1.name])
         {
            param1.mouseEnabled = false;
         }
         else if(!param1.hasEventListener(MouseEvent.CLICK))
         {
            param1.addEventListener(MouseEvent.CLICK,this.DonutClick);
         }
      }
      
      private function DonutClick(param1:MouseEvent) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:MovieClip = MovieClip(param1.currentTarget);
         if(!this.donuts[_loc2_.name])
         {
            this.donuts[_loc2_.name] = 1;
            trace("Donut gotten: " + _loc2_.name);
            _loc2_.visible = false;
            this.SaveToDisk();
            _loc3_ = new this.donutget();
            _loc3_.x = _loc2_.stage.mouseX;
            _loc3_.y = _loc2_.stage.mouseY - 15;
            _loc2_.stage.addChild(_loc3_);
         }
         if(Helpers.Count(this.donuts) == 5)
         {
            AchMain.instance.Unlock(this,"etp_donuts");
         }
      }
      
      public function SetPath(param1:String, param2:int) : void
      {
         this.mostRecentPath = param1 + (param2 - 1);
         trace("etp setpath" + param1 + param2);
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
      
      public function ToggleMap(param1:DisplayObject) : void
      {
         if(this.curMap.parent)
         {
            trace("toggling map off");
            this.curMap.gotoAndPlay("out");
         }
         else
         {
            trace("toggling map on");
            this.curMap.gotoAndPlay("in");
            param1.parent.setChildIndex(param1,param1.parent.numChildren - 1);
            param1.parent.addChild(this.curMap);
            param1.parent.setChildIndex(this.curMap,param1.parent.getChildIndex(param1));
            this.curMap.scaleX = this.curMap.scaleY = 1 / Scale;
         }
      }
      
      public function SetupMapButton(param1:MovieClip, param2:String, param3:String) : void
      {
         var target:MovieClip = param1;
         var bgName:String = param2;
         var sceneName:String = param3;
         if(!target)
         {
            return;
         }
         if(this.PathName(target.name) == this.mostRecentPath)
         {
            Helpers.TryGotoAndStopInside(this.curMap["inner"],"bg",bgName);
         }
         Helpers.CreateButton(target,false,false);
         target.addEventListener(MouseEvent.ROLL_OVER,function(param1:MouseEvent):void
         {
            curMap["inner"]["bg"].gotoAndStop(bgName);
         });
         if(sceneName != null)
         {
            target.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               EtPMain.instance.StartScene(sceneName);
               instance.addChild(curMap);
               curMap.scaleX = curMap.scaleY = 1;
               curMap.gotoAndPlay("out");
            });
         }
      }
      
      public function RefreshMap() : void
      {
         var _loc1_:MovieClip = this.curMap["inner"];
         Helpers.TryGotoAndStopInside(_loc1_,"patha",this.paths["a"] || 1);
         Helpers.TryGotoAndStopInside(_loc1_,"pathb",this.paths["b"] || 1);
         Helpers.TryGotoAndStopInside(_loc1_,"pathc",this.paths["c"] || 1);
         this.MapButton(_loc1_,"cell",4);
         var _loc2_:MovieClip = _loc1_["patha"];
         this.MapButton(_loc2_,"hallway",2);
         this.MapButton(_loc2_,"closet",2);
         this.MapButton(_loc2_,"roof",3);
         var _loc3_:MovieClip = _loc1_["pathb"];
         this.MapButton(_loc3_,"cellphone",1);
         var _loc4_:MovieClip = _loc1_["pathc"];
         this.MapButton(_loc4_,"bathroom",1);
         this.MapButton(_loc4_,"backlobby",2);
         this.MapButton(_loc4_,"lobbyturn",2);
         this.MapButton(_loc4_,"entrance",1);
      }
      
      private function MapButton(param1:MovieClip, param2:String, param3:int) : void
      {
         var _loc4_:int = this.GetFailsByGroup(param2);
         Helpers.TryGotoAndStopInside(param1,param2 + "FailCount",_loc4_ + 1);
         if(_loc4_ == param3)
         {
            if(this.mostRecentPath == this.PathName(param2))
            {
               Helpers.TryGotoAndStopInside(param1,param2,"overselect");
            }
            else
            {
               Helpers.TryGotoAndStopInside(param1,param2,"over");
            }
         }
         else if(this.mostRecentPath == this.PathName(param2))
         {
            Helpers.TryGotoAndStopInside(param1,param2,"upselect");
         }
         else
         {
            Helpers.TryGotoAndStopInside(param1,param2 + "butt","up");
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
      
      public function PathName(param1:String) : String
      {
         switch(param1)
         {
            case "bathroom":
               return "c1";
            case "backlobby":
               return "c2";
            case "lobbyturn":
               return "c3";
            case "entrance":
               return "c4";
            case "hallway":
               return "a1";
            case "closet":
               return "a2";
            case "roof":
               return "a3";
            case "cellphone":
               return "b1";
            default:
               return "cell";
         }
      }
      
      public function GetFailsByGroup(param1:String) : int
      {
         var _loc2_:int = 0;
         if(param1 == "cell")
         {
            _loc2_ = this.Fail("etp_rocket") + this.Fail("etp_nrg") + this.Fail("etp_teleporter") + this.Fail("etp_fileWindow");
         }
         else if(param1 == "bathroom")
         {
            _loc2_ = this.Fail("etp_opacitator");
         }
         else if(param1 == "closet")
         {
            _loc2_ = this.Fail("etp_ventLeft") + this.Fail("etp_grenade");
         }
         else if(param1 == "hallway")
         {
            _loc2_ = this.Fail("etp_timed1") + this.Fail("etp_timed2");
         }
         else if(param1 == "backlobby")
         {
            _loc2_ = this.Fail("etp_chase1Time") + this.Fail("etp_chase1Up");
         }
         else if(param1 == "lobbyturn")
         {
            _loc2_ = this.Fail("etp_chase2Time") + this.Fail("etp_chase2Down");
         }
         else if(param1 == "entrance")
         {
            _loc2_ = this.Fail("etp_timedFinal");
         }
         else if(param1 == "roof")
         {
            _loc2_ = this.Fail("etp_parachute") + this.Fail("etp_rope") + this.Fail("etp_jetpack");
         }
         else if(param1 == "cellphone")
         {
            _loc2_ = this.Fail("etp_cellphone");
         }
         return _loc2_;
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
         var _loc4_:MovieClip = new this.obj["EtPFailScreen"]();
         _loc4_.failwordLabel = param1;
         _loc4_.lastLabel = param2;
         _loc4_.scaleX = _loc4_.scaleY = Scale;
         this.addChild(_loc4_);
         if(this.HasAllFails())
         {
            AchMain.instance.Unlock(this,"etp_fails");
         }
      }
      
      public function StartScene(param1:String) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.sceneKeys)
         {
            this.sceneKeys = new Object();
            this.sceneKeys["MainMenu"] = "EtPIntro";
            this.sceneKeys["Evidence"] = "EtPCellphone";
            this.sceneKeys["BathroomChoice"] = "EtPDrill";
            this.sceneKeys["c1"] = "EtPChase";
            this.sceneKeys["d1"] = "EtPChase";
            this.sceneKeys["f1"] = "EtPChase";
            this.sceneKeys["showdown"] = "EtPChase";
            this.sceneKeys["Matrix"] = "EtPChase";
            this.sceneKeys["FileRetry"] = "EtPFileCell";
            this.sceneKeys["guard1attack"] = "EtPFileCell";
            this.sceneKeys["guard2attack"] = "EtPFileCell";
            this.sceneKeys["ClosetMenu"] = "EtPFileCell";
            this.sceneKeys["ChairArrows"] = "EtPChair";
            this.sceneKeys["RoofChoice"] = "EtPRooftop";
         }
         this.subsTarget.x = (this.stage.stageWidth - this.subsTarget.width) / 2;
         this.subsTarget.y = this.stage.stageHeight - 120;
         trace("Going to " + param1);
         this.removeChildren();
         var _loc3_:String = this.sceneKeys[param1];
         if(_loc3_ == "EtPIntro")
         {
            this.mostRecentPath = "cell";
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
