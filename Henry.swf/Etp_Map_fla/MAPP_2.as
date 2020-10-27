package Etp_Map_fla
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   
   public dynamic class MAPP_2 extends MovieClip
   {
       
      
      public var bg:MovieClip;
      
      public var cell:MovieClip;
      
      public var cellFailCount:MovieClip;
      
      public var patha:MovieClip;
      
      public var pathb:MovieClip;
      
      public var pathc:MovieClip;
      
      public function MAPP_2()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
         EtPMain.instance.SetupMapButton(this.cell,"etp_cell","MainMenu");
      }
   }
}
