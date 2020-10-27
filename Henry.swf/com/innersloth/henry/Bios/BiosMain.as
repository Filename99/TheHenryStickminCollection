package com.innersloth.henry.Bios
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.MainScene;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import flash.filesystem.FileStream;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class BiosMain
   {
      
      public static const TotalBtBBios:int = 5;
      
      public static const TotalEtPBios:int = 38;
      
      public static const TotalStDBios:int = 27;
      
      public static const TotalItABios:int = 58;
      
      public static const TotalFtCBios:int = 75;
      
      public static const TotalCtMBios:int = 222;
      
      public static const Locked:int = 0;
      
      public static const Unlocked:int = 1;
      
      public static const Viewed:int = 2;
      
      public static var instance:BiosMain;
       
      
      public var SeenInfo:Boolean = false;
      
      private var bios:Dictionary;
      
      private var showable:MovieClip;
      
      private var prefab:Class;
      
      private var popup:Class;
      
      public var lastViewed:String = "btb_henry";
      
      public var lastPage:String = "btb1";
      
      private var popupPool:Array;
      
      private var popupIndex:int = 0;
      
      public function BiosMain(param1:Class, param2:Class)
      {
         var _loc4_:MovieClip = null;
         this.bios = new Dictionary();
         this.popupPool = new Array();
         super();
         this.prefab = param1;
         this.popup = param2;
         instance = this;
         this.LoadFromDisk();
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = new param2();
            _loc4_.mouseEnabled = false;
            _loc4_.mouseChildren = false;
            _loc4_.stop();
            this.popupPool.push(_loc4_);
            _loc3_++;
         }
         this.bios["btb_henry"] = Unlocked;
      }
      
      public static function ClearSave() : void
      {
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("bios.sav");
         if(_loc1_.exists)
         {
            _loc1_.deleteFile();
         }
         instance.LoadFromDisk();
         instance.lastViewed = "btb_henry";
         instance.lastPage = "btb1";
      }
      
      public function Toggle(param1:DisplayObjectContainer) : void
      {
         if(this.showable)
         {
            trace("toggling bios off");
            this.showable.parent.removeChild(this.showable);
            this.showable = null;
         }
         else
         {
            trace("toggling bios on");
            this.showable = new this.prefab();
            this.showable.name = "BiosScreen";
            param1.addChild(this.showable);
         }
      }
      
      public function LoadFromDisk() : void
      {
         var _loc2_:ByteArray = null;
         var _loc3_:FileStream = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         this.SeenInfo = false;
         this.bios = new Dictionary();
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("bios.sav");
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
               _loc5_ = _loc2_.readUTF();
               if(_loc5_.substr(0,2) == "b_")
               {
                  _loc4_ = _loc5_.substr(2).split("=");
                  this.bios[String(_loc4_[0])] = parseInt(_loc4_[1]);
               }
               else if(_loc5_.substr(0,4) == "info")
               {
                  _loc4_ = _loc5_.split("=");
                  this.SeenInfo = parseInt(_loc4_[1]) == 1;
               }
            }
         }
      }
      
      public function SaveToDisk() : void
      {
         var _loc3_:* = null;
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("bios.sav");
         var _loc2_:ByteArray = new ByteArray();
         for(_loc3_ in this.bios)
         {
            _loc2_.writeUTF("b_" + _loc3_ + "=" + this.bios[_loc3_]);
         }
         _loc2_.writeUTF("info=" + (!!this.SeenInfo?1:0));
         _loc2_.deflate();
         var _loc4_:FileStream = new FileStream();
         _loc4_.open(_loc1_,FileMode.WRITE);
         _loc4_.writeBytes(_loc2_,0,_loc2_.length);
         _loc4_.close();
      }
      
      public function SetupUnlocker(param1:MovieClip, param2:String) : void
      {
         var self:MovieClip = param1;
         var name:String = param2;
         self.addEventListener(MouseEvent.ROLL_OVER,function(param1:MouseEvent):void
         {
            Mouse.cursor = MouseCursor.ARROW;
         },false,0,true);
         self.addEventListener(MouseEvent.RIGHT_MOUSE_DOWN,function clicker(param1:MouseEvent):void
         {
            Unlock(self.stage,name);
            self.removeEventListener(MouseEvent.RIGHT_MOUSE_DOWN,clicker);
            if(!self.hasEventListener(MouseEvent.MOUSE_DOWN))
            {
               self.mouseEnabled = false;
            }
         });
      }
      
      public function SilentUnlock(param1:String) : void
      {
         if(!this.bios[param1])
         {
            trace("unlocked " + param1);
            this.bios[param1] = Unlocked;
            this.SaveToDisk();
         }
      }
      
      public function Unlock(param1:DisplayObjectContainer, param2:String) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         if(param1 == null)
         {
            trace("Couldn\'t unlock bio: " + param2);
            return;
         }
         var _loc3_:MovieClip = this.popupPool[this.popupIndex++];
         if(this.popupIndex >= this.popupPool.length)
         {
            this.popupIndex = 0;
         }
         _loc3_.gotoAndPlay(1);
         var _loc4_:MovieClip = MovieClip(_loc3_.getChildAt(0));
         _loc4_.value = param2;
         _loc3_.x = param1.stage.mouseX - 15;
         _loc3_.y = param1.stage.mouseY - 15;
         if(!param1.parent)
         {
            param1.stage.addChild(_loc3_);
         }
         if(!this.bios[param2])
         {
            trace("unlocked " + param2);
            this.bios[param2] = Unlocked;
            this.SaveToDisk();
            _loc5_ = param2.indexOf("_");
            if(_loc5_ != -1)
            {
               _loc6_ = param2.substr(0,_loc5_);
               _loc7_ = Helpers.CountPrefixed(this.bios,_loc6_);
               switch(_loc6_)
               {
                  case "btb":
                     if(_loc7_ == TotalBtBBios)
                     {
                        AchMain.instance.Unlock(param1.stage,"btb_bios");
                     }
                     break;
                  case "etp":
                     if(_loc7_ == TotalEtPBios)
                     {
                        AchMain.instance.Unlock(param1.stage,"etp_bios");
                     }
                     break;
                  case "std":
                     if(_loc7_ == TotalStDBios)
                     {
                        AchMain.instance.Unlock(param1.stage,"std_bios");
                     }
                     break;
                  case "ita":
                     if(_loc7_ == TotalItABios)
                     {
                        AchMain.instance.Unlock(param1.stage,"ita_bios");
                     }
                     break;
                  case "ftc":
                     if(_loc7_ == TotalFtCBios)
                     {
                        AchMain.instance.Unlock(param1.stage,"ftc_bios");
                     }
                     break;
                  case "ctm":
                     if(_loc7_ == TotalCtMBios)
                     {
                        AchMain.instance.Unlock(param1.stage,"ctm_bios");
                     }
                     break;
                  default:
                     trace("Unrecognized bio prefix: " + _loc6_);
               }
            }
         }
         else
         {
            _loc3_.gotoAndPlay("have");
         }
      }
      
      public function ReturnToPool(param1:MovieClip) : void
      {
         param1.stop();
         param1.parent.removeChild(param1);
      }
      
      public function View(param1:String) : void
      {
         if(this.bios[param1] == Unlocked)
         {
            this.bios[param1] = Viewed;
            this.SaveToDisk();
         }
      }
      
      public function SetupHeader(param1:MovieClip) : void
      {
         var _loc2_:int = param1.name.indexOf("_");
         if(_loc2_ == -1)
         {
            return;
         }
         var _loc3_:String = param1.name.substr(0,_loc2_);
         var _loc4_:int = MainScene.instance.allGames.indexOf(_loc3_);
         if(_loc4_ > MainScene.instance.GetMenuUnlockedFrame())
         {
            param1.enabled = false;
         }
         else if(Helpers.CountPrefixed(this.bios,_loc3_) > 0)
         {
            Helpers.TryGotoAndStop(param1,"up");
         }
      }
      
      public function GotoGamePage(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         Helpers.TryGotoAndStop(this.showable["buttonPages"],param1 + "1");
         if(MainScene.instance.allGames[MainScene.instance.currentbg] == param1)
         {
            this.lastPage = param1 + "1";
         }
         for each(_loc2_ in MainScene.instance.allGames)
         {
            _loc3_ = this.showable[_loc2_ + "_bios"];
            if(param1 == _loc2_)
            {
               _loc3_.selected = true;
               _loc3_.gotoAndStop("selected");
            }
            else if(_loc3_.enabled)
            {
               _loc3_.selected = false;
               _loc3_.gotoAndStop("up");
            }
         }
      }
      
      public function GotoSubPage(param1:String) : void
      {
         Helpers.TryGotoAndStop(this.showable["buttonPages"],param1);
         var _loc2_:String = param1.substr(0,3);
         if(MainScene.instance.allGames[MainScene.instance.currentbg] == _loc2_)
         {
            this.lastPage = param1;
         }
      }
      
      public function GetCountForGame(param1:String) : int
      {
         return Helpers.CountPrefixed(this.bios,param1);
      }
      
      public function CardState(param1:String) : int
      {
         return int(this.bios[param1]) || int(Locked);
      }
      
      public function SetButtonState(param1:MovieClip) : void
      {
         var self:MovieClip = param1;
         switch(this.CardState(self.name))
         {
            case Unlocked:
               Helpers.TryGotoAndStop(self,"new");
               self.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
               {
                  if(lastViewed == self.name)
                  {
                     return;
                  }
                  Helpers.TryGotoAndStop(self,"unlocked");
                  lastViewed = self.name;
                  var _loc2_:MovieClip = MovieClip(self.parent.parent["card"]);
                  View(self.name);
                  _loc2_.target = self.name;
                  _loc2_.cardnum = "" + Helpers.GetHash(self.name);
                  _loc2_.gotoAndPlay("exit");
               });
               break;
            case Viewed:
               self.gotoAndStop("unlocked");
               self.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
               {
                  if(lastViewed == self.name)
                  {
                     return;
                  }
                  lastViewed = self.name;
                  var _loc2_:MovieClip = MovieClip(self.parent.parent["card"]);
                  View(self.name);
                  _loc2_.target = self.name;
                  _loc2_.cardnum = "" + Helpers.GetHash(self.name);
                  _loc2_.gotoAndPlay("exit");
               });
               break;
            default:
            case Locked:
               self.stop();
               self.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
               {
                  if(lastViewed == self.name)
                  {
                     return;
                  }
                  lastViewed = self.name;
                  var _loc2_:MovieClip = MovieClip(self.parent.parent["card"]);
                  _loc2_.target = self.name;
                  _loc2_.cardnum = "" + Helpers.GetHash(self.name);
                  _loc2_.gotoAndPlay("exit");
               });
         }
         MovieClip(self["cardImage"]).gotoAndStop(self.name);
      }
   }
}
