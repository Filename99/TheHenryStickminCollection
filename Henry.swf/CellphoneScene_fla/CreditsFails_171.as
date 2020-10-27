package CellphoneScene_fla
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class CreditsFails_171 extends MovieClip
   {
       
      
      public var fails:TextField;
      
      public var uniqueFails:TextField;
      
      public function CreditsFails_171()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         if(EtPMain.instance)
         {
            this.fails.text = "" + EtPMain.instance.EndingCount();
            this.uniqueFails.text = "" + EtPMain.instance.uniqueFailCount;
         }
      }
   }
}
