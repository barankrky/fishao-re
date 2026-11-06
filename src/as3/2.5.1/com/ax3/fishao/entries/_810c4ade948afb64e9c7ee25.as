package com.ax3.fishao.entries
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.CharPosPoint;
   import com.ax3.display.tfs._bb16db8e79db6c61890c313e;
   import com.ax3.events._720429110fd3cfc01812b5a0;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.locations.privateHouse.model._2713ec585daceb8ad62e2797;
   import com.ax3.fishao.model._91aad973ddd3030366bf3e1f;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.fishingLine.model._72a97cef3acbd28d8d164ec8;
   import com.ax3.geom._a5c3dbdfbeb709a5bf92d27c;
   import flash.geom.Point;
   import protocol.sr.profile.ProfileUserInfoResp;
   
   public class _810c4ade948afb64e9c7ee25
   {
      
      public var username:String;
      
      public var view:*;
      
      public var position:_a5c3dbdfbeb709a5bf92d27c;
      
      public var rodInfoId:int = -2147483648;
      
      public var rodColor:String = null;
      
      public var viewConfig:CharViewConfig;
      
      public var fieldChar:_08c120b706560fce9302bcab;
      
      public var isReady:Boolean;
      
      public var level:int;
      
      public var floatId:String = GameSwf.settings.floatNumber;
      
      private var _d7d32da6885b2ed2d3b0f3fa:Array = null;
      
      public var isModerator:Boolean = false;
      
      public var positionPoint:CharPosPoint = new CharPosPoint();
      
      public var boatTransPositionPoint:CharPosPoint = new CharPosPoint();
      
      public var initialFishingPos:Point;
      
      private var _79eb139731a92ccaf89d2b22:String;
      
      private var _2c7b2af9ab7270208c108d69:String;
      
      public function _810c4ade948afb64e9c7ee25()
      {
         super();
         this.positionPoint.mouseChildren = false;
         this.positionPoint.mouseEnabled = false;
         this.positionPoint.alpha = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၛჿၺჁႎხ။ဉ၂ၹႠ჉႞ჯბဨႡၑၽဲ჏Ⴔიჰ","჎Ⴏဇဍ၅ၩ႐ჟ၁ၹუ၎ႽႯყၷ");
         this.boatTransPositionPoint.mouseChildren = false;
         this.boatTransPositionPoint.mouseEnabled = false;
      }
      
      public function get fishingLineColor() : String
      {
         return this._79eb139731a92ccaf89d2b22;
      }
      
      public function set fishingLineColor(param1:String) : void
      {
         var _loc2_:int = 0x552131D2 ^ -1257867709 ^ 0x5A6ECFF4 ^ 0x42071C58;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x785D42EA ^ -1202193832 ^ 0x41F5EDE5 ^ 0x79B1C16B))
            {
               case 0:
                  this._79eb139731a92ccaf89d2b22 = param1;
                  this.fieldChar.rod._2481ffc8f141fbced9f2246c(_72a97cef3acbd28d8d164ec8._c5779887be8eacdb7aa956f2(this._79eb139731a92ccaf89d2b22));
                  return;
               case 1:
                  if(this._79eb139731a92ccaf89d2b22 == param1)
                  {
                     _loc2_ = 0x0DA31AC7 ^ -1899990262 ^ -1366926141 ^ -710172368;
                  }
                  else
                  {
                     _loc2_ = 0x2DF6B78E ^ 0x05832A3A ^ 0x2142EF10 ^ -243669352;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _165898847e1b857d5aa8a938(param1:Object) : void
      {
         var _loc2_:int = -261283313 ^ 0x6BA7A857 ^ 0x54F1AD33 ^ -1566673180;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1240623950 ^ 0x3BC8269F ^ -975235124 ^ 0x25BFF46A))
            {
               case 0:
                  if(this.view is Object)
                  {
                     _loc2_ = -624409750 ^ 0x753AB23E ^ -1913019206 ^ 0x4FAE0460;
                  }
                  else
                  {
                     _loc2_ = 0x7A5E80A8 ^ -1576791602 ^ -864993782 ^ 0x798EFEE5;
                  }
                  break;
               case 1:
                  this.viewConfig = CharViewConfig.reviewCharForModeratorSuit(this.viewConfig,this.isModerator);
                  _loc2_ = 0x28E0F0D6 ^ 0x739AB0D1 ^ 0x14F937A7 ^ 0x22262628;
                  break;
               case 2:
                  if(this.viewConfig != null)
                  {
                     _loc2_ = 0x4AC2D98A ^ 0x4BB64A40 ^ 0x54E05745 ^ 0x38319505;
                  }
                  else
                  {
                     _loc2_ = 0x504137DF ^ -1956301122 ^ 0x310CA5A6 ^ -2020739761;
                  }
                  break;
               case 3:
                  return;
               case 4:
                  _bb16db8e79db6c61890c313e._a7e5a08ac5f225cac2ab429d(this,param1);
                  this._79eb139731a92ccaf89d2b22 = Debug.getPropertyOrDefault(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劋剒刚劆勲剓刡剩剌刭劯剮剒刵刨劓剚刐剙力剬刍剾务剒勸勓剌劂刐勆劻剀勿刹刼勧剌劌勢勾刎劄刯","勌剓勼劷勎剖刏劥刀勱剂刺劧勚勔劸"),_72a97cef3acbd28d8d164ec8.EFLC_WHITE);
                  if(this.view is String)
                  {
                     _loc2_ = 0x11E9D4E9 ^ 0x7D2C92F9 ^ 0x4A1298C0 ^ 0x4B728F5D;
                  }
                  else
                  {
                     _loc2_ = 0x3D183FBB ^ 0x441470B1 ^ 0x5B1A6521 ^ 0x4FB37BA0;
                  }
                  break;
               case 5:
                  this.viewConfig = CharViewConfig.fromObject(this.view);
                  _loc2_ = 0x569641D7 ^ -1830194568 ^ -1737414422 ^ 0x31AB4ACC;
                  break;
               case 6:
                  this.viewConfig = CharViewConfig.fromObject(JSON.parse(this.view));
                  _loc2_ = -314727275 ^ 0x16635E82 ^ -121085777 ^ 0x6E33CB31;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set isAtVihicle(param1:Boolean) : void
      {
         var _loc2_:int = -553287547 ^ 0x0361AEEC ^ 0x6B40AC48 ^ -1531330890;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1173417131 ^ -2062506141 ^ 0x4781879E ^ 0x6B030F3F))
            {
               case 0:
                  if(this.fieldChar != null)
                  {
                     _loc2_ = 0x0A0E17C2 ^ 0x22266F93 ^ 0x1BF671D6 ^ 0x20433511;
                  }
                  else
                  {
                     _loc2_ = -1307905026 ^ 0x02148ABC ^ 0x74EBB762 ^ -680987979;
                  }
                  break;
               case 1:
                  this.fieldChar.onRaft = param1;
                  _loc2_ = 0x75D5047B ^ -257250987 ^ -917831215 ^ 0x5FA9906A;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set pos(param1:Object) : void
      {
         if(param1 is String)
         {
            param1 = JSON.parse(String(param1));
         }
         this.position = new _a5c3dbdfbeb709a5bf92d27c(param1.x,param1.y,param1.rotation);
         this._2c7b2af9ab7270208c108d69 = Debug.getPropertyOrDefault(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ထ၍჋ၼჹမစဋ႕ဧဆဏၤ၌ၵဳ","ိၗსှ၉ၷၻဈၓၙႱၤုၞဌၤ"),_2713ec585daceb8ad62e2797.EPP_DEFAULT);
      }
      
      public function _c9aef71caac01218bc064356(param1:CharViewConfig) : void
      {
         var _loc2_:int = 0x0B2A9E08 ^ -1781234931 ^ -1853895836 ^ 0x6D0E2704;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x47906DC0 ^ 0x16F6B1F3 ^ -1998796421 ^ -1154096084))
            {
               case 0:
                  this.fieldChar._c9aef71caac01218bc064356();
                  _loc2_ = -784104951 ^ 0x6E3514BB ^ 0x42724D0A ^ -1618269474;
                  break;
               case 1:
                  this.viewConfig = param1;
                  if(this.fieldChar != null)
                  {
                     _loc2_ = -139103264 ^ -1910336793 ^ 0x2147DB77 ^ 0x3A5FCB14;
                  }
                  else
                  {
                     _loc2_ = 0x456B5F8B ^ -2142934278 ^ 0x6923933A ^ -830318803;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _cb25cfff109a720fc827119d() : void
      {
         this.fieldChar.setPosition(this.position.x,this.position.y,this.position.rotation);
         this.fieldChar.roomCurrent = this._2c7b2af9ab7270208c108d69;
         this.fieldChar._1c5844c9d006616ded423d2f(this.rodInfoId,_91aad973ddd3030366bf3e1f._1b0e8010b91a2c317d9e2641(this.rodColor));
         this.fieldChar._5ab99f81dfbca109ba4c2502(this.floatId);
      }
      
      public function setPosition(param1:int, param2:int, param3:int = -1) : void
      {
         var _loc4_:int = -908054862 ^ 0x09A24A87 ^ 0x58C4D521 ^ -196241725;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x4DC0934A ^ -1661515295 ^ 0x79FDA78E ^ -1006544144))
            {
               case 0:
                  return;
               case 1:
                  this.position.rotation = param3;
                  _loc4_ = -879409182 ^ -1044121877 ^ -1516475517 ^ -1023279777;
                  break;
               case 2:
                  this.position.x = param1;
                  this.position.y = param2;
                  if(param3 != (-548849532 ^ -334962119 ^ -1430795408 ^ 0x6609EE32))
                  {
                     _loc4_ = -426349460 ^ -1431476802 ^ 0x57D5C215 ^ 0x7725EC13;
                  }
                  else
                  {
                     _loc4_ = 0x4D289592 ^ 0x3190019D ^ -3589863 ^ -272987453;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _b794e968f5ef011cbfb845ae(param1:int, param2:String) : void
      {
         if(app.user.inFishingProcess.value == true && app.user.username == this.username)
         {
            if(this._d7d32da6885b2ed2d3b0f3fa == null)
            {
               this._d7d32da6885b2ed2d3b0f3fa = [];
               app.user.inFishingProcess.addEventListener(_720429110fd3cfc01812b5a0.CHANGE,this._94f5985c644b9c6449c8ebc2);
            }
            this._d7d32da6885b2ed2d3b0f3fa.push([param1,param2]);
         }
         else
         {
            this.rodInfoId = param1;
            this.rodColor = param2;
            this.fieldChar._1c5844c9d006616ded423d2f(param1,_91aad973ddd3030366bf3e1f._1b0e8010b91a2c317d9e2641(param2));
         }
      }
      
      private function _94f5985c644b9c6449c8ebc2(param1:_720429110fd3cfc01812b5a0) : void
      {
         var _loc2_:* = undefined;
         if(app.user.inFishingProcess.value == false)
         {
            while(this._d7d32da6885b2ed2d3b0f3fa.length > (-1709323968 ^ 0x0C40C30C ^ 0x68E5AA81 ^ -21454643))
            {
               _loc2_ = this._d7d32da6885b2ed2d3b0f3fa.shift();
               this._b794e968f5ef011cbfb845ae.apply(this,_loc2_);
            }
         }
      }
      
      public function _59bb65cc0c23cc40d9283b3f(param1:String, param2:ProfileUserInfoResp) : void
      {
         var _loc3_:int = 0x6C13F78B ^ 0x117BA19A ^ -633939782 ^ -396610404;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-2126448908 ^ -293928255 ^ -1773339968 ^ -1233799997))
            {
               case 0:
                  this.isModerator = param2.isModerator;
                  return;
               case 1:
                  if(param1 != null)
                  {
                     _loc3_ = 0x3A167163 ^ -2068594283 ^ -1302238488 ^ 0x43C6602A;
                  }
                  else
                  {
                     _loc3_ = -179701843 ^ -1492859472 ^ -1793568286 ^ -2007508535;
                  }
                  break;
               case 2:
                  this.username = param1;
                  _loc3_ = 0x38F5E7C8 ^ 0x2A209D47 ^ 0x32BAEA85 ^ 0x6F6D2A3C;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

