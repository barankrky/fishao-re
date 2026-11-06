package com.ax3.fishao.tutorial.helpers.masks
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.utils._9c52777792d76fde110d23c0;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.junkbyte.console.Cc;
   import flash.geom.Point;
   
   public class _6be25327bf60bc1bed989e67 extends _ed4aae3a7e33ca2ee825d7ff
   {
      
      private var _5ddb0b32005315d10bddecd7:int;
      
      private var _f35e704e6971741d0dcaedf0:Function;
      
      private var _84249437f11bf2df6e23bcef:Function;
      
      private var _61b1a75ddef1029bbe1dc98d:int;
      
      private var _31a1850fa05d93d8da018dc8:gViewTutorialRouteIndicator;
      
      public function _6be25327bf60bc1bed989e67()
      {
         super();
      }
      
      public function get radius() : int
      {
         return this._5ddb0b32005315d10bddecd7;
      }
      
      public function set radius(param1:int) : void
      {
         this._5ddb0b32005315d10bddecd7 = param1;
      }
      
      public function set playerDestination(param1:Function) : void
      {
         var _loc2_:int = -699916608 ^ 0x51C45E3D ^ 0x4F588B41 ^ -378827159;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1391023577 ^ -1887351352 ^ -145396377 ^ -193081505))
            {
               case 0:
                  this._31a1850fa05d93d8da018dc8 = new gViewTutorialRouteIndicator();
                  _0737efdbd5337ba3fbc64b2e.TUTORIAL_LAYER.addChild(this._31a1850fa05d93d8da018dc8);
                  _loc2_ = 0x2E7EB193 ^ 0x7843DAB2 ^ 0x2EE087EA ^ 0x5962A91D;
                  break;
               case 1:
                  return;
               case 2:
                  this._f35e704e6971741d0dcaedf0 = param1;
                  if(this._f35e704e6971741d0dcaedf0 != null)
                  {
                     _loc2_ = 0x04066F77 ^ -1788123222 ^ -1319938758 ^ 0x01811830;
                  }
                  else
                  {
                     _loc2_ = -1838218900 ^ 0x3CE3D733 ^ 0x3E199182 ^ -1322647029;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set playerDestinationCallback(param1:Function) : void
      {
         this._84249437f11bf2df6e23bcef = param1;
      }
      
      public function set distanceToTarget(param1:int) : void
      {
         this._61b1a75ddef1029bbe1dc98d = param1;
      }
      
      override public function update() : void
      {
         var _loc1_:int = 0x26D9C46C ^ -531087724 ^ 0x7F8AF29B ^ -1586577471;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x50359642 ^ -873082150 ^ -257789360 ^ 0x73078169))
            {
               case 0:
                  return;
               case 1:
                  _maskView.graphics.clear();
                  _maskView.graphics.beginFill(0x3548F05A ^ 0x4A5D8C34 ^ -1491703493 ^ -670886571);
                  _maskView.graphics.drawCircle(_lastPosition.x,_lastPosition.y,this._5ddb0b32005315d10bddecd7);
                  _maskView.graphics.endFill();
                  _loc1_ = 0x229FF45B ^ 0x67537E6F ^ 0x7E1FC910 ^ 0x23B6F485;
                  break;
               case 2:
                  if(_lastPosition != null)
                  {
                     _loc1_ = 0x04690B6E ^ 0x6E59468F ^ -1537074977 ^ -700980578;
                  }
                  else
                  {
                     _loc1_ = -1174384923 ^ -372689756 ^ -1059524523 ^ -1955316304;
                  }
                  break;
               case 3:
                  _lastPosition = null;
                  if(_functionGetPosition != null)
                  {
                     _loc1_ = 0x3FAAC5F9 ^ 0x2BE86772 ^ 0x16DB9D30 ^ 0x1AFC881E;
                  }
                  else
                  {
                     _loc1_ = 0x47257328 ^ 0x63495D56 ^ 0x3B935C6C ^ 0x079AC5B1;
                  }
                  break;
               case 4:
                  _lastPosition = _functionGetPosition() as Point;
                  _loc1_ = -2083166556 ^ 0x123753D1 ^ 0x2C1718B6 ^ -1517249952;
                  break;
               case 5:
                  Cc.error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴟე၃ၫ၉Ⴡာ၎ჃჭၔႽၓႪჾၶၩၞနငၟ့ჯူႢჸღჟႧ၃჏ႬႷၛၴႨႠိဝ၎ႡჍႚယါဩအ၄ႍპკიႶပႥსႢႮႯჶჴႼ჻ဈჩႋ","႔လၐၕၢကჵၔႊნწႥჾჵ၉ႅ"));
                  _loc1_ = 0x306B162D ^ 0x17D9A46A ^ 0x2EF37468 ^ 0x1124718E;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _ccfc144e6d5b79943fa3528b(param1:_810c4ade948afb64e9c7ee25) : void
      {
         var _loc2_:Point = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(param1 == null || param1.fieldChar == null || param1.fieldChar.graphic == null || this._f35e704e6971741d0dcaedf0 == null || _loc5_ == null)
         {
            return;
         }
         _loc2_ = this._f35e704e6971741d0dcaedf0() as Point;
         if(_loc2_ == null)
         {
            this._8424e73c2defe178fbcbf6e3();
            return;
         }
         var _loc6_:_08c120b706560fce9302bcab = param1.fieldChar;
         var _loc7_:int = _loc6_.graphic.x;
         var _loc8_:int = _loc6_.graphic.y;
         var _loc9_:Point = new Point(_loc7_,_loc8_ - (0x756504D6 ^ 0x01EBF9ED ^ -948599132 ^ -1275364469));
         var _loc10_:Point = new Point(_loc7_ + (0x2BBEB808 ^ -1216978673 ^ 0x2BA3779D ^ -1217679730),_loc8_ - (0x319B7AAA ^ 0x75259A70 ^ -2069559498 ^ -1071912968));
         var _loc11_:Number = _9c52777792d76fde110d23c0._98f02e171da9cd790de81899(_loc9_,_loc10_,_loc2_);
         _loc11_ *= (-402202464 ^ -769899039 ^ 0x3686409E ^ 0x0C9CE56B) / Math.PI;
         if(_loc2_.y < _loc8_ - (0x3376D164 ^ -1666610130 ^ 0x74FF42CF ^ -618651759))
         {
            _loc11_ = (0x58952FC7 ^ -1121352895 ^ 0x7B21287E ^ -1633843824) - _loc11_;
         }
         this._31a1850fa05d93d8da018dc8.rotation = _loc11_;
         var _loc12_:Number = _loc7_;
         var _loc13_:Number = _loc8_ - (0x4C3B2DA4 ^ -199941080 ^ 0x16040381 ^ -1372976615);
         var _loc14_:Number = _loc2_.x;
         var _loc15_:Number = _loc2_.y;
         var _loc16_:Number = (_loc15_ - _loc13_) / (_loc14_ - _loc12_);
         var _loc17_:Number = (-_loc12_ * _loc15_ + _loc13_ * _loc14_) / (_loc14_ - _loc12_);
         var _loc18_:Number = (-1420419876 ^ -1630521880 ^ 0x621B05F7 ^ 0x579D2CC2) + _loc16_ * _loc16_;
         var _loc19_:Number = (0x628FC517 ^ -863640801 ^ 0x2DD62492 ^ -2082733416) * (-_loc12_ + _loc16_ * _loc17_ - _loc16_ * _loc13_);
         var _loc20_:Number = _loc12_ * _loc12_ + _loc17_ * _loc17_ - (0x34C89971 ^ -1102786010 ^ 0x335C82E5 ^ -1177499216) * _loc17_ * _loc13_ + _loc13_ * _loc13_ - (this._5ddb0b32005315d10bddecd7 - (-1488986505 ^ -1493736326 ^ -667791515 ^ -637864606)) * (this._5ddb0b32005315d10bddecd7 - (-1395695739 ^ 0x6D8DEAD5 ^ -1972047401 ^ 0x4B36448D));
         var _loc21_:Number = _loc19_ * _loc19_ - (0x28A15720 ^ -1641140166 ^ 0x1D6619DB ^ -1410761019) * _loc18_ * _loc20_;
         if(_loc21_ < (0x4DED00C6 ^ -1689497270 ^ -1347247379 ^ 0x7913F361))
         {
            Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勪刑勲剼劲劭剴劎剔创则勨刲刯剌劫劐刊剔剩剃刉勳劗剻勁勥勛劤到努刲刽劗勝剴劧勺剮励勆勹劗劶勻剪刻勭利勬劯勱刯分剋剼剈勔劤剕刓動劯勑劍刜剐刜剂刨刉劖","剷劍剌初剮刵功剡剶剳劲剛劏剨到删"));
            return;
         }
         var _loc22_:Number = (-_loc19_ + Math.sqrt(_loc21_)) / ((-636564805 ^ 0x2F31F3B8 ^ 0x65ACE2E8 ^ -1869358103) * _loc18_);
         var _loc23_:Number = _loc16_ * _loc22_ + _loc17_;
         var _loc24_:Number = (-_loc19_ - Math.sqrt(_loc21_)) / ((-1026945405 ^ 0x74BAFBE8 ^ 0x1A9E122A ^ -1393629373) * _loc18_);
         var _loc25_:Number = _loc16_ * _loc24_ + _loc17_;
         if(_loc22_ < Math.max(_loc12_,_loc14_) && _loc22_ > Math.min(_loc12_,_loc14_) && _loc23_ < Math.max(_loc13_,_loc15_) && _loc23_ > Math.min(_loc13_,_loc15_))
         {
            _loc3_ = _loc22_;
            _loc4_ = _loc23_;
         }
         else
         {
            _loc3_ = _loc24_;
            _loc4_ = _loc25_;
         }
         var _loc26_:Point = _loc5_.locationLayersBase.mainLayer.localToGlobal(new Point(_loc3_,_loc4_));
         this._31a1850fa05d93d8da018dc8.x = _loc26_.x;
         this._31a1850fa05d93d8da018dc8.y = _loc26_.y;
         var _loc27_:Point = new Point(param1.position.x,param1.position.y);
         var _loc28_:Number = _9c52777792d76fde110d23c0._6a4e609a6fcabf8099412895(_loc2_,_loc27_);
         this._31a1850fa05d93d8da018dc8.visible = _loc28_ > (0x6F7CFF4E ^ 0x572BC790 ^ 0x68849E73 ^ 0x50D3A6C9);
         if(_loc28_ < this._61b1a75ddef1029bbe1dc98d && this._84249437f11bf2df6e23bcef != null)
         {
            this._84249437f11bf2df6e23bcef();
         }
      }
      
      private function _8424e73c2defe178fbcbf6e3() : void
      {
         if(this._31a1850fa05d93d8da018dc8 != null && this._31a1850fa05d93d8da018dc8.parent != null)
         {
            this._31a1850fa05d93d8da018dc8.parent.removeChild(this._31a1850fa05d93d8da018dc8);
         }
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._8424e73c2defe178fbcbf6e3();
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

