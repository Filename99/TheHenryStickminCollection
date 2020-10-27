package CellphoneScene_fla
{
   import com.innersloth.henry.Bios.BiosMain;
   import flash.display.MovieClip;
   
   public dynamic class BIO_bus_150 extends MovieClip
   {
       
      
      public function BIO_bus_150()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         BiosMain.instance.SetupUnlocker(this,"etp_bus");
      }
   }
}
