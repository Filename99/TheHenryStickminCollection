package CellphoneScene_fla
{
   import com.innersloth.henry.Bios.BiosMain;
   import flash.display.MovieClip;
   
   public dynamic class BIO_prosecutor_40 extends MovieClip
   {
       
      
      public function BIO_prosecutor_40()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         BiosMain.instance.SetupUnlocker(this,"etp_prosecutor");
      }
   }
}
