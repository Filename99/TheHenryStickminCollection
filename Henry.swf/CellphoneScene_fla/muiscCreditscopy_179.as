package CellphoneScene_fla
{
   import com.innersloth.Helpers;
   import flash.display.MovieClip;
   
   public dynamic class muiscCreditscopy_179 extends MovieClip
   {
       
      
      public var credits:MovieClip;
      
      public var fullsoundtrack:MovieClip;
      
      public var intro:MovieClip;
      
      public var pursuit:MovieClip;
      
      public var testimony:MovieClip;
      
      public function muiscCreditscopy_179()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
         Helpers.CreateButton(this.intro,true,false);
         Helpers.CreateButton(this.credits,true,false);
         Helpers.CreateButton(this.testimony,true,false);
         Helpers.CreateButton(this.pursuit,true,false);
         Helpers.CreateButton(this.fullsoundtrack,true,false);
         Helpers.UrlButton(this.intro,"https://www.newgrounds.com/audio/listen/824348");
         Helpers.UrlButton(this.credits,"https://www.newgrounds.com/audio/listen/888082");
         Helpers.UrlButton(this.pursuit,"https://www.newgrounds.com/audio/listen/950569");
         Helpers.UrlButton(this.testimony,"https://www.newgrounds.com/audio/listen/949601");
         Helpers.UrlButton(this.fullsoundtrack,"https://www.newgrounds.com/playlists/view/df2f69b39320040e04931ef5232752ff");
      }
   }
}
