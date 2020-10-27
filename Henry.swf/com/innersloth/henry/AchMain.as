package com.innersloth.henry
{
   import com.innersloth.Helpers;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import flash.filesystem.FileStream;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class AchMain
   {
      
      public static var instance:AchMain;
       
      
      private var achievements:Dictionary;
      
      private var showable:MovieClip;
      
      private var prefab:Class;
      
      private var popup:Class;
      
      private var steamworks:Object;
      
      private var lastViewed:String = "BtB_henry";
      
      private var allEndings:Object;
      
      public function AchMain(param1:Class, param2:Class, param3:Object = null)
      {
         this.achievements = new Dictionary();
         super();
         if(param3)
         {
            this.steamworks = param3;
         }
         this.prefab = param1;
         this.popup = param2;
         instance = this;
         this.LoadFromDisk();
      }
      
      public static function ClearSave() : void
      {
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("ach.sav");
         if(_loc1_.exists)
         {
            _loc1_.deleteFile();
         }
         instance.LoadFromDisk();
      }
      
      public function Toggle(param1:DisplayObjectContainer) : void
      {
         if(!this.showable)
         {
            trace("toggling ach on");
            this.showable = new this.prefab();
            this.showable.name = "AchScreen";
            param1.addChild(this.showable);
         }
      }
      
      public function Close() : void
      {
         if(this.showable)
         {
            trace("toggling ach off");
            this.showable.parent.removeChild(this.showable);
            this.showable = null;
         }
      }
      
      public function LoadFromDisk() : void
      {
         var _loc2_:ByteArray = null;
         var _loc3_:FileStream = null;
         var _loc4_:String = null;
         this.achievements = new Dictionary();
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("ach.sav");
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
               if(_loc4_.substr(0,2) == "a_")
               {
                  this.achievements[_loc4_.substr(2)] = true;
               }
            }
         }
      }
      
      public function SaveToDisk() : void
      {
         var _loc3_:* = null;
         var _loc4_:FileStream = null;
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("ach.sav");
         var _loc2_:ByteArray = new ByteArray();
         for(_loc3_ in this.achievements)
         {
            _loc2_.writeUTF("a_" + _loc3_);
         }
         _loc2_.deflate();
         _loc4_ = new FileStream();
         _loc4_.open(_loc1_,FileMode.WRITE);
         _loc4_.writeBytes(_loc2_,0,_loc2_.length);
         _loc4_.close();
      }
      
      public function GetCountForGame(param1:String) : int
      {
         return Helpers.CountPrefixed(this.achievements,param1);
      }
      
      public function Unlock(param1:DisplayObjectContainer, param2:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         if(!param1 || !param1.stage)
         {
            return;
         }
         if(!this.achievements[param2])
         {
            trace("unlocked " + param2);
            this.achievements[param2] = true;
            this.SaveToDisk();
            _loc3_ = new this.popup();
            _loc4_ = MovieClip(_loc3_.getChildAt(0));
            _loc4_.value = param2;
            this.InitAllEndings();
            if(!this.allEndings[param2])
            {
               if(param2.indexOf("fails") > 0 || param2.indexOf("bios") > 0)
               {
                  Helpers.TryGotoAndStopInside(_loc3_,"ticketbg","failbio");
               }
               else
               {
                  Helpers.TryGotoAndStopInside(_loc3_,"ticketbg","default");
               }
            }
            param1.stage.addChild(_loc3_);
            _loc3_.x = _loc3_.y = 0;
            if(this.steamworks)
            {
               this.steamworks.setAchievement(param2);
            }
         }
      }
      
      public function SetupHeader(param1:MovieClip) : void
      {
         var _loc2_:int = MainScene.instance.GetMenuUnlockedFrame();
         var _loc3_:Array = MainScene.instance.allGames;
         var _loc4_:int = 0;
         while(_loc4_ <= _loc2_)
         {
            this.SetupHeaderButton(param1,_loc3_[_loc4_]);
            _loc4_++;
         }
         this.ChangeGame(_loc3_[MainScene.instance.currentbg]);
      }
      
      public function SetupHeaderButton(param1:MovieClip, param2:String) : void
      {
         var myClip:MovieClip = param1;
         var game:String = param2;
         var butt:MovieClip = myClip["start" + game];
         Helpers.CreateButton(butt,true,false);
         butt.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ChangeGame(game);
         });
      }
      
      public function ChangeGame(param1:String) : void
      {
         var _loc6_:MovieClip = null;
         var _loc2_:int = MainScene.instance.GetMenuUnlockedFrame();
         var _loc3_:Array = MainScene.instance.allGames;
         var _loc4_:int = 0;
         while(_loc4_ <= _loc2_)
         {
            _loc6_ = this.showable["start" + _loc3_[_loc4_]];
            _loc6_.selected = false;
            _loc6_.gotoAndStop("up");
            _loc4_++;
         }
         this.showable["tickets"].gotoAndStop(param1 + "1");
         var _loc5_:MovieClip = this.showable["start" + param1];
         _loc5_.selected = true;
         _loc5_.gotoAndStop("selected");
      }
      
      public function SetButtonState(param1:MovieClip) : void
      {
         this.InitAllEndings();
         var _loc2_:Boolean = param1.name.indexOf("s_") == 0;
         var _loc3_:String = !!_loc2_?param1.name.substr(2):param1.name;
         var _loc4_:Boolean = this.achievements[_loc3_];
         if(!this.allEndings[_loc3_])
         {
            if(_loc3_.indexOf("fails") > 0 || _loc3_.indexOf("bios") > 0)
            {
               Helpers.TryGotoAndStopInside(param1,"ticketbg","failbio");
            }
            else
            {
               Helpers.TryGotoAndStopInside(param1,"ticketbg","default");
            }
         }
         if(_loc4_)
         {
            param1.gotoAndStop(2);
            Helpers.TryGotoAndStopInside(param1,"locktext",_loc3_);
            Helpers.TryGotoAndStopInside(param1,"lockfg","unlocked");
            Helpers.TryGotoAndStopInside(param1,"lockbg",_loc3_);
         }
         else if(_loc2_)
         {
            Helpers.TryGotoAndStopInside(param1,"locktext","secret");
            Helpers.TryGotoAndStopInside(param1,"lockbg","secret");
         }
         else
         {
            Helpers.TryGotoAndStopInside(param1,"locktext",_loc3_);
            Helpers.TryGotoAndStopInside(param1,"lockbg",_loc3_);
         }
      }
      
      private function InitAllEndings() : void
      {
         if(!this.allEndings)
         {
            this.allEndings = new Object();
            this.allEndings["btb_win"] = 1;
            this.allEndings["etp_legal"] = 1;
            this.allEndings["etp_badass"] = 1;
            this.allEndings["etp_sneaky"] = 1;
            this.allEndings["std_epic"] = 1;
            this.allEndings["std_aggressive"] = 1;
            this.allEndings["std_undetected"] = 1;
            this.allEndings["ita_rpe"] = 1;
            this.allEndings["ita_gspi"] = 1;
            this.allEndings["ita_rbh"] = 1;
            this.allEndings["ita_pbt"] = 1;
            this.allEndings["ftc_ca"] = 1;
            this.allEndings["ftc_tb"] = 1;
            this.allEndings["ftc_iro"] = 1;
            this.allEndings["ftc_pd"] = 1;
            this.allEndings["ftc_gi"] = 1;
            this.allEndings["ctm_aending"] = 1;
            this.allEndings["ctm_bending"] = 1;
            this.allEndings["ctm_cending"] = 1;
            this.allEndings["ctm_dending"] = 1;
            this.allEndings["ctm_eending"] = 1;
            this.allEndings["ctm_fending"] = 1;
            this.allEndings["ctm_gending"] = 1;
            this.allEndings["ctm_hending"] = 1;
            this.allEndings["ctm_jending"] = 1;
            this.allEndings["ctm_kending"] = 1;
            this.allEndings["ctm_lending"] = 1;
            this.allEndings["ctm_mending1"] = 1;
            this.allEndings["ctm_mending2"] = 1;
            this.allEndings["ctm_nending"] = 1;
            this.allEndings["ctm_pending"] = 1;
            this.allEndings["ctm_qending"] = 1;
         }
      }
   }
}
