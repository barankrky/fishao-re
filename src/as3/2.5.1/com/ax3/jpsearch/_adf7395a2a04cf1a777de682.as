package com.ax3.jpsearch
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class _adf7395a2a04cf1a777de682
   {
      
      private var _de7204a4cb0d94d2c3f08a70:Sprite;
      
      private const STEP:int = 15;
      
      private var _b03671ff0f5ba9bbb9cc77c8:Boolean;
      
      private var _de6fe3982f6cc70705120a28:BitmapData;
      
      private var _fa558de00b7fa5e8339e1e16:_36f7086fd79d91103b2bcd4a = new _36f7086fd79d91103b2bcd4a(_36f7086fd79d91103b2bcd4a._37a8dc5fa0713ca35697b35d);
      
      private var _9eb2b9899bb2fa605d1f813d:_3f0b8f3bb126033c881dfbc2;
      
      private var _1c3461eb4205431c7c9831f1:_3f0b8f3bb126033c881dfbc2;
      
      private var _50ca92d0904af14806674458:_3f0b8f3bb126033c881dfbc2;
      
      private var _3c44417a02859a2aa391afc3:Vector.<_3f0b8f3bb126033c881dfbc2>;
      
      private var _a421a0e5fae8d6054e56209b:Function = _cd6bbbda2b7877ec32c5c148._5ff30e7e653997d653e9a2fd;
      
      public function checkWalkableAt(param1:int, param2:int):Boolean
      {
         return true;
      }
      public var testPoints:Vector.<Point>;
      
      private var _b4f1276c11b8802a2c86795a:Vector.<_3f0b8f3bb126033c881dfbc2>;
      
      private var _8d3fe3abe097ace5b7c90a86:int = 800;
      
      private var _1fddc982d1f5c800689a9ca6:int = 800;
      
      private var _f68a438aef64b5c25cead2e2:int;
      
      public var maxCalculationTimeMs:int = 60000;
      
      private var _12c79f72599d6786d9151b92:_3f0b8f3bb126033c881dfbc2;
      
      private var _c8c361bdeda5e8bfbf91a27e:Boolean = true;
      
      public function _adf7395a2a04cf1a777de682(param1:BitmapData, param2:Sprite)
      {
         var _temp_5:* = this;
         var _temp_4:* = Vector.<Point>;
         var _temp_3:* = global;
         var _temp_2:* = §§findproperty(Point);
         var _temp_1:* = 0x01268982 ^ -1314445917 ^ -76761718 ^ 0x4BED19AB;
         _temp_5.testPoints = _temp_4([new Point(_temp_1,_temp_1),new Point(0x58F54F68 ^ -1002542292 ^ -1157783605 ^ 0x2636BB86,-935125419 ^ 0x222DB82A ^ -1781137119 ^ 0x7FB8A75E),new Point(0x4D1FB1DD ^ 0x53F21ADA ^ -1046479275 ^ -546155180,-593351049 ^ -1225970133 ^ 0x4888E9C3 ^ 0x22C7E99B),new Point(-1172965934 ^ -2063173 ^ 0x3C4EE5AA ^ 0x79BB94C3,-1952528954 ^ 0x3283FB61 ^ -1558970263 ^ 0x1A093EC8),new Point(-357865867 ^ -1756333141 ^ -1682765931 ^ 0x19B7E5B1,-560804030 ^ -982573986 ^ 0x698BDCBD ^ 0x72760FA5),new Point(-1965009127 ^ 0x21026244 ^ 0x02DC565F ^ 0x56C19CF5,-1599961647 ^ 0x79A9A26C ^ 0x29E8FDBE ^ -253502973),new Point(0x04F1EB27 ^ 0x1F6BBABD ^ 0x1D4205A1 ^ -114840639,-700196291 ^ 0x49AB75D6 ^ 0x4382EEAD ^ 0x2395BEBA),new Point(0x1FA57A40 ^ -722027874 ^ 0x233DF614 ^ -395430198,0x414C92E6 ^ -1281766835 ^ 0x2FC39C53 ^ 0x22E93B02),new Point(0x502049E4 ^ -155381144 ^ -1846730388 ^ -930118374,0x4713C8A9 ^ -1397731912 ^ -79528678 ^ 0x10E1F80F),new Point(0x5EC6D9C9 ^ -1910231979 ^ 0x59099600 ^ -1981062241
         ,0x6A271F4F ^ 0x6AA652C1 ^ -1489761401 ^ -1481292279),new Point(-482823305 ^ -1873047706 ^ 0x5F2E5CED ^ 0x2C4D60FE,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ထၥဉၹႍဲ჌ჳ။ဢႆၦီဗည႗ჄအႯၼფ၁ၠႭ","ဍၪဈ჊ုჅ჏ჇႪၧႠေჿႣ၃Ⴔ")),new Point(0x5F319E7C ^ 0x277C21F6 ^ 0x0C8FE026 ^ 0x74C25FAC,0x63355CBF ^ 0x2A598207 ^ -46397564 ^ -1269769922),new Point(-1281188910 ^ -597118633 ^ 0x55144936 ^ -987653043,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勭刀副勾剌剈刁初別劸勂刺勖刧刿劸勚劓劇助勤劚勢勰","勮勵初劃剕剖剱劔剿剼劶剋勯劷剕剴")),new Point(0x399A5CC4 ^ 0x103AB7C0 ^ -1268723648 ^ 0x623FC4B9,-126072623 ^ -1274574919 ^ 0x24ECD1FD ^ 0x68971E95),new Point(-694949764 ^ 0x37C59A36 ^ 0x3972EE63 ^ 0x27DB63D7,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掜揄掜掰挘揔掷掚挛捏揚揁捗挮挩揯挃挶掋揤揁捫挩揉","揆掔挛揜揆掌挗描捝挜挐揂挞掔掺挭")),new Point(-1417909345 ^ 0x7DEDCB81 ^ -637863420 ^ 0x0F6B5A1A,-1938532937 ^ 0x5830C490 ^ 0x7D3844C8 ^ 0x56832A11),new Point(0x610339FE ^ 0x3E98F691 ^ -1540227920 ^ 0x0455CC21,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劖勽刲利剐劗勉剷刜刅勱剏刏励刁勦剓剢劂划勣功则刣"
         ,"勾剷刊剹剼刉勌剒劙勃勇勛剿剏勥勾"))]);
         super();
         this._de6fe3982f6cc70705120a28 = param1;
         this._de7204a4cb0d94d2c3f08a70 = param2;
      }
      
      private static function _10e48e84215524cd54b9ed1e(param1:int, param2:int) : _3f0b8f3bb126033c881dfbc2
      {
         return new _3f0b8f3bb126033c881dfbc2(param1,param2);
      }
      
      private function _cf5b8b4dd56fb0d4209ae11b(param1:int, param2:int, param3:uint = 0, param4:uint = 4278190080, param5:int = 3) : void
      {
         var _loc6_:uint = uint(0x3CEF1B6C ^ -1082366624 ^ -940395862 ^ 0x4461CCA6);
         var _loc7_:uint = uint(-1621384808 ^ 0x72A56BA7 ^ 0x0FFB5325 ^ -502949606);
         if(this._de7204a4cb0d94d2c3f08a70)
         {
            _loc6_ = uint(param3 >> (0x44049502 ^ 0x7AEFBF77 ^ -1150530299 ^ -2054723736));
            param3 &= -1227797146 ^ -145512895 ^ 0x05C87682 ^ 0x44B5625A;
            _loc7_ = uint(param4 >> (-12160600 ^ -2080154712 ^ -1699980325 ^ -504794685));
            param4 &= -308488470 ^ -802097944 ^ -1453659986 ^ -1811335853;
            this._de7204a4cb0d94d2c3f08a70.graphics.beginFill(param3,_loc6_);
            this._de7204a4cb0d94d2c3f08a70.graphics.lineStyle(-1959354236 ^ 0x5C52A578 ^ -760746529 ^ 0x05C3E822,param4,_loc7_);
            this._de7204a4cb0d94d2c3f08a70.graphics.drawCircle(param1,param2,param5);
            this._de7204a4cb0d94d2c3f08a70.graphics.endFill();
         }
      }
      
      private function _75eec6309588f4aca0fd54a8(param1:int, param2:int, param3:int, param4:int, param5:uint = 4278190080, param6:int = 1) : void
      {
         var _loc7_:uint = uint(0x6918018E ^ 0x624147E3 ^ 0x486C7B39 ^ 0x43353D54);
         if(this._de7204a4cb0d94d2c3f08a70)
         {
            _loc7_ = uint(param5 >> (-1577978292 ^ -1613953258 ^ -936368463 ^ -166930445));
            param5 &= 0x3D78B772 ^ 0x739D6A55 ^ 0x7DE0158B ^ 0x33FA3753;
            this._de7204a4cb0d94d2c3f08a70.graphics.lineStyle(param6,param5,_loc7_);
            this._de7204a4cb0d94d2c3f08a70.graphics.moveTo(param1,param2);
            this._de7204a4cb0d94d2c3f08a70.graphics.lineTo(param3,param4);
         }
      }
      
      public function _4d44b9257c6f7eddde143d67(param1:int, param2:int) : void
      {
         this._fa558de00b7fa5e8339e1e16 = new _36f7086fd79d91103b2bcd4a(_36f7086fd79d91103b2bcd4a._37a8dc5fa0713ca35697b35d);
         this._f68a438aef64b5c25cead2e2 = getTimer();
         this._50ca92d0904af14806674458 = null;
         this._3c44417a02859a2aa391afc3 = null;
         this._b4f1276c11b8802a2c86795a = null;
         this._1c3461eb4205431c7c9831f1 = null;
         this._9eb2b9899bb2fa605d1f813d = _10e48e84215524cd54b9ed1e(param1,param2);
         this._9eb2b9899bb2fa605d1f813d.g = 0x6F188783 ^ 0x1156A3E9 ^ -761353185 ^ -1395619723;
         this._9eb2b9899bb2fa605d1f813d.f = -1599569442 ^ 0x4F5C5627 ^ -1885942030 ^ 0x6062190B;
         this._6e052ec52213e88307d8e922();
         this._fa558de00b7fa5e8339e1e16.push(this._9eb2b9899bb2fa605d1f813d);
         this._9eb2b9899bb2fa605d1f813d.opened = true;
         this._b03671ff0f5ba9bbb9cc77c8 = false;
      }
      
      private function _3c07cd7db9ecd4d83f4abd66() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(this._9eb2b9899bb2fa605d1f813d != null && this._1c3461eb4205431c7c9831f1 != null)
         {
            _loc1_ = this._9eb2b9899bb2fa605d1f813d.x % this.STEP;
            _loc2_ = this._9eb2b9899bb2fa605d1f813d.y % this.STEP;
            this._1c3461eb4205431c7c9831f1.x = int(this._1c3461eb4205431c7c9831f1.x / this.STEP) * this.STEP + _loc1_;
            this._1c3461eb4205431c7c9831f1.y = int(this._1c3461eb4205431c7c9831f1.y / this.STEP) * this.STEP + _loc2_;
         }
      }
      
      private function _6e052ec52213e88307d8e922() : void
      {
         var _loc1_:int = 0x4583C356 ^ -983117370 ^ 0x7A0EBC88 ^ 0x0CFA0A33;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-787239576 ^ -1890401346 ^ -1465865019 ^ 0xF06639))
            {
               case 0:
                  this._1b7d70d686a8aae1d05cff1d(this._9eb2b9899bb2fa605d1f813d);
                  _loc1_ = 0x66240143 ^ -1273449005 ^ 0x78395771 ^ 0x5C1447C8;
                  break;
               case 1:
                  if(this._9eb2b9899bb2fa605d1f813d != null)
                  {
                     _loc1_ = 0x48C26C67 ^ -1984596587 ^ -1943963019 ^ -1152923729;
                  }
                  else
                  {
                     _loc1_ = -1726376674 ^ -158325800 ^ -319015463 ^ 0x75642736;
                  }
                  break;
               case 2:
                  if(this._e57b921bc1681ba6695dd636(this._9eb2b9899bb2fa605d1f813d.x,this._9eb2b9899bb2fa605d1f813d.y) == false)
                  {
                     _loc1_ = -695864905 ^ -793421075 ^ -770130480 ^ 0x2239B2A0;
                  }
                  else
                  {
                     _loc1_ = 0x58616EF4 ^ -1234028552 ^ -1012921619 ^ -610076728;
                  }
                  break;
               case 3:
                  this._3c07cd7db9ecd4d83f4abd66();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _e0e234c4be4b6b9ef98017fb() : void
      {
         var _loc1_:int = -1446306097 ^ -383436209 ^ -1389823426 ^ 0x6BB4BCA2;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x7B8B2A52 ^ 0x12C34287 ^ -562514777 ^ 0x3142BE6F))
            {
               case 0:
                  this._1b7d70d686a8aae1d05cff1d(this._1c3461eb4205431c7c9831f1);
                  _loc1_ = -2011115014 ^ 0x54393842 ^ 0x08791A97 ^ 0x52129137;
                  break;
               case 1:
                  if(this._12c79f72599d6786d9151b92 != null)
                  {
                     _loc1_ = 0x478B546F ^ 0x358A4BE4 ^ -1540136061 ^ 0x50401E13;
                  }
                  else
                  {
                     _loc1_ = 0x018E4143 ^ -123280049 ^ -1745027283 ^ -391759553;
                  }
                  break;
               case 2:
                  this._1b7d70d686a8aae1d05cff1d(this._12c79f72599d6786d9151b92);
                  _loc1_ = -1853099323 ^ 0x6BF21C08 ^ -1723756768 ^ -448134157;
                  break;
               case 3:
                  if(this._1c3461eb4205431c7c9831f1 != null)
                  {
                     _loc1_ = -1489316306 ^ 0x30A8195E ^ 0x415ED7FF ^ 0x50BE7A96;
                  }
                  else
                  {
                     _loc1_ = -1456998705 ^ 0x36524C8F ^ -1949927648 ^ -1832800392;
                  }
                  break;
               case 4:
                  if(this._e57b921bc1681ba6695dd636(this._1c3461eb4205431c7c9831f1.x,this._1c3461eb4205431c7c9831f1.y) == false)
                  {
                     _loc1_ = -1099702716 ^ -1652020089 ^ -669107920 ^ 0x7D97A9EE;
                  }
                  else
                  {
                     _loc1_ = 0x6AD79E48 ^ -1573966727 ^ 0x417E75F0 ^ 0x0FF4A5D9;
                  }
                  break;
               case 5:
                  return;
               case 6:
                  if(this._e57b921bc1681ba6695dd636(this._12c79f72599d6786d9151b92.x,this._12c79f72599d6786d9151b92.y) == false)
                  {
                     _loc1_ = 0x71CD354C ^ -2893497 ^ 0x39D2EAC8 ^ 0x31BE64DC;
                  }
                  else
                  {
                     _loc1_ = 0x371EB89D ^ 0x7AC7D003 ^ 0x6E6C0326 ^ -1513682522;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _1b7d70d686a8aae1d05cff1d(param1:_3f0b8f3bb126033c881dfbc2) : void
      {
         var _loc2_:int = 0x73DA4040 ^ -1923743852 ^ 0x7B105490 ^ -2053117116;
         var _loc3_:int = 0x0E0E153B ^ 0x723106DD ^ 0x6675A8D8 ^ 0x23FE71DD;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x193AC090 ^ -983310075 ^ -1141151313 ^ 0x5E1682D3))
            {
               case 0:
                  if(this._e57b921bc1681ba6695dd636(param1.x,param1.y + _loc2_ * this.STEP))
                  {
                     _loc3_ = 0x11A4249D ^ -2134293765 ^ -1352586899 ^ 0x07B885ED;
                  }
                  else
                  {
                     _loc3_ = -1184683935 ^ 0x685086BA ^ 0x27CE0C27 ^ -817272825;
                  }
                  break;
               case 1:
                  if(this._e57b921bc1681ba6695dd636(param1.x + _loc2_ * this.STEP,param1.y + _loc2_ * this.STEP))
                  {
                     _loc3_ = -772411354 ^ 0x5934EC23 ^ 0x3F9DA47E ^ -1897368933;
                  }
                  else
                  {
                     _loc3_ = -396154624 ^ -1030929390 ^ 0x72A950B4 ^ 0x61F3F748;
                  }
                  break;
               case 2:
                  param1.y -= _loc2_ * this.STEP;
                  _loc3_ = -368345111 ^ -1562683644 ^ -1075532041 ^ -830452510;
                  break;
               case 3:
                  param1.x += _loc2_ * this.STEP;
                  param1.y -= _loc2_ * this.STEP;
                  _loc3_ = -714307680 ^ 0x26D90185 ^ 0x32CDB7B4 ^ -120784023;
                  break;
               case 4:
                  param1.x -= _loc2_ * this.STEP;
                  param1.y += _loc2_ * this.STEP;
                  _loc3_ = 0x3CDE7BDA ^ 0x5AA67DD6 ^ -1921041942 ^ -759958242;
                  break;
               case 5:
                  param1.x -= _loc2_ * this.STEP;
                  param1.y -= _loc2_ * this.STEP;
                  _loc3_ = -613327353 ^ -1441988317 ^ 0x39214CAD ^ 0x71E9D971;
                  break;
               case 6:
                  if(this._e57b921bc1681ba6695dd636(param1.x - _loc2_ * this.STEP,param1.y - _loc2_ * this.STEP))
                  {
                     _loc3_ = 0x22F63593 ^ -1944607978 ^ 0x3ADBFCAB ^ -1383161662;
                  }
                  else
                  {
                     _loc3_ = -158475152 ^ -862573509 ^ -611665494 ^ -668630267;
                  }
                  break;
               case 7:
                  if(this._e57b921bc1681ba6695dd636(param1.x - _loc2_ * this.STEP,param1.y + _loc2_ * this.STEP))
                  {
                     _loc3_ = 0x790733C4 ^ -155071195 ^ 0x43B0C398 ^ -171772012;
                  }
                  else
                  {
                     _loc3_ = -21749725 ^ -1592620967 ^ 0x4593DF93 ^ 0x2381BD0B;
                  }
                  break;
               case 8:
                  if(_loc2_ >= (-1640982108 ^ -626728456 ^ 0x7E680907 ^ 0x3AFC714F))
                  {
                     _loc3_ = -351876915 ^ -494660541 ^ -655981899 ^ -388983613;
                  }
                  else
                  {
                     _loc3_ = -1938710953 ^ 0x6D945485 ^ -1501202564 ^ 0x7ED47757;
                  }
                  break;
               case 9:
                  param1.x += _loc2_ * this.STEP;
                  param1.y += _loc2_ * this.STEP;
                  _loc3_ = -1666893973 ^ 0x5BB95126 ^ -1506800148 ^ 0x5898A159;
                  break;
               case 10:
                  _loc2_ = -2117859816 ^ -952602925 ^ 0x3E64B528 ^ 0x7898DDE2;
                  _loc3_ = -1223338889 ^ 0x525123AB ^ -1613031312 ^ 0x432BA54D;
                  break;
               case 11:
                  _loc2_++;
                  _loc3_ = -1273283635 ^ -2030319751 ^ -531100569 ^ -351520206;
                  break;
               case 12:
                  param1.x -= _loc2_ * this.STEP;
                  _loc3_ = 0x13A02D7E ^ -1352247275 ^ 0x27BA0C6F ^ -1563905028;
                  break;
               case 13:
                  if(this._e57b921bc1681ba6695dd636(param1.x + _loc2_ * this.STEP,param1.y - _loc2_ * this.STEP))
                  {
                     _loc3_ = 0x2DD0962D ^ -941015865 ^ -1218172223 ^ 0x64E94AC1;
                  }
                  else
                  {
                     _loc3_ = 0x654A14FA ^ -17846195 ^ -863103193 ^ 0x6E9F7978;
                  }
                  break;
               case 14:
                  if(this._e57b921bc1681ba6695dd636(param1.x + _loc2_ * this.STEP,param1.y))
                  {
                     _loc3_ = 0x48493F6F ^ -748562151 ^ -10994904 ^ 0x5DC417A4;
                  }
                  else
                  {
                     _loc3_ = -108809756 ^ 0x41D3C1DD ^ 0x7A4DDC9A ^ -72784310;
                  }
                  break;
               case 15:
                  param1.y += _loc2_ * this.STEP;
                  _loc3_ = 0x441F4944 ^ -1660478178 ^ -11762625 ^ 0x1FE01A9D;
                  break;
               case 16:
                  if(this._e57b921bc1681ba6695dd636(param1.x,param1.y - _loc2_ * this.STEP))
                  {
                     _loc3_ = 0x72D8DD02 ^ 0x44B93EDF ^ 0x392805C5 ^ 0x36FD2CF3;
                  }
                  else
                  {
                     _loc3_ = -1909921463 ^ 0x0C38A29C ^ 0x2BC0BB02 ^ -1872479696;
                  }
                  break;
               case 17:
                  return;
               case 18:
                  if(this._e57b921bc1681ba6695dd636(param1.x - _loc2_ * this.STEP,param1.y))
                  {
                     _loc3_ = -1274427783 ^ 0x34D05EFB ^ 0x2F92AB12 ^ -1761609355;
                  }
                  else
                  {
                     _loc3_ = -188268386 ^ -309867130 ^ -557213528 ^ -29499553;
                  }
                  break;
               case 19:
                  param1.x += _loc2_ * this.STEP;
                  _loc3_ = 0x257B29BA ^ -1025031946 ^ 0x114022CB ^ -815234689;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _5fe0dad9ab3cf2085d041ab9(param1:int, param2:int) : void
      {
         this._12c79f72599d6786d9151b92 = _10e48e84215524cd54b9ed1e(param1,param2);
         this._1c3461eb4205431c7c9831f1 = _10e48e84215524cd54b9ed1e(param1,param2);
         this._e0e234c4be4b6b9ef98017fb();
      }
      
      public function _4b406987b7185af600a41e7e() : void
      {
         if(this._de7204a4cb0d94d2c3f08a70 != null)
         {
            this._de7204a4cb0d94d2c3f08a70.graphics.clear();
         }
         if(Boolean(this._b03671ff0f5ba9bbb9cc77c8 == false) && Boolean(this._1c3461eb4205431c7c9831f1) && Boolean(this._9eb2b9899bb2fa605d1f813d))
         {
            if(this._fa558de00b7fa5e8339e1e16.length > (0x1B751983 ^ -1951559373 ^ 0x4E2DF638 ^ -554336632) && getTimer() - this._f68a438aef64b5c25cead2e2 < this.maxCalculationTimeMs)
            {
               this._50ca92d0904af14806674458 = this._fa558de00b7fa5e8339e1e16.shift();
               this._50ca92d0904af14806674458.closed = true;
               if(this._53295a6dd64f366ac2ef5440(this._50ca92d0904af14806674458))
               {
                  this.complete();
               }
               else
               {
                  this._ad76d3b6a911b1160e2a03a9(this._50ca92d0904af14806674458);
               }
            }
            else
            {
               this._b03671ff0f5ba9bbb9cc77c8 = true;
            }
         }
      }
      
      private function _a893dacd4d788a8fdea1c5bf() : void
      {
         var _loc1_:_3f0b8f3bb126033c881dfbc2 = null;
         var _loc2_:_3f0b8f3bb126033c881dfbc2 = null;
         if(this._9eb2b9899bb2fa605d1f813d != null)
         {
            this._cf5b8b4dd56fb0d4209ae11b(this._9eb2b9899bb2fa605d1f813d.x,this._9eb2b9899bb2fa605d1f813d.y,0x1EB8D313 ^ 0x7695DD88 ^ 0x2F4D54A9 ^ 0x47605A32,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捭挬揮揎捋探掚捗掞挒挬揞掫挝揋捈掝捏揎挱掷挴捈捎","揹掶挘揅揀挸捁捹揽捴挖捚揸揇换揌"),-982141868 ^ -1359989037 ^ -352371464 ^ -2122662278);
         }
         if(this._50ca92d0904af14806674458 != null)
         {
            this._cf5b8b4dd56fb0d4209ae11b(this._50ca92d0904af14806674458.x,this._50ca92d0904af14806674458.y,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("စၹ჋ჂၟႳၡၛၕဴ႓ၭဗၯတဝႳၖၴႃၛၲဇნ","ჟႬჍြဗဉႚကპჁნၿႏჃႤၑ"),-928380772 ^ 0x439C519F ^ 0x241DDB8E ^ -1356103027,0x3D1EF9A0 ^ -284770030 ^ -1612611616 ^ 0x4DF94757);
         }
         if(this._3c44417a02859a2aa391afc3)
         {
            for each(_loc1_ in this._3c44417a02859a2aa391afc3)
            {
               this._cf5b8b4dd56fb0d4209ae11b(_loc1_.x,_loc1_.y,0x519B53B5 ^ -1081348112 ^ 0x58AD7DC5 ^ -1229078144,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掜掕挤捊插揗捰捂捰挸掰捌掂揋挡捞掟挐挌捦捓捁揼捺","揹掊掺揺揤揈揫挓掀揱掜掩掶揓揣掛"));
            }
         }
         if(this._fa558de00b7fa5e8339e1e16 != null && this._fa558de00b7fa5e8339e1e16.length > (0x7E4CA49D ^ 0x0987AF7F ^ -1929400995 ^ -80435521))
         {
            for each(_loc1_ in this._fa558de00b7fa5e8339e1e16.nodes)
            {
               this._cf5b8b4dd56fb0d4209ae11b(_loc1_.x,_loc1_.y,0x05594048 ^ 0x1F4CC8B3 ^ 0x13522291 ^ 0x0947AA6A,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剀刏刉勡劀勳劂勅勳劺勩切剥剹剈勒剆別剳劫刎剖勁剭","勞动剀削勔刿刞劅勐勶劧劮功剁刁剐"),0x3263D56D ^ -22723864 ^ 0x34498CB5 ^ -124839115);
            }
         }
         if(this._1c3461eb4205431c7c9831f1 != null)
         {
            if(this._b03671ff0f5ba9bbb9cc77c8)
            {
               this._cf5b8b4dd56fb0d4209ae11b(this._1c3461eb4205431c7c9831f1.x,this._1c3461eb4205431c7c9831f1.y,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挪掐捊掽掌捓揎掩按掴挍挚捲換挡掸捔揲掺揕捞揉揌挊","揳挤挻挶捲捝控捹挄掽挴捨掎掙揝捤"),_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挈捄揌挫掱挍揚指掿揽捦掍挋挕挷挹揭揙揚揝掠挢掋揼","捇挗捳挢揃推揟挣插挿揶揻捜揘揉揤"),-1453183362 ^ 0x49D1A7DF ^ 0x17B4042D ^ -150499957);
               this._cf5b8b4dd56fb0d4209ae11b(this._12c79f72599d6786d9151b92.x,this._12c79f72599d6786d9151b92.y,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刷勻剚勏剘剈勻勝劻剪劮刊勑勼勞刕刦劷勐劅刉勒办刉","勶刿功勐劾劣力刁刢剋勞勜判剆剽刷"),_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揭掫揷挩捉掎揩掀捨掔挱挸捌掠揦探掋掹捄捛握掄捵掳","捎捪捪掟揇掍掭挋揘揩捱掯揠挷捒揲"),0x78BD7354 ^ 0x5D4C42AC ^ 0x1855496D ^ 0x3DA47892);
            }
            else
            {
               this._cf5b8b4dd56fb0d4209ae11b(this._1c3461eb4205431c7c9831f1.x,this._1c3461eb4205431c7c9831f1.y,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("သ၆ႶჃუუ჎Ⴔဨ႟ၧღဍၑბၵၒထးဏဌဇ၉ဌ","ၦჺၔ၁Ⴘၗ჋ၻၔၧჩ့ဓ႐ၜ႟"),_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勹剭勨划勼劃勳刞刯劐加剋劻動劎勃剼刋剗刜刵列刌剝","刺剞刘劂勐劲刈勭剅劝刭刜劇劳剞删"),-574798716 ^ -561198057 ^ -2038465816 ^ -2058423682);
               this._cf5b8b4dd56fb0d4209ae11b(this._12c79f72599d6786d9151b92.x,this._12c79f72599d6786d9151b92.y,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掸掏振挍揧挡挸掯揇捅掶捓掛挗捗捄揌捓揬捭掄挞捯掻","揟採挹挳揃捻挆探挭揋掎挮揁揎捩捒"),_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揉捑挦掖揜挂挓捖捫掄捨捠揔揠捣捄揵揝掔揂掶捬捱揙","揣揔捳挌揖挚挃授揘按揽捪捉掞揯掫"),-1630332649 ^ -1971429863 ^ 0x44E53837 ^ 0x50487F3C);
            }
         }
         if(this._b4f1276c11b8802a2c86795a != null)
         {
            _loc2_ = this._9eb2b9899bb2fa605d1f813d;
            this._cf5b8b4dd56fb0d4209ae11b(_loc2_.x,_loc2_.y,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挳掉挽捺揝揮措挅挜挧掵捾握揄捒捼掹捤挨掴捏掉挳掱","掐挩挲捅掎挄捦揈捰揮掹掤捂捏掜掁"),0x6BC75DAA ^ 0x1F6B4F78 ^ -236125310 ^ -2059333296,0x2F1DCA1A ^ 0x71CA856E ^ -133162911 ^ -1496885488);
            for each(_loc1_ in this._b4f1276c11b8802a2c86795a)
            {
               this._cf5b8b4dd56fb0d4209ae11b(_loc1_.x,_loc1_.y,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挺持揹挓掷捽掫揝挄捈揅掌挕揬推掹掄振挑揎按揊掠挽","揂捑挠捂指挝掮指捁挽掃掱揠揭挛捒"),-1165524270 ^ 0x7D5133F3 ^ -1071161810 ^ 0x07F1EF0F,-1366867096 ^ -638902113 ^ -1241316217 ^ -1049663627);
               if(_loc2_ != null)
               {
                  this._75eec6309588f4aca0fd54a8(_loc2_.x,_loc2_.y,_loc1_.x,_loc1_.y,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挺捝掅按掤挢掤挍捓挰揪挴揻挒掃挆捽挓捱捃揆捐捀掞","捶挼揅揘捲揕挱挚挚揷掤捦挠挠掚挜"),-1174504053 ^ 0x5226783C ^ -961476075 ^ 0x2D690FA1);
               }
               _loc2_ = _loc1_;
            }
            this._75eec6309588f4aca0fd54a8(_loc2_.x,_loc2_.y,this._1c3461eb4205431c7c9831f1.x,this._1c3461eb4205431c7c9831f1.y,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("႖ჭခနၾჀ၁ည჉ၩတၳဉၧჂႨაႫွဝႰლჾၓ","ႎဴ၌ဝၺဧၙც၌ႈႳႆႾპႵ၃"),-507637784 ^ -585181795 ^ -89647786 ^ -972501216);
            this._cf5b8b4dd56fb0d4209ae11b(this._1c3461eb4205431c7c9831f1.x,this._1c3461eb4205431c7c9831f1.y,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勁劘劮劽刚剻剝勌刁劁勷剗剩刕勳刀刄刋劬劕劌勞勖劌","剀剰剰劓勅勦刌勆劃劂勼勧勔劇剺加"),-549255650 ^ -1655587804 ^ 0x36419348 ^ 0x74532972,0x66AA8628 ^ 0x71E7C694 ^ -1640343807 ^ -1988683848);
         }
      }
      
      private function complete() : void
      {
         this._b03671ff0f5ba9bbb9cc77c8 = true;
         this._b4f1276c11b8802a2c86795a = new Vector.<_3f0b8f3bb126033c881dfbc2>();
         while(this._e60f76dd64ccb882e814db7d(this._50ca92d0904af14806674458) == false && this._50ca92d0904af14806674458 != null)
         {
            this._b4f1276c11b8802a2c86795a.push(this._50ca92d0904af14806674458);
            this._50ca92d0904af14806674458 = this._50ca92d0904af14806674458.parent;
         }
         this._b4f1276c11b8802a2c86795a.shift();
         this._b4f1276c11b8802a2c86795a.reverse();
         this._b4f1276c11b8802a2c86795a.push(this._12c79f72599d6786d9151b92);
      }
      
      private function _53295a6dd64f366ac2ef5440(param1:_3f0b8f3bb126033c881dfbc2) : Boolean
      {
         return Point.distance(param1,this._1c3461eb4205431c7c9831f1) <= this.STEP;
      }
      
      private function _70f62a7084b256ee0916dd24(param1:int, param2:int) : Boolean
      {
         return (this._1c3461eb4205431c7c9831f1.x - param1) * (this._1c3461eb4205431c7c9831f1.x - param1) + (this._1c3461eb4205431c7c9831f1.y - param2) * (this._1c3461eb4205431c7c9831f1.y - param2) <= this.STEP * this.STEP;
      }
      
      private function _e60f76dd64ccb882e814db7d(param1:_3f0b8f3bb126033c881dfbc2) : Boolean
      {
         return Point.distance(param1,this._9eb2b9899bb2fa605d1f813d) <= this.STEP;
      }
      
      private function _ad76d3b6a911b1160e2a03a9(param1:_3f0b8f3bb126033c881dfbc2) : void
      {
         var _loc2_:_3f0b8f3bb126033c881dfbc2 = null;
         var _loc3_:_3f0b8f3bb126033c881dfbc2 = null;
         var _loc4_:int = 0x266C972F ^ -2079801395 ^ 0x5F05CFAB ^ -43915447;
         var _loc5_:int = 0x4C6C5846 ^ -288909826 ^ 0x329CB4 ^ -1567010548;
         var _loc6_:int = 0x0EBA9E4C ^ 0x318D542F ^ 0x6016FF36 ^ 0x5F213555;
         var _loc7_:int = 0x4DC6470F ^ 0x21AA5494 ^ -1331073990 ^ -591036511;
         var _loc8_:Point = null;
         var _loc9_:int = param1.x;
         var _loc10_:int = param1.y;
         var _loc11_:int = this._1c3461eb4205431c7c9831f1.x;
         var _loc12_:int = this._1c3461eb4205431c7c9831f1.y;
         this._3c44417a02859a2aa391afc3 = this._2ceffd9d10a07cfd24fde423(param1);
         var _loc13_:int = -93943829 ^ -1192976887 ^ 0x7933BFB1 ^ 0x3BB1A653;
         var _loc14_:int = int(this._3c44417a02859a2aa391afc3.length);
         while(_loc13_ < _loc14_)
         {
            _loc2_ = this._3c44417a02859a2aa391afc3[_loc13_];
            _loc8_ = this._856dcff71cdc4a610a71bba5(_loc2_.x,_loc2_.y,param1.x,param1.y,-1271138163 ^ -1413492567 ^ -2005929809 ^ -1746151285);
            if(_loc8_)
            {
               _loc3_ = _10e48e84215524cd54b9ed1e(_loc8_.x,_loc8_.y);
            }
            else
            {
               _loc3_ = null;
            }
            if(_loc3_)
            {
               _loc4_ = _loc3_.x;
               _loc5_ = _loc3_.y;
               if(!_loc3_.closed)
               {
                  _loc6_ = _cd6bbbda2b7877ec32c5c148._f680f291f6f5252482fc9d07(Math.abs(_loc4_ - _loc9_),Math.abs(_loc5_ - _loc10_));
                  _loc7_ = param1.g + _loc6_;
                  if(!_loc3_.opened || _loc7_ < _loc3_.g)
                  {
                     _loc3_.g = _loc7_;
                     _loc3_.h = _loc3_.h || int(this._a421a0e5fae8d6054e56209b(Math.abs(_loc4_ - _loc11_),Math.abs(_loc5_ - _loc12_)));
                     _loc3_.f = _loc3_.g + _loc3_.h;
                     _loc3_.parent = param1;
                     if(!_loc3_.opened)
                     {
                        this._fa558de00b7fa5e8339e1e16.push(_loc3_);
                        _loc3_.opened = true;
                     }
                     else
                     {
                        this._fa558de00b7fa5e8339e1e16._436a92039c352d9199b7a18d(_loc3_);
                     }
                  }
               }
            }
            _loc13_++;
         }
      }
      
      private function _856dcff71cdc4a610a71bba5(param1:int, param2:int, param3:int, param4:int, param5:int) : Point
      {
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:int = param1 - param3;
         var _loc9_:int = param2 - param4;
         if(!this._e57b921bc1681ba6695dd636(param1,param2))
         {
            return null;
         }
         if(this._70f62a7084b256ee0916dd24(param1,param2))
         {
            return new Point(param1,param2);
         }
         if(param5 > (0x082C009A ^ 0x28B63B7C ^ -1917182750 ^ -1390401778))
         {
            return new Point(param1,param2);
         }
         if(_loc8_ != (-259720593 ^ -1007401163 ^ 0x27B073D9 ^ 0x14C0CE83) && _loc9_ != (-2016518417 ^ -1451728210 ^ 0x502015F9 ^ 0x7E9629B8))
         {
            if(this._e57b921bc1681ba6695dd636(param1 - _loc8_,param2 + _loc9_) && !this._e57b921bc1681ba6695dd636(param1 - _loc8_,param2) || this._e57b921bc1681ba6695dd636(param1 + _loc8_,param2 - _loc9_) && !this._e57b921bc1681ba6695dd636(param1,param2 - _loc9_))
            {
               return new Point(param1,param2);
            }
         }
         else if(_loc8_ != (0x6A836D1E ^ -392586397 ^ 0x1C77D47B ^ -1637015034))
         {
            if(this._e57b921bc1681ba6695dd636(param1 + _loc8_,param2 + this.STEP) && !this._e57b921bc1681ba6695dd636(param1,param2 + this.STEP) || this._e57b921bc1681ba6695dd636(param1 + _loc8_,param2 - this.STEP) && !this._e57b921bc1681ba6695dd636(param1,param2 - this.STEP))
            {
               return new Point(param1,param2);
            }
         }
         else if(this._e57b921bc1681ba6695dd636(param1 + this.STEP,param2 + _loc9_) && !this._e57b921bc1681ba6695dd636(param1 + this.STEP,param2) || this._e57b921bc1681ba6695dd636(param1 - this.STEP,param2 + _loc9_) && !this._e57b921bc1681ba6695dd636(param1 - this.STEP,param2))
         {
            return new Point(param1,param2);
         }
         if(_loc8_ != (0x30F45E84 ^ 0x39969DC9 ^ 0x626256A2 ^ 0x6B0095EF) && _loc9_ != (-602333034 ^ -1526684808 ^ -807147019 ^ -1225102821))
         {
            _loc6_ = this._856dcff71cdc4a610a71bba5(param1 + _loc8_,param2,param1,param2,param5 + (0x7C5D2194 ^ 0x5CE2CAE6 ^ 0x627E0DA0 ^ 0x42C1E6D3));
            _loc7_ = this._856dcff71cdc4a610a71bba5(param1,param2 + _loc9_,param1,param2,param5 + (0x0CFED285 ^ 0x09519288 ^ 0x70950A6F ^ 0x753A4A63));
            if(Boolean(_loc6_) || Boolean(_loc7_))
            {
               return new Point(param1,param2);
            }
         }
         if(this._e57b921bc1681ba6695dd636(param1 + _loc8_,param2) || this._e57b921bc1681ba6695dd636(param1,param2 + _loc9_))
         {
            return this._856dcff71cdc4a610a71bba5(param1 + _loc8_,param2 + _loc9_,param1,param2,param5 + (0x5E66B978 ^ 0x1935E1E0 ^ 0x40B2DA57 ^ 0x07E182CE));
         }
         return null;
      }
      
      private function _be44799e96d6be8b2b138138(param1:_3f0b8f3bb126033c881dfbc2, param2:_3f0b8f3bb126033c881dfbc2) : _3f0b8f3bb126033c881dfbc2
      {
         var _loc3_:_3f0b8f3bb126033c881dfbc2 = null;
         var _loc4_:_3f0b8f3bb126033c881dfbc2 = null;
         var _loc5_:int = param1.x;
         var _loc6_:int = param1.y;
         var _loc7_:int = param2.x;
         var _loc8_:int = param2.y;
         var _loc9_:int = _loc5_ - _loc7_;
         var _loc10_:int = _loc6_ - _loc8_;
         var _loc11_:Boolean = this._e57b921bc1681ba6695dd636(_loc5_,_loc6_);
         if(!_loc11_)
         {
            return null;
         }
         if(this._53295a6dd64f366ac2ef5440(param1))
         {
            return param1;
         }
         if(_loc9_ != (0x2F4F8A96 ^ -1738102230 ^ 0x4BCE8636 ^ -51927414) && _loc10_ != (-1229942757 ^ -929597298 ^ 0x62D6F06A ^ 0x1CF118FF))
         {
            if(this._e57b921bc1681ba6695dd636(_loc5_ - _loc9_,_loc6_ + _loc10_) && !this._e57b921bc1681ba6695dd636(_loc5_ - _loc9_,_loc6_) || this._e57b921bc1681ba6695dd636(_loc5_ + _loc9_,_loc6_ - _loc10_) && !this._e57b921bc1681ba6695dd636(_loc5_,_loc6_ - _loc10_))
            {
               return param1;
            }
         }
         else if(_loc9_ != (-369350416 ^ 0x05968F51 ^ -167755421 ^ 0x1A6AE6C2))
         {
            if(this._e57b921bc1681ba6695dd636(_loc5_ + _loc9_,_loc6_ + this.STEP) && !this._e57b921bc1681ba6695dd636(_loc5_,_loc6_ + this.STEP) || this._e57b921bc1681ba6695dd636(_loc5_ + _loc9_,_loc6_ - this.STEP) && !this._e57b921bc1681ba6695dd636(_loc5_,_loc6_ - this.STEP))
            {
               return param1;
            }
         }
         else if(this._e57b921bc1681ba6695dd636(_loc5_ + this.STEP,_loc6_ + _loc10_) && !this._e57b921bc1681ba6695dd636(_loc5_ + this.STEP,_loc6_) || this._e57b921bc1681ba6695dd636(_loc5_ - this.STEP,_loc6_ + _loc10_) && !this._e57b921bc1681ba6695dd636(_loc5_ - this.STEP,_loc6_))
         {
            return param1;
         }
         if(_loc9_ != (-1446098950 ^ 0x776E9EA3 ^ -901287923 ^ 0x14E7A954) && _loc10_ != (0x1FDFE5FC ^ -205099359 ^ 0x4060D792 ^ -1401332529))
         {
            _loc3_ = this._be44799e96d6be8b2b138138(_10e48e84215524cd54b9ed1e(_loc5_ + _loc9_,_loc6_),param1);
            _loc4_ = this._be44799e96d6be8b2b138138(_10e48e84215524cd54b9ed1e(_loc5_,_loc6_ + _loc10_),param1);
            if(Boolean(_loc3_) || Boolean(_loc4_))
            {
               return param1;
            }
         }
         var _loc12_:Boolean = this._e57b921bc1681ba6695dd636(_loc5_ + _loc9_,_loc6_);
         var _loc13_:Boolean = this._e57b921bc1681ba6695dd636(_loc5_,_loc6_ + _loc10_);
         if(_loc12_ || _loc13_)
         {
            return this._be44799e96d6be8b2b138138(_10e48e84215524cd54b9ed1e(_loc5_ + _loc9_,_loc6_ + _loc10_),param1);
         }
         return null;
      }
      
      private function _2ceffd9d10a07cfd24fde423(param1:_3f0b8f3bb126033c881dfbc2) : Vector.<_3f0b8f3bb126033c881dfbc2>
      {
         var _loc2_:int = 0x1C198DD8 ^ -263138656 ^ 0x1D9C591A ^ -237697438;
         var _loc3_:int = -207837643 ^ -1010136096 ^ 0x0A4724CF ^ 0x3A11091A;
         var _loc4_:int = -1320316649 ^ 0x03F6DAB1 ^ -176095165 ^ 0x473A4BE5;
         var _loc5_:int = 0x404F4987 ^ 0x56FA32DF ^ -959955248 ^ -797096568;
         var _loc6_:_3f0b8f3bb126033c881dfbc2 = param1.parent;
         var _loc7_:int = param1.x;
         var _loc8_:int = param1.y;
         var _loc9_:Vector.<_3f0b8f3bb126033c881dfbc2> = new Vector.<_3f0b8f3bb126033c881dfbc2>();
         if(_loc6_ != null)
         {
            _loc2_ = _loc6_.x;
            _loc3_ = _loc6_.y;
            _loc4_ = (_loc7_ - _loc2_) / Math.max(Math.abs(_loc7_ - _loc2_),-2083588705 ^ -161402233 ^ -1493526592 ^ -749383463) * this.STEP;
            _loc5_ = (_loc8_ - _loc3_) / Math.max(Math.abs(_loc8_ - _loc3_),-1301845138 ^ 0x7B812C2B ^ 0x137F6801 ^ -627495099) * this.STEP;
            if(_loc4_ != (0x5373EF9B ^ 0x72A2E06F ^ 0x51A2A3AA ^ 0x7073AC5E) && _loc5_ != (-496835271 ^ 0x3C8490AC ^ -1451501470 ^ 0x779DADF7))
            {
               if(this._e57b921bc1681ba6695dd636(_loc7_,_loc8_ + _loc5_))
               {
                  _loc9_.push(_10e48e84215524cd54b9ed1e(_loc7_,_loc8_ + _loc5_));
               }
               if(this._e57b921bc1681ba6695dd636(_loc7_ + _loc4_,_loc8_))
               {
                  _loc9_.push(_10e48e84215524cd54b9ed1e(_loc7_ + _loc4_,_loc8_));
               }
               if(this._e57b921bc1681ba6695dd636(_loc7_,_loc8_ + _loc5_) || this._e57b921bc1681ba6695dd636(_loc7_ + _loc4_,_loc8_))
               {
                  _loc9_.push(_10e48e84215524cd54b9ed1e(_loc7_ + _loc4_,_loc8_ + _loc5_));
               }
               if(!this._e57b921bc1681ba6695dd636(_loc7_ - _loc4_,_loc8_) && this._e57b921bc1681ba6695dd636(_loc7_,_loc8_ + _loc5_))
               {
                  _loc9_.push(_10e48e84215524cd54b9ed1e(_loc7_ - _loc4_,_loc8_ + _loc5_));
               }
               if(!this._e57b921bc1681ba6695dd636(_loc7_,_loc8_ - _loc5_) && this._e57b921bc1681ba6695dd636(_loc7_ + _loc4_,_loc8_))
               {
                  _loc9_.push(_10e48e84215524cd54b9ed1e(_loc7_ + _loc4_,_loc8_ - _loc5_));
               }
            }
            else if(_loc4_ == (-280897939 ^ -1750170208 ^ -753064946 ^ -1410172989))
            {
               if(this._e57b921bc1681ba6695dd636(_loc7_,_loc8_ + _loc5_))
               {
                  if(this._e57b921bc1681ba6695dd636(_loc7_,_loc8_ + _loc5_))
                  {
                     _loc9_.push(_10e48e84215524cd54b9ed1e(_loc7_,_loc8_ + _loc5_));
                  }
                  if(!this._e57b921bc1681ba6695dd636(_loc7_ + this.STEP,_loc8_))
                  {
                     _loc9_.push(_10e48e84215524cd54b9ed1e(_loc7_ + this.STEP,_loc8_ + _loc5_));
                  }
                  if(!this._e57b921bc1681ba6695dd636(_loc7_ - this.STEP,_loc8_))
                  {
                     _loc9_.push(_10e48e84215524cd54b9ed1e(_loc7_ - this.STEP,_loc8_ + _loc5_));
                  }
               }
            }
            else if(this._e57b921bc1681ba6695dd636(_loc7_ + _loc4_,_loc8_))
            {
               if(this._e57b921bc1681ba6695dd636(_loc7_ + _loc4_,_loc8_))
               {
                  _loc9_.push(_10e48e84215524cd54b9ed1e(_loc7_ + _loc4_,_loc8_));
               }
               if(!this._e57b921bc1681ba6695dd636(_loc7_,_loc8_ + this.STEP))
               {
                  _loc9_.push(_10e48e84215524cd54b9ed1e(_loc7_ + _loc4_,_loc8_ + this.STEP));
               }
               if(!this._e57b921bc1681ba6695dd636(_loc7_,_loc8_ - this.STEP))
               {
                  _loc9_.push(_10e48e84215524cd54b9ed1e(_loc7_ + _loc4_,_loc8_ - this.STEP));
               }
            }
         }
         else
         {
            _loc9_ = this._14066e4fce928278f7cd56be(param1,true);
         }
         return _loc9_;
      }
      
      private function _14066e4fce928278f7cd56be(param1:_3f0b8f3bb126033c881dfbc2, param2:Boolean, param3:Boolean = false) : Vector.<_3f0b8f3bb126033c881dfbc2>
      {
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:Vector.<_3f0b8f3bb126033c881dfbc2> = new Vector.<_3f0b8f3bb126033c881dfbc2>();
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         if(this._e57b921bc1681ba6695dd636(_loc4_,_loc5_ - this.STEP))
         {
            _loc6_.push(_10e48e84215524cd54b9ed1e(_loc4_,_loc5_ - this.STEP));
            _loc7_ = true;
         }
         if(this._e57b921bc1681ba6695dd636(_loc4_ + this.STEP,_loc5_))
         {
            _loc6_.push(_10e48e84215524cd54b9ed1e(_loc4_ + this.STEP,_loc5_));
            _loc9_ = true;
         }
         if(this._e57b921bc1681ba6695dd636(_loc4_,_loc5_ + this.STEP))
         {
            _loc6_.push(_10e48e84215524cd54b9ed1e(_loc4_,_loc5_ + this.STEP));
            _loc11_ = true;
         }
         if(this._e57b921bc1681ba6695dd636(_loc4_ - this.STEP,_loc5_))
         {
            _loc6_.push(_10e48e84215524cd54b9ed1e(_loc4_ - this.STEP,_loc5_));
            _loc13_ = true;
         }
         if(!param2)
         {
            return _loc6_;
         }
         if(param3)
         {
            _loc8_ = _loc13_ && _loc7_;
            _loc10_ = _loc7_ && _loc9_;
            _loc12_ = _loc9_ && _loc11_;
            _loc14_ = _loc11_ && _loc13_;
         }
         else
         {
            _loc8_ = _loc13_ || _loc7_;
            _loc10_ = _loc7_ || _loc9_;
            _loc12_ = _loc9_ || _loc11_;
            _loc14_ = _loc11_ || _loc13_;
         }
         if(_loc8_ && this._e57b921bc1681ba6695dd636(_loc4_ - this.STEP,_loc5_ - this.STEP))
         {
            _loc6_.push(_10e48e84215524cd54b9ed1e(_loc4_ - this.STEP,_loc5_ - this.STEP));
         }
         if(_loc10_ && this._e57b921bc1681ba6695dd636(_loc4_ + this.STEP,_loc5_ - this.STEP))
         {
            _loc6_.push(_10e48e84215524cd54b9ed1e(_loc4_ + this.STEP,_loc5_ - this.STEP));
         }
         if(_loc12_ && this._e57b921bc1681ba6695dd636(_loc4_ + this.STEP,_loc5_ + this.STEP))
         {
            _loc6_.push(_10e48e84215524cd54b9ed1e(_loc4_ + this.STEP,_loc5_ + this.STEP));
         }
         if(_loc14_ && this._e57b921bc1681ba6695dd636(_loc4_ - this.STEP,_loc5_ + this.STEP))
         {
            _loc6_.push(_10e48e84215524cd54b9ed1e(_loc4_ - this.STEP,_loc5_ + this.STEP));
         }
         return _loc6_;
      }
      
      private function _7d2596058db0341fe7eedcf6(param1:int, param2:int) : Boolean
      {
         if(this._c8c361bdeda5e8bfbf91a27e)
         {
            return param1 > (0x6863E516 ^ -1693049824 ^ -185539330 ^ 0x07851DC8) && param1 < this._8d3fe3abe097ace5b7c90a86 && param2 > (-188019972 ^ 0x7D7145DB ^ -1283418251 ^ 0x3A3AD852) && param2 < this._1fddc982d1f5c800689a9ca6;
         }
         return param1 > (0x12170039 ^ -1501437716 ^ -1524294467 ^ -297008452) && param1 < this._8d3fe3abe097ace5b7c90a86 + (0x7A17BAF3 ^ -1849529209 ^ -311760336 ^ 0x06BF3D68) && param2 > (0x15C9F52D ^ 0x2EF7AE8C ^ 0x5BA4AA85 ^ -1620766736) && param2 < this._1fddc982d1f5c800689a9ca6 + (0x3A3D880A ^ 0x494C8D59 ^ -1112346099 ^ -826018190);
      }
      
      public function isComplete() : Boolean
      {
         return this._b03671ff0f5ba9bbb9cc77c8;
      }
      
      public function _1631f1252a3e84343c544055() : Vector.<_3f0b8f3bb126033c881dfbc2>
      {
         return this._b4f1276c11b8802a2c86795a;
      }
      
      public function _dcb89d608d02600426fb8dd1(param1:int, param2:int, param3:int, param4:int, param5:Boolean = true) : Vector.<_3f0b8f3bb126033c881dfbc2>
      {
         this._4d44b9257c6f7eddde143d67(param1,param2);
         this._5fe0dad9ab3cf2085d041ab9(param3,param4);
         while(!this.isComplete() && param5)
         {
            this._4b406987b7185af600a41e7e();
         }
         return this._1631f1252a3e84343c544055();
      }
      
      public function _8cef8bd0fb9d52ec62080dda(param1:Number, param2:Number) : void
      {
         this._8d3fe3abe097ace5b7c90a86 = param1;
         this._1fddc982d1f5c800689a9ca6 = param2;
      }
      
      private function _e57b921bc1681ba6695dd636(param1:int, param2:int) : Boolean
      {
         var _loc3_:int = -1545451832 ^ -1195608367 ^ -203504960 ^ -1142057947;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x419C2C7D ^ -1907047514 ^ -1993723905 ^ 0x158FA6D8))
            {
               case 0:
                  if(this._7d2596058db0341fe7eedcf6(param1,param2) == false)
                  {
                     _loc3_ = -1058177150 ^ 0x623000A9 ^ -936649494 ^ 0x399BC53C;
                  }
                  else
                  {
                     _loc3_ = -1209156341 ^ -330053723 ^ 0x11970795 ^ 0x19441BC3;
                  }
                  break;
               case 1:
                  return false;
               case 2:
                  return false;
               case 3:
                  return this.checkWalkableAt.call(this,param1,param2);
               case 4:
                  if(this.checkWalkableAt != null)
                  {
                     _loc3_ = -1724019596 ^ 0x4CA16165 ^ 0x306CBDC5 ^ -1231210965;
                  }
                  else
                  {
                     _loc3_ = -220617959 ^ -1748996090 ^ -202162136 ^ -980945463;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get borderCheck() : Boolean
      {
         return this._c8c361bdeda5e8bfbf91a27e;
      }
      
      public function set borderCheck(param1:Boolean) : void
      {
         this._c8c361bdeda5e8bfbf91a27e = param1;
      }
      
      public function reset() : void
      {
         this._b03671ff0f5ba9bbb9cc77c8 = false;
         this._b4f1276c11b8802a2c86795a = null;
      }
   }
}

