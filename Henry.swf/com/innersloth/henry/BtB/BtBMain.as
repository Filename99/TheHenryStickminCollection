package com.innersloth.henry.BtB
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.MainScene;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import flash.filesystem.FileStream;
   import flash.filters.DropShadowFilter;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class BtBMain extends Sprite
   {
      
      public static var instance:BtBMain;
       
      
      public const TotalUniqueFailCount:int = 5;
      
      private var mainMenu:Sprite;
      
      private var obj:Object;
      
      public var uniqueFails:Dictionary;
      
      public var uniqueFailCount:int = 0;
      
      private var allSubs:Object;
      
      private var subsTarget:TextField;
      
      private var subsFormat:TextFormat;
      
      public function BtBMain(param1:Sprite, param2:Object)
      {
         this.obj = new Object();
         this.uniqueFails = new Dictionary();
         super();
         this.mainMenu = param1;
         instance = this;
         this.obj = param2;
         this.LoadFromDisk();
         if(param1)
         {
            this.LoadSubs(MainScene.instance.subs);
         }
      }
      
      public static function ClearSave() : void
      {
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("btb.sav");
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
            this.subsTarget.width = 600;
            this.subsTarget.height = 80;
            this.addChild(this.subsTarget);
         }
         this.allSubs = new Object();
         var _loc2_:File = File.applicationDirectory.resolvePath("btb_" + param1 + ".txt");
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
      
      public function HasAllFails() : Boolean
      {
         return this.uniqueFailCount == this.TotalUniqueFailCount;
      }
      
      public function GotoNextGame() : void
      {
         trace("Opening etp");
         var _loc1_:Stage = this.stage;
         _loc1_.removeChildren();
         _loc1_.addChild(this.mainMenu);
         this.mainMenu["StartEtP"](false);
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
         this.uniqueFails = new Dictionary();
         this.uniqueFailCount = 0;
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("btb.sav");
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
            }
         }
      }
      
      public function SaveToDisk() : void
      {
         var _loc3_:* = null;
         var _loc4_:FileStream = null;
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = _loc1_.resolvePath("btb.sav");
         var _loc2_:ByteArray = new ByteArray();
         for(_loc3_ in this.uniqueFails)
         {
            _loc2_.writeUTF("f_" + _loc3_);
         }
         _loc2_.deflate();
         _loc4_ = new FileStream();
         _loc4_.open(_loc1_,FileMode.WRITE);
         _loc4_.writeBytes(_loc2_,0,_loc2_.length);
         _loc4_.close();
      }
      
      public function ShowFail(param1:String) : void
      {
         this.uniqueFails[param1] = 1;
         this.uniqueFailCount = Helpers.Count(this.uniqueFails);
         this.SaveToDisk();
         var _loc2_:MovieClip = new this.obj["BtBFailScreen"]();
         _loc2_.failwordLabel = param1;
         this.addChild(_loc2_);
         if(this.HasAllFails())
         {
            AchMain.instance.Unlock(this,"btb_fails");
         }
      }
      
      public function StartScene(param1:String) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.stage)
         {
            return;
         }
         this.subsTarget.x = (this.stage.stageWidth - this.subsTarget.width) / 2;
         this.subsTarget.y = this.stage.stageHeight - 120;
         this.removeChildren();
         if(param1 == "btb_main")
         {
            _loc2_ = new this.obj["BtBIntro"]();
            _loc2_.gotoAndPlay("main");
            this.addChild(_loc2_);
         }
         else
         {
            this.addChild(new this.obj[param1]());
         }
         this.addChild(this.subsTarget);
      }
   }
}
