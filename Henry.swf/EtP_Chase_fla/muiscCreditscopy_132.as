package EtP_Chase_fla
{
   import com.innersloth.Helpers;
   import flash.display.MovieClip;
   
   public dynamic class muiscCreditscopy_132 extends MovieClip
   {
       
      
      public var chase:MovieClip;
      
      public var credits:MovieClip;
      
      public var fullsoundtrack:MovieClip;
      
      public var intro:MovieClip;
      
      public var western:MovieClip;
      
      public function muiscCreditscopy_132()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
         Helpers.CreateButton(this.intro,true,false);
         Helpers.CreateButton(this.credits,true,false);
         Helpers.CreateButton(this.western,true,false);
         Helpers.CreateButton(this.chase,true,false);
         Helpers.CreateButton(this.fullsoundtrack,true,false);
         Helpers.UrlButton(this.intro,"https://www.newgrounds.com/audio/listen/824348");
         Helpers.UrlButton(this.credits,"https://www.newgrounds.com/audio/listen/950586");
         Helpers.UrlButton(this.western,"https://www.newgrounds.com/audio/listen/950588");
         Helpers.UrlButton(this.chase,"https://www.newgrounds.com/audio/listen/952363");
         Helpers.UrlButton(this.fullsoundtrack,"https://www.newgrounds.com/playlists/view/df2f69b39320040e04931ef5232752ff");
      }
   }
}
