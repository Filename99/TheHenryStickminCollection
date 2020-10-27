package EpicCredits_fla
{
   import com.innersloth.Helpers;
   import flash.display.MovieClip;
   
   public dynamic class muiscCreditscopy_42 extends MovieClip
   {
       
      
      public var credits:MovieClip;
      
      public var fullsoundtrack:MovieClip;
      
      public var intro:MovieClip;
      
      public var mushroom:MovieClip;
      
      public var robot:MovieClip;
      
      public var runaway:MovieClip;
      
      public function muiscCreditscopy_42()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
         Helpers.CreateButton(this.intro,true,false);
         Helpers.CreateButton(this.credits,true,false);
         Helpers.CreateButton(this.runaway,true,false);
         Helpers.CreateButton(this.robot,true,false);
         Helpers.CreateButton(this.mushroom,true,false);
         Helpers.CreateButton(this.fullsoundtrack,true,false);
         Helpers.UrlButton(this.intro,"https://www.newgrounds.com/audio/listen/936334");
         Helpers.UrlButton(this.credits,"https://www.newgrounds.com/audio/listen/210532");
         Helpers.UrlButton(this.runaway,"https://www.newgrounds.com/audio/listen/950646");
         Helpers.UrlButton(this.robot,"https://www.newgrounds.com/audio/listen/590533");
         Helpers.UrlButton(this.mushroom,"https://www.newgrounds.com/audio/listen/950647");
         Helpers.UrlButton(this.fullsoundtrack,"https://www.newgrounds.com/playlists/view/df2f69b39320040e04931ef5232752ff");
      }
   }
}
