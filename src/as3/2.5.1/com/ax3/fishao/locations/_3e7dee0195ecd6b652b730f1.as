package com.ax3.fishao.locations
{
   import com.ax3.display.rod._70197a58a4eba697ed6a96dc;
   import com.ax3.fishao.locations.objects.boat._40c40768738c862c74ddd128;
   import com.ax3.utils.emptyVector;
   import flash.display.Bitmap;
   import flash.geom.Point;
   
   public class _3e7dee0195ecd6b652b730f1
   {
      
      private const _4771d657ccae5737bc214d56:Array;
      
      private var _7dbbb2cf6506202c9020da46:Vector.<_70197a58a4eba697ed6a96dc>;
      
      private var _5d88646f2a8158c84a6edf87:Vector.<_40c40768738c862c74ddd128>;
      
      public var hitTestBoats:Function;
      
      private const _4933a546faf5e8ac9c4e6eef:int = 35;
      
      private const _3bd450dd7bdd5a07f4664916:int = 150;
      
      public function _3e7dee0195ecd6b652b730f1()
      {
         var _temp_4:* = this;
         var _temp_3:* = new Point(-1620976524 ^ -147383365 ^ -2008140447 ^ -535235921,0x5969CF72 ^ -891801100 ^ 0x1E989F73 ^ -1926667787);
         var _temp_2:* = §§findproperty(Point);
         var _temp_1:* = 0x6649F357 ^ -199246618 ^ 0x28513579 ^ -1173914935;
         _temp_4._4771d657ccae5737bc214d56 = [_temp_3,new Point(_temp_1,_temp_1),new Point(0x09C4959C ^ -72172626 ^ -2146511684 ^ 0x7278FA8E,0x1943F277 ^ 0x7B13689D ^ 0x7E5AB175 ^ 0x1C0A2B9E),new Point(-1803421480 ^ 0x13076E77 ^ 0x2CFDD14F ^ 0x5484B81F,-387739300 ^ -2043169079 ^ -1931649474 ^ -502695509),new Point(-1645640238 ^ 0x7D991DC6 ^ 0x2E3C9550 ^ 0x31B3F2BB,0x65C49408 ^ 0x4F265082 ^ -1018208189 ^ -374496056),new Point(0x27B8FE3B ^ -808475909 ^ -1017409925 ^ -724357820,-1304449856 ^ -819399649 ^ 0x418D60E2 ^ -1016739902),new Point(-1979811973 ^ -1295408983 ^ -1600259851 ^ -1683345625,0x43339E8A ^ 0x0B3C1890 ^ 0x1FD66E4C ^ -1473898583),new Point(-300027411 ^ 0x6C3526BC ^ 0x775654C4 ^ -176258156,0x67CC5D6A ^ 0x5585FEC9 ^ 0x5BFD13B7 ^ -1773449237)];
         this._7dbbb2cf6506202c9020da46 = new Vector.<_70197a58a4eba697ed6a96dc>();
         super();
      }
      
      public function destroy() : void
      {
         this._7dbbb2cf6506202c9020da46.length = 0x1F034B75 ^ 0x3DA9D66F ^ 0x6EADDBE5 ^ 0x4C0746FF;
         this._7dbbb2cf6506202c9020da46 = null;
         this.hitTestBoats = null;
      }
      
      public function _edecfd09953b1a534e06b823(param1:_70197a58a4eba697ed6a96dc) : void
      {
         var _loc2_:int = -27915926 ^ -1538016870 ^ 0x2D4E1A5A ^ -51725369;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x4322119D ^ 0x05CC2A44 ^ 0x5A095505 ^ -1756987471))
            {
               case 0:
                  if(this._7dbbb2cf6506202c9020da46.indexOf(param1) == (-870487883 ^ -1930120604 ^ 0x03EBBEA0 ^ -1124230258))
                  {
                     _loc2_ = 0x4249AA7F ^ -2130166318 ^ -2020070706 ^ -814175219;
                  }
                  else
                  {
                     _loc2_ = -531059023 ^ 0x44494319 ^ 0x089CA412 ^ 0x272C58D3;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._e8309262adf9f7695c677bfe(param1);
                  _loc2_ = -1564357353 ^ -1049886548 ^ 0x14E97350 ^ -52056185;
                  break;
               case 3:
                  this._7dbbb2cf6506202c9020da46.push(param1);
                  _loc2_ = -718727369 ^ -1414460155 ^ 0x404DBB61 ^ -1250643910;
                  break;
               case 4:
                  if(this._5d88646f2a8158c84a6edf87 != null)
                  {
                     _loc2_ = 0x223F161B ^ -590823773 ^ 0x4958C9D0 ^ 0x3C0E7007;
                  }
                  else
                  {
                     _loc2_ = 0x59000667 ^ 0x2298B404 ^ -1440957987 ^ 0x5A251AD2;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function remove(param1:_70197a58a4eba697ed6a96dc) : void
      {
         var _loc2_:Number = this._7dbbb2cf6506202c9020da46.indexOf(param1);
         if(_loc2_ > (-1454483992 ^ 0x26453182 ^ 0x4A91BAAF ^ 0x3A65213A))
         {
            this._7dbbb2cf6506202c9020da46.splice(_loc2_,-1983927930 ^ 0x228B0588 ^ -396698195 ^ 0x436E71A2);
         }
      }
      
      public function set boats(param1:Vector.<_40c40768738c862c74ddd128>) : void
      {
         var _loc2_:int = -1974443877 ^ 0x342158B7 ^ 0x396C3EA7 ^ -156433423;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x65CED57D ^ -1430378156 ^ -36861716 ^ 0x430D71BE))
            {
               case 0:
                  this._5d88646f2a8158c84a6edf87 = param1;
                  _loc2_ = 0x54EF82AD ^ 0x0656C7F6 ^ -1445579468 ^ -1965066986;
                  break;
               case 1:
                  if(!emptyVector(param1))
                  {
                     _loc2_ = 0x21221931 ^ 0x309117EF ^ 0x11799BBA ^ 0x717A901F;
                  }
                  else
                  {
                     _loc2_ = 0x29B02342 ^ 0x0566179D ^ 0x54889625 ^ 0x09EEA783;
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
      
      private function _e8309262adf9f7695c677bfe(param1:_70197a58a4eba697ed6a96dc) : void
      {
         var _loc2_:int = -1219286006 ^ -644418905 ^ 0x45768FE4 ^ 0x46141D95;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-251837702 ^ -1674938332 ^ 0x3C350B27 ^ 0x3D457D25))
            {
               case 0:
                  param1.throwInWorldOrigX = param1.outOffsetOrigX + param1.charX;
                  param1.throwInWorldOrigY = param1.outOffsetOrigY + param1.charY;
                  param1.throwInWorldCurX = param1.throwInWorldOrigX;
                  param1.throwInWorldCurY = param1.throwInWorldOrigY;
                  if(!param1.isLakeHit(param1.throwInWorldOrigX,param1.throwInWorldOrigY,param1.floatImage))
                  {
                     _loc2_ = 0x289DC28C ^ -1669447603 ^ 0x49E62B03 ^ -1868372705;
                  }
                  else
                  {
                     _loc2_ = -1320563835 ^ -1988576089 ^ -2055774662 ^ -790534714;
                  }
                  break;
               case 1:
                  this._7cbea35c93fde1e844c8dfa9(param1,param1.floatImage);
                  _loc2_ = 0x6ABD79C6 ^ 0x50B87469 ^ 0x79BEA194 ^ 0x2E1CE0E5;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _7cbea35c93fde1e844c8dfa9(param1:_70197a58a4eba697ed6a96dc, param2:Bitmap) : void
      {
         var _loc3_:int = 0x106F88CB ^ 0x768D1CD4 ^ -1362602862 ^ -936722291;
         var _loc4_:int = -703788873 ^ -326172264 ^ -505095322 ^ -614018487;
         var _loc5_:Point = null;
         var _loc6_:int = 0x65EFBA4F ^ 0x3571AA51 ^ 0x05C4244F ^ 0x555A3451;
         var _loc7_:int = -399003201 ^ -763784267 ^ 0x31D334B2 ^ 0x0B9D16B8;
         var _loc8_:int = this._4933a546faf5e8ac9c4e6eef;
         var _loc9_:Boolean = false;
         var _loc10_:* = this._3bd450dd7bdd5a07f4664916;
         loop0:
         while(!_loc9_ && _loc10_ > (-1001792084 ^ -24324964 ^ -1141572775 ^ -2127433111))
         {
            _loc10_--;
            var _loc11_:int = -1663022809 ^ -569640125 ^ 0x55C72A12 ^ 0x172C9876;
            var _loc12_:* = this._4771d657ccae5737bc214d56;
            do
            {
               for each(_loc5_ in _loc12_)
               {
                  _loc3_ = param1.throwInWorldOrigX + _loc5_.x * _loc8_;
                  _loc4_ = param1.throwInWorldOrigY + _loc5_.y * _loc8_;
               }
               _loc8_ += this._4933a546faf5e8ac9c4e6eef;
               continue loop0;
            }
            while(!param1.isLakeHit(_loc3_,_loc4_,param1.floatImage));
            param1.throwInWorldCurX = _loc3_;
            param1.throwInWorldCurY = _loc4_;
            _loc6_ = param1.throwInWorldCurX - param1.throwInWorldOrigX;
            _loc7_ = param1.throwInWorldCurY - param1.throwInWorldOrigY;
            param1._8447717a851abd5294a0e82c(_loc6_,_loc7_);
            return;
         }
      }
      
      public function _2facca7ff44dea91e76f802d(param1:_40c40768738c862c74ddd128) : void
      {
         var _loc2_:_70197a58a4eba697ed6a96dc = null;
         var _loc3_:int = -12782968 ^ 0x641C5B93 ^ 0x35BC6437 ^ -1365455572;
         var _loc4_:int = -1188225055 ^ 0x723990C0 ^ 0x2BA70331 ^ -525104112;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         for each(_loc2_ in this._7dbbb2cf6506202c9020da46)
         {
            _loc3_ = _loc2_.throwInWorldCurX;
            _loc4_ = _loc2_.throwInWorldCurY;
            _loc5_ = (param1.graphic.x - _loc3_) * (param1.graphic.x - _loc3_) + (param1.graphic.y - _loc4_) * (param1.graphic.y - _loc4_);
            if(_loc5_ < (0x40CD756E ^ 0x532E3F3C ^ 0x31B6A2B8 ^ 0x2254B77A))
            {
               _loc6_ = param1.hitTestPoint(new Point(_loc3_,_loc4_));
               if(_loc6_)
               {
                  this._7cbea35c93fde1e844c8dfa9(_loc2_,_loc2_.floatImage);
                  _loc2_._3fb8a42a8ea1ab5dca7ccb36();
               }
            }
         }
      }
   }
}

