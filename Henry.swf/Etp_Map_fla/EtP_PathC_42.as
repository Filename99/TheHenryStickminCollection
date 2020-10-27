package Etp_Map_fla
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   
   public dynamic class EtP_PathC_42 extends MovieClip
   {
       
      
      public var backlobby:MovieClip;
      
      public var backlobbyFailCount:MovieClip;
      
      public var bathroom:MovieClip;
      
      public var bathroomFailCount:MovieClip;
      
      public var endbadass:MovieClip;
      
      public var entrance:MovieClip;
      
      public var entranceFailCount:MovieClip;
      
      public var lobbyturn:MovieClip;
      
      public var lobbyturnFailCount:MovieClip;
      
      public function EtP_PathC_42()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6);
      }
      
      function frame1() : *
      {
         stop();
         EtPMain.instance.SetupMapButton(this.bathroom,"etp_bathroom","BathroomChoice");
         EtPMain.instance.SetupMapButton(this.backlobby,"etp_backlobby","EtPChase");
         EtPMain.instance.SetupMapButton(this.lobbyturn,"etp_lobbyturn","d1");
         EtPMain.instance.SetupMapButton(this.entrance,"etp_entrance","showdown");
         EtPMain.instance.SetupMapButton(this.endbadass,"etp_endbadass",null);
      }
      
      function frame2() : *
      {
         stop();
         EtPMain.instance.SetupMapButton(this.bathroom,"etp_bathroom","BathroomChoice");
         EtPMain.instance.SetupMapButton(this.backlobby,"etp_backlobby","EtPChase");
         EtPMain.instance.SetupMapButton(this.lobbyturn,"etp_lobbyturn","d1");
         EtPMain.instance.SetupMapButton(this.entrance,"etp_entrance","showdown");
         EtPMain.instance.SetupMapButton(this.endbadass,"etp_endbadass",null);
      }
      
      function frame3() : *
      {
         stop();
         EtPMain.instance.SetupMapButton(this.bathroom,"etp_bathroom","BathroomChoice");
         EtPMain.instance.SetupMapButton(this.backlobby,"etp_backlobby","EtPChase");
         EtPMain.instance.SetupMapButton(this.lobbyturn,"etp_lobbyturn","d1");
         EtPMain.instance.SetupMapButton(this.entrance,"etp_entrance","showdown");
         EtPMain.instance.SetupMapButton(this.endbadass,"etp_endbadass",null);
      }
      
      function frame4() : *
      {
         stop();
         EtPMain.instance.SetupMapButton(this.bathroom,"etp_bathroom","BathroomChoice");
         EtPMain.instance.SetupMapButton(this.backlobby,"etp_backlobby","EtPChase");
         EtPMain.instance.SetupMapButton(this.lobbyturn,"etp_lobbyturn","d1");
         EtPMain.instance.SetupMapButton(this.entrance,"etp_entrance","showdown");
         EtPMain.instance.SetupMapButton(this.endbadass,"etp_endbadass",null);
      }
      
      function frame5() : *
      {
         stop();
         EtPMain.instance.SetupMapButton(this.bathroom,"etp_bathroom","BathroomChoice");
         EtPMain.instance.SetupMapButton(this.backlobby,"etp_backlobby","EtPChase");
         EtPMain.instance.SetupMapButton(this.lobbyturn,"etp_lobbyturn","d1");
         EtPMain.instance.SetupMapButton(this.entrance,"etp_entrance","showdown");
         EtPMain.instance.SetupMapButton(this.endbadass,"etp_endbadass",null);
      }
      
      function frame6() : *
      {
         stop();
         EtPMain.instance.SetupMapButton(this.bathroom,"etp_bathroom","BathroomChoice");
         EtPMain.instance.SetupMapButton(this.backlobby,"etp_backlobby","EtPChase");
         EtPMain.instance.SetupMapButton(this.lobbyturn,"etp_lobbyturn","d1");
         EtPMain.instance.SetupMapButton(this.entrance,"etp_entrance","showdown");
         EtPMain.instance.SetupMapButton(this.endbadass,"etp_endbadass",null);
      }
   }
}
