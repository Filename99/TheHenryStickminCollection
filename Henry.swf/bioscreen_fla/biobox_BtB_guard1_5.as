package bioscreen_fla
{
   import com.innersloth.henry.Bios.BiosMain;
   import flash.display.MovieClip;
   
   public dynamic class biobox_BtB_guard1_5 extends MovieClip
   {
       
      
      public var cardImage:MovieClip;
      
      public function biobox_BtB_guard1_5()
      {
         super();
         addFrameScript(0,this.frame1,8,this.frame9,15,this.frame16);
      }
      
      function frame1() : *
      {
         if(BiosMain.instance)
         {
            BiosMain.instance.SetButtonState(this);
         }
         stop();
      }
      
      function frame9() : *
      {
         stop();
      }
      
      function frame16() : *
      {
         stop();
      }
   }
}
