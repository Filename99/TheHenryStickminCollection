package com.innersloth
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class Helpers
   {
      
      private static var musics:Dictionary = new Dictionary();
      
      private static var fade1:FaderSong;
      
      private static var timer:Timer;
      
      private static var fadeVolume:Number = 0;
      
      private static var fade2:FaderSong;
       
      
      public function Helpers()
      {
         super();
      }
      
      public static function StartFaderMusic(param1:FaderSong) : void
      {
         var sound:FaderSong = param1;
         if(!timer)
         {
            timer = new Timer(1000 / 24);
            timer.addEventListener(TimerEvent.TIMER,HandleFader);
            timer.start();
         }
         trace("play " + sound.Song);
         if(fade1)
         {
            if(fade1 == sound)
            {
               fade2 = null;
               return;
            }
            fade2 = sound;
         }
         else
         {
            fade1 = sound;
            fadeVolume = 0;
            fade1.channel = Sound(new fade1.Song()).play(fade1.startAt,0,new SoundTransform(fadeVolume * fade1.Volume));
            SoundChannel(fade1.channel).addEventListener(Event.SOUND_COMPLETE,function(param1:Event):void
            {
               fade1.channel = Sound(new fade1.Song()).play(0,1000,new SoundTransform(fadeVolume * fade1.Volume));
            });
         }
      }
      
      public static function HandleFader(param1:TimerEvent) : void
      {
         var evt:TimerEvent = param1;
         if(fade2 != null)
         {
            fadeVolume = fadeVolume - 1 / 24;
            if(fadeVolume < 0)
            {
               fade1.startAt = fade1.channel.position;
               fade1.channel.stop();
               fade1.channel = null;
               fadeVolume = 0;
               if(fade2.Song)
               {
                  fade1 = fade2;
                  fade2 = null;
                  fade1.channel = Sound(new fade1.Song()).play(fade1.startAt,0,new SoundTransform(fadeVolume * fade1.Volume));
                  SoundChannel(fade1.channel).addEventListener(Event.SOUND_COMPLETE,function(param1:Event):void
                  {
                     fade1.channel = Sound(new fade1.Song()).play(0,1000,new SoundTransform(fadeVolume * fade1.Volume));
                  });
               }
               else
               {
                  fade1 = null;
                  fade2 = null;
               }
            }
            else
            {
               SoundChannel(fade1.channel).soundTransform = new SoundTransform(fadeVolume * fade1.Volume);
            }
         }
         else if(fade1 != null)
         {
            if(fadeVolume < 1)
            {
               fadeVolume = fadeVolume + 1 / 24;
               if(fadeVolume > 1)
               {
                  fadeVolume = 1;
               }
               SoundChannel(fade1.channel).soundTransform = new SoundTransform(fadeVolume * fade1.Volume);
            }
         }
         else
         {
            timer.stop();
            timer = null;
         }
      }
      
      public static function StopFaderMusic(param1:Boolean = false) : void
      {
         if(param1)
         {
            timer.stop();
            timer = null;
         }
         if(timer)
         {
            fade2 = new FaderSong(null);
         }
         else
         {
            fade2 = null;
            if(fade1)
            {
               fade1.channel.stop();
               fade1.channel = null;
               fade1 = null;
            }
         }
      }
      
      public static function StartLoopedMusic(param1:String, param2:Class, param3:Number = 1) : void
      {
         var _loc4_:SoundTransform = null;
         var _loc5_:SoundChannel = null;
         if(!musics[param1])
         {
            _loc4_ = new SoundTransform(param3);
            _loc5_ = Sound(new param2()).play(0,1000,_loc4_);
            musics[param1] = _loc5_;
         }
      }
      
      public static function StartMusic(param1:String, param2:Class, param3:Number = 1, param4:Number = 0) : void
      {
         var _loc5_:SoundTransform = null;
         var _loc6_:SoundChannel = null;
         if(!musics[param1])
         {
            _loc5_ = new SoundTransform(param3);
            _loc6_ = Sound(new param2()).play(param4,0,_loc5_);
            musics[param1] = _loc6_;
         }
      }
      
      public static function SetVolume(param1:String, param2:Number) : void
      {
         if(musics[param1])
         {
            musics[param1].soundTransform = new SoundTransform(param2);
         }
         else
         {
            trace("No " + param1 + " to set volume for");
         }
      }
      
      public static function StopMusic(param1:String) : void
      {
         if(musics[param1])
         {
            trace("Stopped " + param1);
            musics[param1].stop();
            musics[param1] = null;
         }
         else
         {
            trace("No " + param1 + " to stop");
         }
      }
      
      public static function UrlButton(param1:MovieClip, param2:String) : void
      {
         var button:MovieClip = param1;
         var url:String = param2;
         CreateButton(button,true,false);
         button.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            navigateToURL(new URLRequest(url));
         });
      }
      
      public static function CreateButton(param1:MovieClip, param2:Boolean, param3:Boolean) : void
      {
         var innerbutt:MovieClip = param1;
         var over:Boolean = param2;
         var down:Boolean = param3;
         Helpers.TryGotoAndStop(innerbutt,"up");
         if(over)
         {
            innerbutt.addEventListener(MouseEvent.ROLL_OVER,function(param1:MouseEvent):void
            {
               if(!innerbutt.disabled)
               {
                  if(!innerbutt.selected)
                  {
                     Helpers.TryGotoAndStop(innerbutt,"over");
                  }
                  else
                  {
                     Helpers.TryGotoAndStop(innerbutt,"s_over");
                  }
               }
            });
            if(!innerbutt.hasEventListener(MouseEvent.ROLL_OUT))
            {
               innerbutt.addEventListener(MouseEvent.ROLL_OUT,function(param1:MouseEvent):void
               {
                  if(!innerbutt.disabled)
                  {
                     if(innerbutt.selected)
                     {
                        Helpers.TryGotoAndStop(innerbutt,"selected");
                     }
                     else
                     {
                        Helpers.TryGotoAndStop(innerbutt,"up");
                     }
                  }
               });
            }
         }
      }
      
      public static function Count(param1:Object) : int
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         for(_loc3_ in param1)
         {
            _loc2_++;
         }
         return _loc2_;
      }
      
      public static function CountPrefixed(param1:Dictionary, param2:String) : int
      {
         var _loc4_:* = null;
         var _loc3_:int = 0;
         for(_loc4_ in param1)
         {
            if(_loc4_.indexOf(param2) == 0)
            {
               _loc3_++;
            }
         }
         return _loc3_;
      }
      
      public static function ContainsLabel(param1:MovieClip, param2:Object) : Boolean
      {
         var _loc3_:* = null;
         if(param2 is String)
         {
            for(_loc3_ in param1.currentLabels)
            {
               if(param1.currentLabels[_loc3_].name == param2)
               {
                  return true;
               }
            }
            return false;
         }
         return int(param2) <= param1.totalFrames;
      }
      
      public static function TryGotoAndPlay(param1:MovieClip, param2:Object) : void
      {
         if(ContainsLabel(param1,param2))
         {
            param1.gotoAndPlay(param2);
         }
         else
         {
            param1.gotoAndPlay(1);
         }
      }
      
      public static function TryGotoAndStop(param1:MovieClip, param2:Object) : void
      {
         if(ContainsLabel(param1,param2))
         {
            param1.gotoAndStop(param2);
         }
         else
         {
            trace("couldn\'t go to " + param2);
         }
      }
      
      public static function TryGotoAndStopInside(param1:MovieClip, param2:String, param3:Object) : void
      {
         if(param1[param2])
         {
            TryGotoAndStop(param1[param2],param3);
         }
         else
         {
            trace("couldn\'t go to " + param3 + " in " + param2);
         }
      }
      
      public static function GetHash(param1:String) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 1;
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc2_ = _loc2_ + param1.charCodeAt(_loc4_) * _loc3_;
            _loc3_ = _loc3_ * 3;
            _loc4_++;
         }
         while(_loc2_ < 100000000)
         {
            _loc2_ = _loc2_ * 3;
         }
         while(_loc2_ > 999999999)
         {
            _loc2_ = _loc2_ / 3;
         }
         return _loc2_;
      }
   }
}
