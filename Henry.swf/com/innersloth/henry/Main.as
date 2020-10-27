package com.innersloth.henry
{
   import com.amanitadesign.steam.FRESteamWorks;
   import com.innersloth.FaderSong;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.BtB.BtBMain;
   import com.innersloth.henry.EtP.EtPMain;
   import com.innersloth.henry.ItA.ItAMain;
   import com.innersloth.henry.StD.StDMain;
   import flash.desktop.NativeApplication;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.filesystem.File;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class Main extends Sprite
   {
      
      public static var instance:Main;
       
      
      private var myStage:Stage;
      
      private var loaderFtC:Loader;
      
      private var loaderCtM:Loader;
      
      private var loaderCtM2:Loader;
      
      private var skipIntroFtc:Boolean;
      
      public function Main()
      {
         super();
         instance = this;
         this.myStage = stage;
         stage.scaleMode = StageScaleMode.EXACT_FIT;
         var steamObj:Object = null;
         try
         {
            steamObj = new FRESteamWorks();
            steamObj.init();
         }
         catch(e:Error)
         {
         }
         new BiosMain(BioScreen,BioUnlock);
         new AchMain(AchievementScreen,AchievementUnlocked,steamObj);
         var songs:Array = [new FaderSong(song_BtBMenu2),new FaderSong(song_PrisonTitle),new FaderSong(song_DiamondMenu),new FaderSong(song_ItAMenu),new FaderSong(song_FtCTitle),new FaderSong(song_CtM)];
         var main:MainScene = new MainScene(menu_MainMenu,songs);
         main.ClearData = this.ClearData;
         main.StartBtB = this.StartBtB;
         main.StartEtP = this.StartEtP;
         main.StartStD = this.StartStD;
         main.StartItA = this.StartItA;
         main.StartFtC = this.StartFtC;
         main.StartCtM = this.StartCtM;
         if(main.fullscreen)
         {
            this.stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         var rootDir:File = File.applicationDirectory.resolvePath("Resources");
         if(!rootDir.exists)
         {
            rootDir = File.applicationDirectory;
         }
         trace("loading ftc");
         var urlRequest:URLRequest = new URLRequest(rootDir.resolvePath("HenryFtC.swf").url);
         this.loaderFtC = new Loader();
         this.loaderFtC.contentLoaderInfo.addEventListener(Event.COMPLETE,this.ftcLoaded);
         this.loaderFtC.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ftcFailed);
         this.loaderFtC.load(urlRequest,new LoaderContext(false,ApplicationDomain.currentDomain,null));
         trace("loading ctm");
         urlRequest = new URLRequest(rootDir.resolvePath("HenryCtM.swf").url);
         this.loaderCtM = new Loader();
         this.loaderCtM.contentLoaderInfo.addEventListener(Event.COMPLETE,this.ftcLoaded);
         this.loaderCtM.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ftcFailed);
         this.loaderCtM.load(urlRequest,new LoaderContext(false,ApplicationDomain.currentDomain,null));
         trace("loading ctm");
         urlRequest = new URLRequest(rootDir.resolvePath("HenryCtM2.swf").url);
         this.loaderCtM2 = new Loader();
         this.loaderCtM2.contentLoaderInfo.addEventListener(Event.COMPLETE,this.ftcLoaded);
         this.loaderCtM2.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ftcFailed);
         this.loaderCtM2.load(urlRequest,new LoaderContext(false,ApplicationDomain.currentDomain,null));
      }
      
      private function ftcFailed(event:IOErrorEvent) : void
      {
         NativeApplication.nativeApplication.exit();
      }
      
      private function ftcLoaded(event:Event) : void
      {
         if(this.loaderFtC.content && this.loaderCtM.content && this.loaderCtM2)
         {
            stage.addChild(new Titlescreen());
         }
      }
      
      public function StartBtB(skipIntro:Boolean) : void
      {
         trace("starting btb");
         var obj:Object = new Object();
         obj.BtBIntro = BtB_Intro;
         obj.BtBShovel = BtB_ShovelScene;
         obj.BtBExplosives = BtB_ExplosivesScene;
         obj.BtBTeleporter = BtB_TeleporterScene;
         obj.BtBLaser = BtB_LaserScene;
         obj.BtBWreckingBall = BtB_WreckingBallScene;
         obj.BtBDisguise = BtB_DisguiseScene;
         obj.BtBFailScreen = BtB_FailScreen;
         var skipLabel:String = !!skipIntro?"btb_main":"BtBIntro";
         this.StartScene(BtBMain,skipLabel,obj,1);
      }
      
      public function StartEtP(skipIntro:Boolean) : void
      {
         MainScene.instance.SetCurrentBg(MainScene.UnlockedEtP);
         trace("starting etp");
         this.myStage.frameRate = 30;
         var obj:Object = new Object();
         obj.EtPIntro = EtP_IntroScene;
         obj.EtPNRG = EtP_NrGScene;
         obj.EtPRocket = EtP_Rocket;
         obj.EtPTeleport = EtP_Teleporter;
         obj.EtPFile = EtP_File;
         obj.EtPFileWindow = EtP_fileWindow;
         obj.EtPFileCell = EtP_FileCell;
         obj.EtPGrenades = EtP_Grenades;
         obj.EtPChair = EtP_Chair;
         obj.EtPMeeting = EtP_VentLeft;
         obj.EtPRooftop = EtP_Rooftop;
         obj.EtPRope = EtP_Rope;
         obj.EtPParachute = EtP_Parachute;
         obj.EtPPlungers = EtP_Plungers;
         obj.EtPJetpack = EtP_Jetpack;
         obj.EtPCellphone = EtP_Cellphone;
         obj.EtPDrill = EtP_Drill;
         obj.EtPOpacitator = EtP_Opacitator;
         obj.EtPCrowbar = EtP_Crowbar;
         obj.EtPChase = EtP_Chase;
         obj.EtPFailScreen = EtP_FailScreen;
         obj.EtPMap = Etp_Map;
         obj.DonutGet = donutGet;
         var skipLabel:String = !!skipIntro?"MainMenu":"EtPIntro";
         this.StartScene(EtPMain,skipLabel,obj,EtPMain.Scale);
      }
      
      public function StartStD(skipIntro:Boolean) : void
      {
         MainScene.instance.SetCurrentBg(MainScene.UnlockedStD);
         trace("starting std");
         this.myStage.frameRate = 30;
         var obj:Object = new Object();
         obj.StDIntro = StD_0_Intro;
         obj.StDFailScreen = StDFailScreen;
         obj.StDMap = StD_0_Map;
         obj.StDPUnlocker = PaintingUnlocker;
         obj.StDBustin = StD_B1_Bustin;
         obj.StDTimed1 = StD_B1_Timed1;
         obj.StDTimed1Jump = StD_B1_Timed1Jump;
         obj.StDTimed1Kick = StD_B1_Timed1Kick;
         obj.StDTimed1Miss = StD_B1_Timed1Miss;
         obj.StDTimed1Ram = StD_B1_Timed1Ram;
         obj.StDTimed2 = StD_B2_Timed2;
         obj.StDTimed2Flail = StD_B2_Flail;
         obj.StDTimed2Lance = StD_B2_Lance;
         obj.StDTimed2Shield = StD_B2_Shield;
         obj.StDTimed2Miss = StD_B2_Timed2Miss;
         obj.StDTimed3 = StD_B3_Timed3;
         obj.StDTimed3Basket = StD_B3_Timed3Basket;
         obj.StDTimed3Miss = StD_B3_Timed3Fail;
         obj.StDTimed3TowCable = StD_B3_TowCable;
         obj.StDTimed4 = StD_B4_Timed4;
         obj.StDTimed6 = StD_B6_Timed6;
         obj.StDSneakin = StD_A1_Sneakin;
         obj.StDAntigrav = StD_A1_AntiGrav;
         obj.StDJumble = StD_A1_Jumble;
         obj.StDLiquid = StD_A1_Liquid;
         obj.StDShrinkRay = StD_A1_Shrink;
         obj.StDTeleporter = StD_A1_Teleporter;
         obj.StDPick = StD_A1_Pick;
         obj.StDRooftop = StD_A2_Rooftop;
         obj.StDFPunch = StD_A2_FPunch;
         obj.StDInvis = StD_A2_Invis;
         obj.StDPenny = StD_A2_Penny;
         obj.StDTranq = StD_A2_Tranq;
         obj.StDDiamondAbove = StD_A3_DiamondAbove;
         obj.StDDrop = StD_A3_Drop;
         obj.StDWire = StD_A3_Wire;
         obj.StDWormhole = StD_A3_Wormhole;
         obj.StDDiamondSneak = StD_A4_DiamondSneak;
         obj.StDHammer = StD_A4_Hammer;
         obj.StDLaserCutter = StD_A4_LaserCut;
         obj.StDBoxTrans = StD_A5_BoxTrans;
         obj.StDCannon = StD_A5_Cannon;
         obj.StDCheese = StD_A5_Cheese;
         obj.StDPlank = StD_A5_Plank;
         obj.StDBackdoor = StD_A6_Backdoor;
         obj.StDJump = StD_A6_Jump;
         obj.StDNeck = StD_A6_Neck;
         obj.StDRifle = StD_A6_Rifle;
         obj.StDDiamondDrop = StD_A6_DiamondDrop;
         obj.StDWW2Room = StD_C1_WWIIRoom;
         obj.StDBomb = StD_C1_Bomb;
         obj.StDGun = StD_C1_Gun;
         obj.StDPlane = StD_C1_Plane;
         obj.StDSleeping = StD_C2_Sleeping;
         obj.StDRetroTrans = StD_C3_RetroTrans;
         obj.StDAlien = StD_C3_Alien;
         obj.StDCrowbar = StD_C3_Crowbar;
         obj.StDGoodball = StD_C3_Pokeball;
         obj.StDMushroom = StD_C3_Mushroom;
         obj.StDCCC = StD_C4_CCC;
         obj.StDCCCChoice = StD_C4_CCCChoice;
         obj.StDNuke = StD_C4_Nuke;
         obj.StDZero = StD_C4_Zero;
         obj.StDSatellite = StD_C4_Satellite;
         obj.StDRobot = StD_C4_Robot;
         obj.StDEscape = StD_C4_Escape;
         obj.StDEpicEnd = StD_C4_EpicEnd;
         var skipLabel:String = !!skipIntro?"main":"StDIntro";
         this.StartScene(StDMain,skipLabel,obj,StDMain.Scale);
      }
      
      public function StartItA(skipIntro:Boolean) : void
      {
         MainScene.instance.SetCurrentBg(MainScene.UnlockedItA);
         trace("starting ita");
         this.myStage.frameRate = 24;
         var obj:Object = new Object();
         obj.ItAIntro = ItA_Intro;
         obj.ItAFailScreen = ItA_0_Failscreen;
         obj.ItAMap = ItA_0_Map;
         obj.ItAEarpiece = ItA_A0_Earpiece;
         obj.ItAAcid = ItA_A1_Acid;
         obj.ItAC4 = ItA_A1_C4;
         obj.ItAKnock = ItA_A1_Knock;
         obj.ItAVacuum = ItA_A1_Vacuum;
         obj.ItAKeypad = ItA_A1_Keypad;
         obj.ItABoardroom = ItA_A2_Boardroom;
         obj.ItADisguise = ItA_A2_Disguise;
         obj.ItATransD = ItA_A2_TransD;
         obj.ItAGlue = ItA_A2_Glue;
         obj.ItAEngineRoom = ItA_A3_engineroom;
         obj.ItAPlatform = ItA_A3_Platform;
         obj.ItAGravBubble = ItA_A3_Gravbubble;
         obj.ItARoboHelper = ItA_A3_Robohelper;
         obj.ItACharles = ItA_A3_Charles;
         obj.ItARampRoom = ItA_A4_RampRoom;
         obj.ItAGatling = ItA_A4_Gatling;
         obj.ItAMindControl = ItA_A4_Mindcontrol;
         obj.ItABoneMelt = ItA_A4_Bonemelt;
         obj.ItARemote = ItA_A4_Remote;
         obj.ItARecords = ItA_A5_Recordstimed;
         obj.ItANinjaStar = ItA_A5_Ninjastar;
         obj.ItAFalconKick = ItA_A5_Falconkick;
         obj.ItASpook = ItA_A5_Spook;
         obj.ItAPowerVent = ItA_A6_Powerscene;
         obj.ItAMassEffectOff = ItA_A6_poweroff;
         obj.ItAMassEffectReroute = ItA_A6_powerreroute;
         obj.ItAMassEffectNoHelp = ItA_A6_nohelp;
         obj.ItAAFinal = ItA_A7_cargobay;
         obj.ItAFlashBang = ItA_A7_Flashbang;
         obj.ItABanana = ItA_A7_Banana;
         obj.ItASleepingGas = ItA_A7_Sleepinggas;
         obj.ItAForceGun = ItA_A7_Forcegun;
         obj.ItAGrapple = ItA_B0_Grapple;
         obj.ItAExpandingFoam = ItA_B1_Expandingfoam;
         obj.ItAJoyBuzzer = ItA_B1_Joybuzzer;
         obj.ItAWait = ItA_B1_Wait;
         obj.ItABomb = ItA_B1_Bomb;
         obj.ItASurveillanceRoom = ItA_B2_Surveillance;
         obj.ItAComputer = ItA_B2_Computer;
         obj.ItAElevator = ItA_B2_Elevator;
         obj.ItAVent = ItA_B2_Vent;
         obj.ItAEngineGem = ItA_B3_EngineGem;
         obj.ItALeap = ItA_B3_Leap;
         obj.ItAStretch = ItA_B3_Stretch;
         obj.ItATeleporter = ItA_B3_Teleporter;
         obj.ItAPencil = ItA_B3_Pencil;
         obj.ItAFreeDave = ItA_B3_FreeDave;
         obj.ItABrigVault = ItA_B4_Brigvault;
         obj.ItAHack = ItA_B4_Hack;
         obj.ItARetroGlove = ItA_B4_Retroglove;
         obj.ItAMagic = ItA_B4_Magic;
         obj.ItAPaperizor = ItA_B4_Paperizor;
         obj.ItAVault = ItA_B5_Vault;
         obj.ItAClawPack = ItA_B5_Clawpack;
         obj.ItAShrinkNGrow = ItA_B5_Shrinkngrow;
         obj.ItAGravManip = ItA_B5_Gravlift;
         obj.ItAWing = ItA_B6_Wing;
         obj.ItAArmor = ItA_B6_Powerarmor;
         obj.ItAPropane = ItA_B6_Propane;
         obj.ItAShell = ItA_B6_Shell;
         obj.ItAUmbrella = ItA_B6_Umbrella;
         obj.ItACCC = ItA_B7_CCC;
         obj.ItADeb = ItA_B7_DEB;
         obj.ItALCutter = ItA_B7_Laserlaunch;
         obj.ItAPrototype = ItA_B7_Prototype;
         obj.ItAUnknown = ItA_B7_Unknown;
         obj.ItACannonball = ItA_C0_Cannonball;
         obj.ItAChair = ItA_C1_Chair;
         obj.ItALaser = ItA_C1_Laser;
         obj.ItAThruster = ItA_C1_Thruster;
         obj.ItABoilerChoice = ItA_C2_BoilerChoice;
         obj.ItAHallwayRun = ItA_C3_HallwayRun;
         obj.ItABiggol = ItA_C3_Biggol;
         obj.ItABrigChoice = ItA_C4_BrigChoice;
         obj.ItATechnoTrousers = ItA_C4_TechnoTrousers;
         obj.ItAMetalBend = ItA_C4_MetalBend;
         obj.ItARocketJump = ItA_C4_RocketJump;
         obj.ItARHMChoice = ItA_C5_RHMChoice;
         obj.ItAYoyo = ItA_C5_EB;
         obj.ItADirk = ItA_C5_FF;
         obj.ItAAfterVg = ItA_C6_AfterVG;
         obj.ItABeefUp = ItA_C6_Beefup;
         obj.ItAGlider = ItA_C6_Glider;
         obj.ItAJetBoots = ItA_C6_Jetboots;
         obj.ItACFinal = ItA_C7_Choice;
         obj.ItADummies = ItA_C7_Dummies;
         obj.ItAMissile = ItA_C7_Missile;
         obj.ItAParachute = ItA_C7_Parachute;
         obj.ItATank = ItA_C7_Tank;
         obj.ItAStickyHand = ItA_D0_Stickyhand;
         obj.ItAZPEnergy = ItA_D1_ZPE;
         obj.ItABallNChain = ItA_D1_BallnChain;
         var skipLabel:String = !!skipIntro?"mainchoice":"ItAIntro";
         this.StartScene(ItAMain,skipLabel,obj,ItAMain.Scale);
      }
      
      public function StartFtC(skipIntro:Boolean) : void
      {
         var content:Sprite = null;
         MainScene.instance.SetCurrentBg(MainScene.UnlockedFtC);
         this.skipIntroFtc = skipIntro;
         if(this.loaderFtC != null)
         {
            if(this.loaderFtC.content)
            {
               content = Sprite(this.loaderFtC.content);
               content["StartFtC"](this.myStage,MainScene.instance,this.skipIntroFtc);
            }
         }
      }
      
      public function StartCtM() : void
      {
         var content:Sprite = null;
         MainScene.instance.SetCurrentBg(MainScene.UnlockedCtM);
         if(this.loaderCtM != null)
         {
            if(this.loaderCtM.content)
            {
               content = Sprite(this.loaderCtM.content);
               content["StartCtM"](this.myStage,MainScene.instance,this.loaderCtM2);
            }
         }
      }
      
      public function ClearData() : void
      {
         trace("deleted data");
         BtBMain.ClearSave();
         EtPMain.ClearSave();
         StDMain.ClearSave();
         ItAMain.ClearSave();
         var saveFile:File = File.applicationStorageDirectory;
         saveFile = saveFile.resolvePath("ctm.sav");
         if(saveFile.exists)
         {
            saveFile.deleteFile();
         }
         saveFile = File.applicationStorageDirectory;
         saveFile = saveFile.resolvePath("ftc.sav");
         if(saveFile.exists)
         {
            saveFile.deleteFile();
         }
         BiosMain.ClearSave();
         MainScene.ClearSave();
         AchMain.ClearSave();
      }
      
      public function StartScene(gamemain:Class, scene:String, obj:Object, scale:Number) : void
      {
         var main:Sprite = new gamemain(MainScene.instance,obj);
         var stage:Stage = this.myStage;
         stage.removeChildren();
         stage.addChild(main);
         main["StartScene"](scene);
      }
   }
}
