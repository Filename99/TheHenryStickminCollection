package BtB_FailScreen_fla
{
   import com.innersloth.henry.BtB.BtBMain;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class FAILCOUNT_15 extends MovieClip
   {
       
      
      public var failcount:TextField;
      
      public function FAILCOUNT_15()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         if(BtBMain.instance)
         {
            this.failcount.text = "" + BtBMain.instance.uniqueFailCount;
         }
      }
   }
}
