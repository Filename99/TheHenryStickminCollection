package ChaosTrans_fla
{
   import com.innersloth.henry.Bios.BiosMain;
   import flash.display.MovieClip;
   
   public dynamic class BIO_topcopy2_20 extends MovieClip
   {
       
      
      public function BIO_topcopy2_20()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         if(BiosMain.instance)
         {
            BiosMain.instance.SetupUnlocker(this,"std_cccofficer");
         }
      }
   }
}
