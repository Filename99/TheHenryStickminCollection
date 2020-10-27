package com.innersloth
{
   import flash.media.SoundChannel;
   
   public class FaderSong
   {
       
      
      public var Song:Class;
      
      public var startAt:Number;
      
      public var Volume:Number;
      
      public var channel:SoundChannel;
      
      public function FaderSong(param1:Class, param2:Number = 0.7)
      {
         super();
         this.Song = param1;
         this.startAt = 0;
         this.Volume = param2;
      }
   }
}
