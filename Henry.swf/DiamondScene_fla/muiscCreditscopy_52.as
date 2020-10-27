package DiamondScene_fla
{
   import com.innersloth.Helpers;
   import flash.display.MovieClip;
   
   public dynamic class muiscCreditscopy_52 extends MovieClip
   {
       
      
      public var credits:MovieClip;
      
      public var fullsoundtrack:MovieClip;
      
      public var intro:MovieClip;
      
      public function muiscCreditscopy_52()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
         Helpers.CreateButton(this.intro,true,false);
         Helpers.CreateButton(this.credits,true,false);
         Helpers.CreateButton(this.fullsoundtrack,true,false);
         Helpers.UrlButton(this.intro,"https://www.newgrounds.com/audio/listen/936334");
         Helpers.UrlButton(this.credits,"https://www.newgrounds.com/audio/listen/888316");
         Helpers.UrlButton(this.fullsoundtrack,"https://www.newgrounds.com/playlists/view/df2f69b39320040e04931ef5232752ff");
      }
   }
}
