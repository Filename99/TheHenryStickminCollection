package com.innersloth.henry
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.BtB.BtBMain;
   import com.innersloth.henry.EtP.EtPMain;
   import com.innersloth.henry.ItA.ItAMain;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageDisplayState;
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import flash.filesystem.FileStream;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class MainScene extends Sprite
   {
      
      public static const UnlockedBtB:int = 0;
      
      public static const UnlockedEtP:int = 1;
      
      public static const UnlockedStD:int = 2;
      
      public static const UnlockedItA:int = 3;
      
      public static const UnlockedFtC:int = 4;
      
      public static const UnlockedCtM:int = 5;
      
      public static var instance:MainScene;
       
      
      public var fullscreen:int = 0;
      
      public var subs:String = "none";
      
      public var StartBtB:Function;
      
      public var StartEtP:Function;
      
      public var StartStD:Function;
      
      public var StartItA:Function;
      
      public var StartFtC:Function;
      
      public var StartCtM:Function;
      
      public var ClearData:Function;
      
      private var prefab:Class;
      
      private var unlockedLabel:int = 0;
      
      private var seenIntro:Boolean = false;
      
      private var myClip:MovieClip;
      
      public var currentbg:int = 0;
      
      private var aimbg:int = 0;
      
      public var targetbg:int = 0;
      
      public var allGames:Array;
      
      private var songs:Array;
      
      public var skipIntro:Boolean = false;
      
      private var itaEndings:Dictionary;
      
      private var ftcEndings:Dictionary;
      
      private var uniqueFailsFtC:int = 0;
      
      public var uniqueFailsCtM:int = 0;
      
      public function MainScene(param1:Class, param2:Array)
      {
         this.allGames = new Array("btb","etp","std","ita","ftc","ctm");
         this.itaEndings = new Dictionary();
         this.ftcEndings = new Dictionary();
         super();
         this.songs = param2;
         instance = this;
         var _loc3_:MainScene = this;
         this.prefab = param1;
         new BtBMain(null,null);
         new EtPMain(null,null);
         new StDMain(null,null);
         new ItAMain(null,null);
         this.LoadFromDisk();
         this.LoadSettings();
      }
      
      public static function ClearSave() : void
      {
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("main.sav");
         if(_loc1_.exists)
         {
            _loc1_.deleteFile();
         }
         instance.LoadFromDisk();
      }
      
      private function Show() : void
      {
         this.myClip = new this.prefab();
         this.addChild(this.myClip);
      }
      
      public function Refresh() : void
      {
         this.LoadFtCFromDisk();
         this.LoadCtMFromDisk();
         this.targetbg = this.currentbg;
         this.aimbg = this.currentbg;
         this.removeChildren();
         this.Show();
         this.UpdateButtons(this.currentbg);
         Helpers.StartFaderMusic(this.songs[this.currentbg]);
         var _loc1_:MovieClip = this.myClip["bgs"];
         var _loc2_:MovieClip = _loc1_["prevbg"];
         _loc1_.gotoAndStop(1);
         _loc2_.gotoAndStop(this.CurrentFrameString());
         this.UpdateBorder();
      }
      
      public function EvalArrows() : void
      {
         Helpers.StartFaderMusic(this.songs[this.aimbg]);
         this.myClip["lfade"].visible = this.myClip["larrow"].visible = this.aimbg > 0;
         this.myClip["rfade"].visible = this.myClip["rarrow"].visible = this.aimbg < this.unlockedLabel;
         var _loc1_:MovieClip = this.myClip["bgs"]["prevbg"];
         if(_loc1_)
         {
            _loc1_["skipbutt"].visible = (this.currentbg < this.unlockedLabel || this.seenIntro) && this.currentbg != UnlockedCtM;
         }
      }
      
      public function SetupBg(param1:MovieClip) : void
      {
         if(param1.name == "bgnext")
         {
            param1["skipbutt"].visible = (this.currentbg < this.unlockedLabel || this.seenIntro) && this.currentbg != UnlockedCtM;
            param1.gotoAndStop(MainScene.instance.NextFrameString());
         }
         else
         {
            param1["skipbutt"].visible = (this.currentbg < this.unlockedLabel || this.seenIntro) && this.currentbg != UnlockedCtM;
            param1.gotoAndStop(MainScene.instance.CurrentFrameString());
         }
      }
      
      public function PlayGame() : void
      {
         this.seenIntro = true;
         if(this.skipIntro)
         {
            Helpers.StopFaderMusic(true);
         }
         this.SaveToDisk();
         switch(this.currentbg)
         {
            case 0:
               this.StartBtB(this.skipIntro);
               break;
            case 1:
               this.StartEtP(this.skipIntro);
               break;
            case 2:
               this.StartStD(this.skipIntro);
               break;
            case 3:
               this.StartItA(this.skipIntro);
               break;
            case 4:
               this.StartFtC(this.skipIntro);
               break;
            case 5:
               this.StartCtM();
         }
         this.skipIntro = false;
      }
      
      public function ScrollLeft() : void
      {
         var _loc1_:int = this.targetbg - 1;
         if(_loc1_ >= 0)
         {
            this.ScrollBackground(_loc1_);
         }
      }
      
      public function ScrollRight() : void
      {
         var _loc1_:int = this.targetbg + 1;
         if(_loc1_ <= this.unlockedLabel)
         {
            this.ScrollBackground(_loc1_);
         }
      }
      
      public function PopBackground() : void
      {
         this.currentbg = this.NextFrameNum();
         this.SaveToDisk();
         this.myClip["BtB_fails"].gotoAndPlay(1);
         this.myClip["BtB_ach"].gotoAndPlay(1);
         this.myClip["BtB_bios"].gotoAndPlay(1);
      }
      
      public function UpdateBorder() : void
      {
         var _loc1_:int = this.NextFrameNum();
         this.myClip["borders"].gotoAndStop(this.allGames[_loc1_]);
      }
      
      public function FrameDelta() : int
      {
         return Math.abs(this.targetbg - this.currentbg);
      }
      
      public function NextFrameNum() : int
      {
         if(this.targetbg < this.currentbg)
         {
            return this.currentbg - 1;
         }
         if(this.targetbg > this.currentbg)
         {
            return this.currentbg + 1;
         }
         return this.currentbg;
      }
      
      public function CurrentFrameString() : String
      {
         return this.allGames[this.currentbg];
      }
      
      public function NextFrameString() : String
      {
         var _loc1_:int = this.NextFrameNum();
         return this.allGames[_loc1_];
      }
      
      public function UpdateButtons(param1:int) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc2_:MovieClip = this.myClip["gameButtons"];
         var _loc3_:int = 0;
         while(_loc3_ <= this.unlockedLabel && _loc3_ < this.allGames.length)
         {
            _loc4_ = this.allGames[_loc3_];
            _loc5_ = _loc2_["start" + _loc4_];
            _loc5_.gotoAndStop("up");
            _loc5_.selected = false;
            _loc3_++;
         }
         _loc2_["start" + this.allGames[param1]].gotoAndStop("selected");
         _loc2_["start" + this.allGames[param1]].selected = true;
      }
      
      public function ScrollBackground(param1:int) : void
      {
         if(this.currentbg == param1 || this.aimbg == param1)
         {
            return;
         }
         var _loc2_:int = this.currentbg;
         var _loc3_:int = param1;
         this.aimbg = _loc3_;
         this.UpdateButtons(param1);
         this.EvalArrows();
         this.targetbg = _loc3_;
         if(_loc2_ < _loc3_)
         {
            if(_loc3_ - _loc2_ > 1)
            {
               this.myClip["bgs"].gotoAndPlay("transRloop");
            }
            else
            {
               this.myClip["bgs"].gotoAndPlay("transR");
            }
         }
         else if(_loc2_ - _loc3_ > 1)
         {
            this.myClip["bgs"].gotoAndPlay("transLloop");
         }
         else
         {
            this.myClip["bgs"].gotoAndPlay("transL");
         }
      }
      
      public function LoadSettings() : void
      {
         var _loc2_:ByteArray = null;
         var _loc3_:FileStream = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("settings.txt");
         if(_loc1_.exists)
         {
            _loc2_ = new ByteArray();
            _loc3_ = new FileStream();
            _loc3_.open(_loc1_,FileMode.READ);
            _loc3_.readBytes(_loc2_,0,0);
            _loc3_.close();
            _loc4_ = _loc2_.readUTFBytes(_loc2_.length).replace("\r\n","\n");
            _loc5_ = _loc4_.split("\n");
            for each(_loc6_ in _loc5_)
            {
               if(_loc6_.substr(0,5) == "subs=")
               {
                  this.subs = _loc6_.substr(5);
               }
               else if(_loc6_.substr(0,11) == "fullscreen=")
               {
                  this.fullscreen = parseInt(_loc6_.substr(11));
               }
            }
         }
      }
      
      public function SaveSettings() : void
      {
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("settings.txt");
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTFBytes("subs=" + this.subs + "\r\n");
         _loc2_.writeUTFBytes("fullscreen=" + this.fullscreen + "\r\n");
         var _loc3_:FileStream = new FileStream();
         _loc3_.open(_loc1_,FileMode.WRITE);
         _loc3_.writeBytes(_loc2_,0,_loc2_.length);
         _loc3_.close();
      }
      
      public function LoadFromDisk() : void
      {
         var _loc2_:ByteArray = null;
         var _loc3_:FileStream = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         this.unlockedLabel = 0;
         this.seenIntro = false;
         this.currentbg = 0;
         this.aimbg = 0;
         this.itaEndings = new Dictionary();
         this.ftcEndings = new Dictionary();
         this.LoadFtCFromDisk();
         this.LoadCtMFromDisk();
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("main.sav");
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
               _loc5_ = _loc4_.substr(0,2);
               if(_loc5_ == "u_")
               {
                  this.unlockedLabel = parseInt(_loc4_.substr(2));
               }
               else if(_loc5_ == "1_")
               {
                  this.seenIntro = parseInt(_loc4_.substr(2)) == 1;
               }
               else if(_loc5_ == "s_")
               {
                  this.currentbg = parseInt(_loc4_.substr(2));
               }
               else if(_loc5_ == "i_")
               {
                  this.itaEndings[_loc4_.substr(2)] = 1;
               }
               else if(_loc5_ == "f_")
               {
                  this.ftcEndings[_loc4_.substr(2)] = 1;
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
         _loc1_ = _loc1_.resolvePath("main.sav");
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTF("u_" + this.unlockedLabel);
         _loc2_.writeUTF("1_" + (!!this.seenIntro?1:0));
         _loc2_.writeUTF("s_" + this.currentbg);
         for(_loc3_ in this.itaEndings)
         {
            _loc2_.writeUTF("i_" + _loc3_);
         }
         for(_loc4_ in this.ftcEndings)
         {
            _loc2_.writeUTF("f_" + _loc4_);
         }
         _loc2_.deflate();
         _loc5_ = new FileStream();
         _loc5_.open(_loc1_,FileMode.WRITE);
         _loc5_.writeBytes(_loc2_,0,_loc2_.length);
         _loc5_.close();
      }
      
      public function UnlockItA(param1:String) : void
      {
         this.itaEndings[param1] = 1;
         this.SaveToDisk();
         this.SetMenuUnlockedFrame(UnlockedFtC);
      }
      
      public function UnlockFtC(param1:String) : void
      {
         this.ftcEndings[param1] = 1;
         this.SaveToDisk();
         this.SetMenuUnlockedFrame(UnlockedCtM);
      }
      
      public function IsUnlocked(param1:String) : Boolean
      {
         if(Helpers.Count(this.itaEndings) == 0 && Helpers.Count(this.ftcEndings) == 0)
         {
            return true;
         }
         return this.itaEndings[param1] || this.ftcEndings[param1];
      }
      
      public function SetCurrentBg(param1:int) : void
      {
         this.currentbg = param1;
         this.targetbg = param1;
         this.aimbg = param1;
         this.SaveToDisk();
      }
      
      public function SetMenuUnlockedFrame(param1:int) : void
      {
         if(this.unlockedLabel < param1)
         {
            trace("unlocked " + param1);
            this.seenIntro = false;
            this.unlockedLabel = param1;
            this.SaveToDisk();
         }
      }
      
      public function GetMenuUnlockedFrame() : int
      {
         return this.unlockedLabel;
      }
      
      public function GetUniqueFailCount() : int
      {
         switch(this.currentbg)
         {
            case 0:
               return BtBMain.instance.uniqueFailCount;
            case 1:
               return EtPMain.instance.uniqueFailCount;
            case 2:
               return StDMain.instance.uniqueFailCount;
            case 3:
               return ItAMain.instance.uniqueFailCount;
            case 4:
               return this.uniqueFailsFtC;
            case 5:
               return this.uniqueFailsCtM;
            default:
               return 0;
         }
      }
      
      private function LoadFtCFromDisk() : void
      {
         var _loc2_:ByteArray = null;
         var _loc3_:FileStream = null;
         var _loc4_:String = null;
         this.uniqueFailsFtC = 0;
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("ftc.sav");
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
                  this.uniqueFailsFtC++;
               }
            }
         }
      }
      
      private function LoadCtMFromDisk() : void
      {
         var _loc2_:ByteArray = null;
         var _loc3_:FileStream = null;
         var _loc4_:String = null;
         this.uniqueFailsCtM = 0;
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("ctm.sav");
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
                  this.uniqueFailsCtM++;
               }
            }
         }
      }
      
      public function FullFailCount() : int
      {
         return BtBMain.instance.uniqueFailCount + EtPMain.instance.uniqueFailCount + StDMain.instance.uniqueFailCount + ItAMain.instance.uniqueFailCount + this.uniqueFailsFtC + this.uniqueFailsCtM;
      }
      
      public function FullTotalFailCount() : int
      {
         return BtBMain.instance.TotalUniqueFailCount + EtPMain.instance.TotalUniqueFailCount + StDMain.instance.TotalUniqueFailCount + ItAMain.instance.TotalUniqueFailCount + 60 + 164;
      }
      
      public function GetTotalUniqueFailCount() : int
      {
         switch(this.currentbg)
         {
            case 0:
               return BtBMain.instance.TotalUniqueFailCount;
            case 1:
               return EtPMain.instance.TotalUniqueFailCount;
            case 2:
               return StDMain.instance.TotalUniqueFailCount;
            case 3:
               return ItAMain.instance.TotalUniqueFailCount;
            case 4:
               return 60;
            case 5:
               return 164;
            default:
               return 0;
         }
      }
      
      public function GetAchCount() : int
      {
         return AchMain.instance.GetCountForGame(this.allGames[this.currentbg]);
      }
      
      public function GetTotalAchCount() : int
      {
         switch(this.currentbg)
         {
            case 0:
               return 4;
            case 1:
               return 9;
            case 2:
               return 10;
            case 3:
               return 17;
            case 4:
               return 15;
            case 5:
               return 27;
            default:
               return 0;
         }
      }
      
      public function GetBiosCount() : int
      {
         return BiosMain.instance.GetCountForGame(this.allGames[this.currentbg]);
      }
      
      public function GetTotalBiosCount() : int
      {
         switch(this.currentbg)
         {
            case 0:
               return BiosMain.TotalBtBBios;
            case 1:
               return BiosMain.TotalEtPBios;
            case 2:
               return BiosMain.TotalStDBios;
            case 3:
               return BiosMain.TotalItABios;
            case 4:
               return BiosMain.TotalFtCBios;
            case 5:
               return BiosMain.TotalCtMBios;
            default:
               return 0;
         }
      }
      
      public function ToggleSubs(param1:MovieClip) : void
      {
         if(this.subs == "none")
         {
            this.subs = "english";
            param1.gotoAndStop(2);
         }
         else if(this.subs == "english")
         {
            this.subs = "none";
            param1.gotoAndStop(1);
         }
         this.SaveSettings();
      }
      
      public function ToggleFullScreen(param1:MovieClip) : void
      {
         if(stage.displayState != StageDisplayState.FULL_SCREEN)
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
            this.fullscreen = 1;
            param1.gotoAndStop(2);
         }
         else
         {
            stage.displayState = StageDisplayState.NORMAL;
            this.fullscreen = 0;
            param1.gotoAndStop(1);
         }
         this.SaveSettings();
      }
   }
}
