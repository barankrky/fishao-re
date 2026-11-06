package com.ax3.display.rod
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   
   public class _64fa9ea58e494c68f2b89dbc
   {
      
      public var joinsCount:int = 30;
      
      public var scale:Number = 100;
      
      public var gravityCoef:Number = 0.5;
      
      public var gravity:Number = 4.905;
      
      public var speed:Number = 0;
      
      public var speedCoef:Number = 0.5;
      
      public var speedFinal:Number = 0;
      
      public var SPEED_INERTION:Number = 0.93;
      
      public var FLEX_SOFT_COEF:Number = 0.025;
      
      public var flexibilityCoef:Number = 0.025;
      
      public var SOFT_ROPE:Number = 0.00001;
      
      public var autoLengthCoef:Number = 0.00001;
      
      public var lengthTotal:Number = 1;
      
      public var joinLength:Number = 0.03333333333333333;
      
      public var pX:Vector.<Number>;
      
      public var pY:Vector.<Number>;
      
      public var prevX:Vector.<Number>;
      
      public var prevY:Vector.<Number>;
      
      public var aX:Vector.<Number>;
      
      public var aY:Vector.<Number>;
      
      public var tmpDx:Number = NaN;
      
      public var tmpDy:Number = NaN;
      
      public var tmpD:Number = NaN;
      
      public var tmpDiff:Number = NaN;
      
      public var startPointX:Number = NaN;
      
      public var startPointY:Number = NaN;
      
      public var endPointX:Number = NaN;
      
      public var endPointY:Number = NaN;
      
      public function _64fa9ea58e494c68f2b89dbc()
      {
         super();
         this._1b6257f13634201c95526b86();
      }
      
      public static function create() : _64fa9ea58e494c68f2b89dbc
      {
         return new _64fa9ea58e494c68f2b89dbc();
      }
      
      public function _1b6257f13634201c95526b86() : void
      {
         var _loc1_:int = this.joinsCount + (-981273955 ^ 0x0B1B433A ^ 0x58FF8A44 ^ -1771684894);
         this.pX = new Vector.<Number>(_loc1_,true);
         this.pY = new Vector.<Number>(_loc1_,true);
         this.prevX = new Vector.<Number>(_loc1_,true);
         this.prevY = new Vector.<Number>(_loc1_,true);
         this.aX = new Vector.<Number>(_loc1_,true);
         this.aY = new Vector.<Number>(_loc1_,true);
      }
      
      public function _6884080c8944bd5adc8734d3() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0x14EFD9F5 ^ -728029465 ^ 0x705741A9 ^ -1339834693;
         while(_loc1_ <= this.joinsCount)
         {
            _loc2_ = this.joinLength * this.scale * Number(_loc1_) + (-1557062119 ^ -1723745505 ^ -2018251010 ^ -1111274510);
            this.pX[_loc1_] = _loc2_;
            this.pY[_loc1_] = -1195384980 ^ 0x7FE15562 ^ -1069396608 ^ 0x071CC784;
            this.prevX[_loc1_] = _loc2_;
            this.prevY[_loc1_] = 0x4BAB9816 ^ -1243393628 ^ -914117297 ^ 0x37CB64F7;
            this.aX[_loc1_] = -10153829 ^ 0x5B0477E8 ^ 0x271612EC ^ -2089323105;
            this.aY[_loc1_] = -1104749810 ^ -1714672298 ^ 0x2B2E307D ^ 0x0CC4C625;
            _loc1_++;
         }
      }
      
      public function _1a9f43b4d2b73acfb92aa852() : void
      {
         var _loc1_:int = 0x22B786B5 ^ -993342610 ^ 0x4711D798 ^ -1586718141;
         var _loc2_:int = 0x0DDBFC82 ^ 0x2FF3074C ^ 0x190AFA3D ^ -106103220;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x707920BD ^ -2067994050 ^ -2095767358 ^ -1252125185))
            {
               case 0:
                  this.aY[_loc1_] = this.gravity;
                  _loc1_++;
                  _loc2_ = 0x06F7CC21 ^ 0x3BFAA452 ^ 0x1F9DAF70 ^ -534890306;
                  break;
               case 1:
                  _loc1_ = 0x4CDD522F ^ -302633639 ^ -2136864900 ^ 0x2189780B;
                  _loc2_ = -39562597 ^ 0x07DFB59E ^ -1503644373 ^ -1634390637;
                  break;
               case 2:
                  return;
               case 3:
                  if(_loc1_ > this.joinsCount - 1)
                  {
                     _loc2_ = 0x73074A05 ^ -1072345947 ^ -166216993 ^ -2020916285;
                  }
                  else
                  {
                     _loc2_ = -950646096 ^ -293424936 ^ -806283032 ^ 0x24AB1D3E;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _c9d9b73dedb717892c672a4f() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc1_:int = -1606609409 ^ -1290283072 ^ 0x5D5D02F6 ^ 0x4E77C0C9;
         while(_loc1_ <= this.joinsCount)
         {
            _loc2_ = this.pX[_loc1_];
            _loc3_ = this.pY[_loc1_];
            this.pX[_loc1_] += this.SPEED_INERTION * this.pX[_loc1_] - this.SPEED_INERTION * this.prevX[_loc1_] + this.aX[_loc1_] * this.scale * this.speedFinal * this.speedFinal;
            this.pY[_loc1_] += this.SPEED_INERTION * this.pY[_loc1_] - this.SPEED_INERTION * this.prevY[_loc1_] + this.aY[_loc1_] * this.scale * this.speedFinal * this.speedFinal;
            this.prevX[_loc1_] = _loc2_;
            this.prevY[_loc1_] = _loc3_;
            _loc1_++;
         }
      }
      
      public function Update() : void
      {
         this.pX[-2083489956 ^ -337941261 ^ -872877125 ^ -1544296428] = this.startPointX;
         this.pY[0x7F0CBCAD ^ 0x72438825 ^ 0x23B56089 ^ 0x2EFA5401] = this.startPointY;
         this.pX[this.joinsCount] = this.endPointX;
         this.pY[this.joinsCount] = this.endPointY;
      }
      
      public function _235bf888f15382502115eed0() : void
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         if(this.autoLengthCoef != (0x5B7660A0 ^ 0x0B5F9701 ^ -1517967768 ^ -173256247) || isNaN(this.autoLengthCoef))
         {
            _loc10_ = this.startPointX - this.endPointX;
            _loc11_ = this.startPointY - this.endPointY;
            _loc12_ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
            this.joinLength = (_loc12_ > (-84788476 ^ 0x791A478C ^ -132059018 ^ 0x7BC88CFD) ? -226330619 ^ 0x4700E1B4 ^ 0x7A0056AB ^ -813510887 : _loc12_) / Number(this.joinsCount) * this.autoLengthCoef;
         }
         var _loc1_:Vector.<Number> = this.pX;
         var _loc2_:Vector.<Number> = this.pY;
         var _loc3_:int = this.joinsCount;
         var _loc4_:Number = this.scale;
         var _loc5_:Number = this.joinLength;
         var _loc6_:Number = this.flexibilityCoef * _loc4_;
         var _loc7_:Number = _loc1_[0x7E81785A ^ -799690564 ^ -1309281737 ^ 0x1F213AD1];
         var _loc8_:Number = _loc2_[0x0D8D5A6C ^ 0x44900472 ^ 0x72694C49 ^ 0x3B741257];
         var _loc9_:int = 0x6F51BF35 ^ -1155218770 ^ 0x5913FDD0 ^ -1922662326;
         while(_loc9_ <= _loc3_)
         {
            _loc13_ = _loc1_[_loc9_];
            _loc14_ = _loc2_[_loc9_];
            _loc15_ = (_loc13_ - _loc7_) / _loc4_;
            _loc16_ = (_loc14_ - _loc8_) / _loc4_;
            _loc17_ = Math.sqrt(_loc15_ * _loc15_ + _loc16_ * _loc16_);
            if(_loc17_ <= (-1452874140 ^ -684018427 ^ 0x39C64AC5 ^ 0x479A19A4) || !isFinite(_loc17_))
            {
               _loc7_ = _loc13_;
               _loc8_ = _loc14_;
            }
            else
            {
               _loc18_ = _loc6_ * (_loc17_ - _loc5_) / _loc17_;
               _loc1_[_loc9_ - 1] = _loc7_ + _loc15_ * _loc18_;
               _loc2_[_loc9_ - 1] = _loc8_ + _loc16_ * _loc18_;
               _loc7_ = _loc1_[_loc9_] = _loc13_ - _loc15_ * _loc18_;
               _loc8_ = _loc2_[_loc9_] = _loc14_ - _loc16_ * _loc18_;
            }
            _loc9_++;
         }
      }
      
      public function _08522b9a2cf103944b2a0d7b(param1:int) : Boolean
      {
         var _loc5_:int = -1481379393 ^ -50360692 ^ 0x6ACC84E1 ^ 0x3180FBD2;
         var _loc2_:int = -116677334 ^ 0x4E600318 ^ 0x3AB91782 ^ -1915571792;
         var _loc3_:int = 0x607DADFA ^ -1439524899 ^ 0x36144A23 ^ -61116412;
         _loc2_ = 0x7CDF2FA5 ^ -1382345543 ^ -663766031 ^ 0x092B80ED;
         while(_loc2_ < param1)
         {
            _loc3_ = -1747139347 ^ 0x5EDF012E ^ 0x7A442B82 ^ -1287131583;
            while(_loc3_ <= this.joinsCount)
            {
               this._235bf888f15382502115eed0();
               _loc3_++;
            }
            _loc2_++;
         }
         var _loc4_:Boolean = false;
         if(this.joinsCount >= (0x65270F5C ^ 0x18088D33 ^ -344946074 ^ -1772156917))
         {
            _loc5_ = -1523444624 ^ 0x4AA10776 ^ -1410207559 ^ 0x4462E3BE;
            while(_loc5_ < this.joinsCount)
            {
               if(!_loc4_)
               {
                  this.tmpDx = this.pX[_loc5_] - this.prevX[_loc5_];
                  this.tmpDy = this.pY[_loc5_] - this.prevY[_loc5_];
                  if(this.tmpDx > _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("力势功划勳勀刍剏剤刉勡勈勸删劜勘削勏剮剞劍劘勊剌","刊剌勨労劅劭剕剃勃務勂刃劎勣刳勑") || this.tmpDx < _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捡挈捞挥挨捈挦捾揺捘揮掬捒掿挙掱捒揩掞掖捃挞掎揾","捃揍掏捅捂推揄捪挝掂掹掅揣揟挭损") || this.tmpDy > _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刓劖剷劔勞前则刈创勳劂劆剕劋剌削劬努劈剂刯勄勐劬","初劣勜剋勽刀剜剅刅刬剻劺劄剠剾剭") || this.tmpDy < _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("႑ရႫဝၞဠ႑မႰဲსကდၑ၆ၟၟဵႿჾ႙ၐၑၷ","ၠဴს႒ၥဲၝငၛႷဖဢ႐ტხွ") || isNaN(this.tmpDy))
                  {
                     _loc4_ = true;
                  }
               }
               _loc5_++;
            }
         }
         return _loc4_;
      }
      
      public function _3ba19ac3bf2f99b3b6f744b6(param1:int) : Number
      {
         if(param1 < (0xEFF0C9 ^ 0x12C0AC96 ^ 0x604FAD46 ^ 0x7260F119) || this.joinsCount < param1)
         {
            return 0x7A341E5A ^ 0x0B47D975 ^ 0x542AB6EB ^ -626618821;
         }
         return this.pX[param1];
      }
      
      public function _d5c304bada4ad7c1f0b16683(param1:int) : Number
      {
         if(param1 < (0x40BCD82D ^ 0x7748DE77 ^ -349031091 ^ -590990569) || this.joinsCount < param1)
         {
            return 0x14D7C716 ^ -1607565848 ^ 0x1B3828ED ^ 0x503E6DEC;
         }
         return this.pY[param1];
      }
   }
}

