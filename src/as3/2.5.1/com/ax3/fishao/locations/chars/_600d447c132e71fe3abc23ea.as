package com.ax3.fishao.locations.chars
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug._9b189a790efd59581443eb40;
   import com.ax3.fishao.locations._3e7dee0195ecd6b652b730f1;
   import com.ax3.fishao.locations.entries._c9513c48978d5034cc9ff2f4;
   import com.ax3.fishao.locations.objects.boat._40c40768738c862c74ddd128;
   import com.ax3.fishao.locations.objects.boat._d8a6f04331e45b3fc4efa7e8;
   import com.ax3.fishao.locations.objects.boat._f4627c560a2c1219281787a7;
   import com.ax3.fishao.vars.app;
   import com.ax3.geom._a5c3dbdfbeb709a5bf92d27c;
   import com.ax3.utils._8dbac3cb2bae16fc4e0e0f27;
   import com.ax3.utils.math.limit;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class _600d447c132e71fe3abc23ea extends _2e5b3522a164ee588f85e4b1
   {
      
      public static const _RAD2DEG:Number = (-2034564637 ^ -516535036 ^ -1804073033 ^ -202028060) / Math.PI;
      
      private static const _cd05c9a6d75a8afe5585e502:int = 0x20EFCCEE ^ 0x74661D03 ^ 0x7C9E2448 ^ 0x2817F373;
      
      private static const _2bac8c2cca7402c2e63bdfe3:int = 0x6F974C9B ^ -533357341 ^ 0x07816E5A ^ -2010924842;
      
      public static var maxBoatSpeed:Number = -269980675 ^ -1118920115 ^ -338790698 ^ -1184317586;
      
      public static var boatAcceleration:Number = 0x25881ABC ^ 0x2611910F ^ -617429455 ^ -659862141;
      
      public static const DIRECTION_COUNT:int = -1382581329 ^ -516363723 ^ 0x3F43F6B7 ^ 0x73EC673D;
      
      public static const DIRECTION_ARC_ALIGN_DEGREE:Number = (-1801512018 ^ 0x12F104DF ^ 0x360AB97A ^ -1335580829) / DIRECTION_COUNT;
      
      private static const _00c4c13cfe57d2925b30e485:Array = [0x3C197A98 ^ -1644505106 ^ 0x74552F5D ^ -709459431,0x053EE21F ^ -508597350 ^ 0x7A409DBC ^ -1630464931,-1476972206 ^ 0x73A2DE94 ^ 0x62F9F680 ^ -1230235184,0x3527E7A4 ^ 0x5A90161B ^ -1864908290 ^ -10473335,-790939725 ^ 0x57A4BE7F ^ 0x6DADC846 ^ -355319440,0x5A4A223D ^ -838935139 ^ 0x5C86B3DE ^ -885895854,-1618793510 ^ -1382010529 ^ 0x10386081 ^ 0x221B7B94,0x4E83B5EF ^ 0x47E89D0D ^ 0x19015E18 ^ 0x106A74A2];
      
      private var _711c7416eba5bd1f91e5ba68:_40c40768738c862c74ddd128;
      
      public var state:_bc5b95970bb4c8cdb17ae210 = null;
      
      private var _1075d4192070963102148d78:Point = new Point();
      
      private var _71860f4427142321ed62b719:Point = new Point();
      
      private var _37347dfa7b100d2cc768a1e3:_2e5b3522a164ee588f85e4b1;
      
      private var _cb217b48d251112b0626463d:_412bba20db41500babcd2a85;
      
      private var _ddc51e3630df9bb06b4e410d:Number;
      
      private var _30b08a5907e6cfc0110604cd:BitmapData;
      
      private const _f5092f7b9cc9f7c232e9c198:Point;
      
      private var _5b2f6fdfd5fb39ffec99f4f2:_a5c3dbdfbeb709a5bf92d27c;
      
      protected var _boatPath:Vector.<Point>;
      
      private var _074a4f55e4bc7fe048b88294:int;
      
      private var _a9efb992332e0b40cc99d2c6:Point = null;
      
      private const _9cd8777c70e37a9b1e1c59c3:Array;
      
      private var _a7b738bb1c068d5600a29908:int = 0;
      
      public var floatInWaterManager:_3e7dee0195ecd6b652b730f1;
      
      public var _obstacleMap:BitmapData;
      
      private var _8ee1cffb04aa3b2cacaab399:Number = NaN;
      
      private var _3a2828d6bfc890cc7e5fce0f:Boolean = false;
      
      private var _6d69c94e7560e1364b5e4106:_a5c3dbdfbeb709a5bf92d27c;
      
      public function _600d447c132e71fe3abc23ea()
      {
         var _temp_3:* = this;
         var _temp_2:* = §§findproperty(Point);
         var _temp_1:* = -1351027991 ^ -1089475333 ^ 0x7E48CA32 ^ 0x6E3FD420;
         _temp_3._f5092f7b9cc9f7c232e9c198 = new Point(_temp_1,_temp_1);
         this._5b2f6fdfd5fb39ffec99f4f2 = new _a5c3dbdfbeb709a5bf92d27c();
         this._boatPath = new Vector.<Point>();
         var _temp_7:* = this;
         var _temp_6:* = new Point(0x7C336C5D ^ -854888146 ^ -1134781670 ^ 0x0D648668,-746255083 ^ 0x4CD8E972 ^ -1744964118 ^ 0x08A0118D);
         var _temp_5:* = §§findproperty(Point);
         var _temp_4:* = 0x5FF99A45 ^ 0x5AE09F5E ^ 0x1CAE9201 ^ 0x19B7971B;
         _temp_7._9cd8777c70e37a9b1e1c59c3 = [_temp_6,new Point(_temp_4,_temp_4),new Point(0x46FB2414 ^ 0x04055E21 ^ -736941786 ^ -1762831597,-1248333753 ^ 0x252A808E ^ 0x442182F6 ^ -727911874),new Point(-1831872042 ^ 0x6CCE0DBE ^ -2117219887 ^ -2144083386,-1322239917 ^ -818874132 ^ -1163477394 ^ -995721519),new Point(-1081552943 ^ -1852185901 ^ -873504075 ^ 0x1A01B048,-2067515362 ^ 0x7F5E1680 ^ 0x4B7A785C ^ -1327475005),new Point(-1200868121 ^ 0x5FD3D793 ^ 0x44682620 ^ 0x5C283AAB,-989344643 ^ 0x42D64D27 ^ -1038120125 ^ -1171130906),new Point(-38855375 ^ -2079225900 ^ -1270376958 ^ -839316249,0x185458AB ^ -1938843552 ^ 0x7E6DB7FF ^ 0x15A988CB),new Point(0x3905FF83 ^ -642742973 ^ -631317407 ^ 0x3AEBA6A0,0x0CE9815C ^ -1090196259 ^ -1407951949 ^ -536426035)];
         this._6d69c94e7560e1364b5e4106 = new _a5c3dbdfbeb709a5bf92d27c();
         super();
         this._ddc51e3630df9bb06b4e410d = -DIRECTION_ARC_ALIGN_DEGREE / (0x2982C216 ^ 0x7C0415F0 ^ -556815696 ^ -1958118060);
      }
      
      override public function update(param1:uint, param2:uint, param3:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         _9b189a790efd59581443eb40.change(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႍჃძჃနဆჯႰၧ႒ႵႮၬဆ჎ჼ჏ႋ","ဵဉ႓ႢႩၣვႚႼၽ၈ၝყ၂სჷ"),this._1e45b71b60ad75133176fe7e());
         if(this.state == _bc5b95970bb4c8cdb17ae210.MOVE_CLOSE_TO_BOAT)
         {
            super.update(param1,param2,param3);
            if(_a9e2dd6063c60dc4a60d90ba())
            {
               this.state = _bc5b95970bb4c8cdb17ae210.MOVE_TO_BOAT;
               _loc4_ = this._711c7416eba5bd1f91e5ba68._ee59348f07d78d425951758d();
               moveTo(_loc4_.x,_loc4_.y);
            }
         }
         else if(this.state == _bc5b95970bb4c8cdb17ae210.MOVE_TO_BOAT)
         {
            super.update(param1,param2,param3);
            if(_a9e2dd6063c60dc4a60d90ba())
            {
               _fieldChar._a6ba5ade9f66ae64e73c340b();
               _fieldChar._866cbd5df047403d748b3e2d(this._711c7416eba5bd1f91e5ba68);
               this.state = _bc5b95970bb4c8cdb17ae210.ON_BOAT;
               if(_fieldChar is _c9513c48978d5034cc9ff2f4)
               {
                  this._8fad53244a53a9bc8b9d31ae();
                  this._3fedd20804b19038ed364fc0();
               }
               else
               {
                  _fieldChar._a6ba5ade9f66ae64e73c340b();
                  _fieldChar.locationUser.position.x = _fieldChar.position.x;
                  _fieldChar.locationUser.position.y = _fieldChar.position.y;
               }
            }
         }
         else
         {
            if(this._boatPath.length > (0x51E3A6D6 ^ -588551426 ^ -85952636 ^ 0x77E8BBAC))
            {
               this._fd978a1f632a364d1ac11114();
            }
            if(this._71860f4427142321ed62b719.length > (0x6ADE8E4D ^ 0x3E59A424 ^ 0x5044210A ^ 0x04C30B63) || this._1075d4192070963102148d78.length > (-1717939522 ^ 0x34F0966E ^ -1528425836 ^ 0x098CD644))
            {
               this._065e34fcff31b7f27f19ff35(param3);
               if(this._1075d4192070963102148d78.length > (0x531CE820 ^ -361449946 ^ -2055482257 ^ 0x3C138A69))
               {
                  this._711c7416eba5bd1f91e5ba68.graphic._9eb7d763103333597ca3343d(_d8a6f04331e45b3fc4efa7e8.SAIL);
                  this._1def256c0886ba2036881170();
               }
               else
               {
                  this._711c7416eba5bd1f91e5ba68.graphic._9eb7d763103333597ca3343d(_d8a6f04331e45b3fc4efa7e8.NORMAL);
               }
            }
            else
            {
               this._711c7416eba5bd1f91e5ba68.graphic._9eb7d763103333597ca3343d(_d8a6f04331e45b3fc4efa7e8.NORMAL);
            }
            if(!(_fieldChar is _c9513c48978d5034cc9ff2f4))
            {
               super.update(param1,param2,param3);
            }
            _loc5_ = this._c25d784e0fdd12d47fe4223b();
            _loc6_ = this._3a2828d6bfc890cc7e5fce0f == false && this._324b11c0b6add34f80e7026f();
            if(_loc5_ || _loc6_)
            {
               if(this._a7b738bb1c068d5600a29908 == (0x045B112C ^ 0x0A07CE61 ^ -1624384064 ^ -1854864755))
               {
                  this._a9efb992332e0b40cc99d2c6 = null;
                  this._a7b738bb1c068d5600a29908 = -2091418519 ^ -558338996 ^ -867877903 ^ 0x6E55D42B;
               }
               if(this._a9efb992332e0b40cc99d2c6 == null)
               {
                  this._a9efb992332e0b40cc99d2c6 = this._28aeb3b09ecff3a972d70117();
                  this._a7b738bb1c068d5600a29908 = 0x1C049C40 ^ 0x3B7E9FC6 ^ 0x72CE4A1D ^ 0x55B449E3;
               }
               else if(this._2e02763c1d54c928ddc62f51(this._a9efb992332e0b40cc99d2c6.x,this._a9efb992332e0b40cc99d2c6.y,false,false))
               {
                  --this._a7b738bb1c068d5600a29908;
                  this._711c7416eba5bd1f91e5ba68.graphic.x += this._a9efb992332e0b40cc99d2c6.x;
                  this._711c7416eba5bd1f91e5ba68.graphic.y += this._a9efb992332e0b40cc99d2c6.y;
                  this.floatInWaterManager._2facca7ff44dea91e76f802d(this._711c7416eba5bd1f91e5ba68);
               }
               else
               {
                  this._a9efb992332e0b40cc99d2c6 = null;
                  this._a7b738bb1c068d5600a29908 = -2120259338 ^ 0x3BE30837 ^ -1719519850 ^ -603870552;
               }
            }
            else
            {
               this._a9efb992332e0b40cc99d2c6 = null;
               this._a7b738bb1c068d5600a29908 = -1723985917 ^ -2010893858 ^ -905126261 ^ 0x24E900A9;
            }
         }
      }
      
      private function _1e45b71b60ad75133176fe7e() : String
      {
         var _loc1_:Point = null;
         var _loc2_:String = "";
         if(this._boatPath == null || this._boatPath.length == (-1600613525 ^ 0x20B78C51 ^ 0x165178F0 ^ -1770100790))
         {
            _loc2_ = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႮှჰდႂႭ၌ႻႈႫၗၹႇျგჰၹဥ","ၢსၨယ၈Ⴥ႓ၝဖဏႯკფဋၑၸ");
         }
         else
         {
            for each(_loc1_ in this._boatPath)
            {
               if(_loc2_.length > (-717254377 ^ 0x24A87C90 ^ 0x3146BB55 ^ -1060022574))
               {
                  _loc2_ += _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挝掎挴掋挸掮揩掟捸挒挢挪","挎接掹损捭揠捴揋捯捋挣捿揻握挛捼");
               }
               _loc2_ += _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၂၅ჀဿჇၥဗေညჀ","ლဥ჊႕ၤဲၕၖწმဝ၀ၕჀႨဤ") + _loc1_.x + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႎၰႱჹဒၶძႢႼღ","ာဏჀေၸၚႮဝ၃ႭႥၱုၯძ႙") + _loc1_.y + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刨切剡刽勮剳刀勨刵勲","劏勽刓勫刁募剮剉劰剜刦勊効刽劂刬");
            }
         }
         return _loc2_;
      }
      
      private function _8fad53244a53a9bc8b9d31ae() : void
      {
         var _loc1_:Point = this._711c7416eba5bd1f91e5ba68._ee59348f07d78d425951758d();
         _fieldChar.position.x = _loc1_.x;
         _fieldChar.position.y = _loc1_.y;
      }
      
      private function _28aeb3b09ecff3a972d70117() : Point
      {
         var _loc1_:int = 0x56A1419A ^ -2099115294 ^ -1534682571 ^ 0x70C5D14D;
         var _loc2_:Point = null;
         loop0:
         for each(_loc1_ in _00c4c13cfe57d2925b30e485)
         {
            _loc2_ = _8dbac3cb2bae16fc4e0e0f27._44739042c814649b8594b259(this._9cd8777c70e37a9b1e1c59c3);
            if(this._2e02763c1d54c928ddc62f51(_loc2_.x * _loc1_,_loc2_.y * _loc1_,true,true))
            {
               return _loc2_;
            }
            var _loc5_:int = 0x484DE6B0 ^ -1331919099 ^ -1634623528 ^ 0x6640FE6D;
            var _loc6_:* = this._9cd8777c70e37a9b1e1c59c3;
            do
            {
               for each(_loc2_ in _loc6_)
               {
               }
               continue loop0;
            }
            while(!this._2e02763c1d54c928ddc62f51(_loc2_.x * _loc1_,_loc2_.y * _loc1_,true,true));
            return _loc2_;
         }
         return null;
      }
      
      private function _3fedd20804b19038ed364fc0() : void
      {
         _fieldChar._9ec5ae7ccbeebf37b003f58d(true);
      }
      
      public function _3fe36ac61185e221c585b08e(param1:Boolean = false) : void
      {
         if(param1 || this._711c7416eba5bd1f91e5ba68.graphic.position != null && !this._711c7416eba5bd1f91e5ba68.graphic.position._5997d310cdccacd544d7cf2b(this._5b2f6fdfd5fb39ffec99f4f2))
         {
            if(this._5b2f6fdfd5fb39ffec99f4f2.x == this._711c7416eba5bd1f91e5ba68.graphic.position.x && this._5b2f6fdfd5fb39ffec99f4f2.y == this._711c7416eba5bd1f91e5ba68.graphic.position.y && this._5b2f6fdfd5fb39ffec99f4f2.rotation == this._711c7416eba5bd1f91e5ba68.graphic.position.rotation)
            {
               ++this._074a4f55e4bc7fe048b88294;
            }
            else
            {
               this._074a4f55e4bc7fe048b88294 = 0x25ED0E97 ^ -392612373 ^ -1874418604 ^ 0x5D329F28;
            }
            this._5b2f6fdfd5fb39ffec99f4f2.copy(this._711c7416eba5bd1f91e5ba68.graphic.position);
            this._711c7416eba5bd1f91e5ba68.lastSendPosition.copy(this._5b2f6fdfd5fb39ffec99f4f2);
            if(this._074a4f55e4bc7fe048b88294 < (0x16C32BF8 ^ -1338746968 ^ 0x32D241AC ^ -1809498648))
            {
               _dfa25706e58a240c1e33e5c6.locationExtension._185c93e4d739a7d877299b25(this._5b2f6fdfd5fb39ffec99f4f2.x,this._5b2f6fdfd5fb39ffec99f4f2.y,this._5b2f6fdfd5fb39ffec99f4f2.rotation);
            }
         }
      }
      
      private function _fd978a1f632a364d1ac11114() : void
      {
         var _loc1_:Point = this._boatPath[-227520319 ^ 0x4EC755B3 ^ -918837902 ^ 0x758CA000];
         var _loc2_:Point = this._711c7416eba5bd1f91e5ba68.position;
         while(Point.distance(_loc1_,_loc2_) < maxBoatSpeed * (0x075FEC12 ^ 0x6A1F2883 ^ -1186809745 ^ -738034436))
         {
            this._boatPath.shift();
            if(this._boatPath.length <= (-1481831823 ^ 0x0ED4E4FA ^ 0x42A09EC8 ^ -338071485))
            {
               _loc2_.x = _loc1_.x;
               _loc2_.y = _loc1_.y;
               if(!isNaN(this._8ee1cffb04aa3b2cacaab399) && this._5c0376f968ef159f4846e1a1(this._8ee1cffb04aa3b2cacaab399))
               {
                  this._711c7416eba5bd1f91e5ba68.graphic._dbe260738262fd87870d9a73(this._8ee1cffb04aa3b2cacaab399);
                  this._711c7416eba5bd1f91e5ba68.rotationAlign = this._8ee1cffb04aa3b2cacaab399 * DIRECTION_ARC_ALIGN_DEGREE;
                  this._711c7416eba5bd1f91e5ba68._eb4a3e340af1d6864c8687a7();
                  this.floatInWaterManager._2facca7ff44dea91e76f802d(this._711c7416eba5bd1f91e5ba68);
               }
               this._19f5482595ce29a73c8170a8();
               return;
            }
            _loc1_ = this._boatPath[-227875799 ^ -1583693194 ^ 0x49310DEC ^ 0x1AC12BB3];
         }
         var _loc3_:Number = Math.round(limit(_loc2_.x - _loc1_.x,-maxBoatSpeed,maxBoatSpeed));
         var _loc4_:Number = Math.round(limit(_loc2_.y - _loc1_.y,-maxBoatSpeed,maxBoatSpeed));
         if(_loc3_ != (0x39488196 ^ -1262991413 ^ 0x46083AA0 ^ -872874755) || _loc4_ != (0x5174148C ^ -1501648006 ^ 0x46C1DC58 ^ -1312070738))
         {
            this._71860f4427142321ed62b719.x = -_loc3_;
            this._71860f4427142321ed62b719.y = -_loc4_;
         }
      }
      
      private function _19f5482595ce29a73c8170a8() : void
      {
         this._8ee1cffb04aa3b2cacaab399 = NaN;
         this._3a2828d6bfc890cc7e5fce0f = false;
         this._234601caf2b6556162e6d374();
      }
      
      private function _234601caf2b6556162e6d374() : void
      {
         this._71860f4427142321ed62b719.x = 0x75A71567 ^ -1692006147 ^ -202612750 ^ 0x1D6D4268;
         this._71860f4427142321ed62b719.y = 0x6348791A ^ 0x4E6FE450 ^ -1419388269 ^ -2042476583;
         this._1075d4192070963102148d78.x = -1062474061 ^ -2110284302 ^ 0x7C5FFEC5 ^ 0x3EC38D84;
         this._1075d4192070963102148d78.y = -1027583668 ^ -1088135839 ^ 0x1CF72623 ^ 0x61132A0E;
      }
      
      private function _1def256c0886ba2036881170() : void
      {
         var _loc1_:Number = Math.atan2(this._1075d4192070963102148d78.x,-this._1075d4192070963102148d78.y) * _RAD2DEG;
         while(_loc1_ < (-1406904334 ^ -1060162820 ^ -1920302457 ^ -513677431))
         {
            _loc1_ = (-396314531 ^ 0x755424BC ^ 0x412570BD ^ -602804940) + _loc1_;
         }
         _loc1_ -= this._ddc51e3630df9bb06b4e410d;
         var _loc2_:int = _loc1_ / DIRECTION_ARC_ALIGN_DEGREE % DIRECTION_COUNT;
         if(this._5c0376f968ef159f4846e1a1(_loc2_))
         {
            this._711c7416eba5bd1f91e5ba68.graphic._dbe260738262fd87870d9a73(_loc2_);
            this._711c7416eba5bd1f91e5ba68.rotationAlign = _loc2_ * DIRECTION_ARC_ALIGN_DEGREE;
            this._711c7416eba5bd1f91e5ba68._eb4a3e340af1d6864c8687a7();
            this.floatInWaterManager._2facca7ff44dea91e76f802d(this._711c7416eba5bd1f91e5ba68);
         }
      }
      
      private function _065e34fcff31b7f27f19ff35(param1:Number) : void
      {
         var _loc2_:int = 0x64D3CBF8 ^ -1615570731 ^ 0x6C5D92D4 ^ -1757806087;
         var _loc3_:int = -1222941886 ^ -1621223368 ^ -1335390233 ^ -1742539619;
         var _loc4_:Number = this._1075d4192070963102148d78.x + this._71860f4427142321ed62b719.x;
         var _loc5_:Number = this._1075d4192070963102148d78.y + this._71860f4427142321ed62b719.y;
         if(this._71860f4427142321ed62b719.x != (0x27515AB3 ^ 0x5F73A8EB ^ 0x7CF16FFB ^ 0x04D39DA3))
         {
            if(_loc4_ * _loc4_ <= maxBoatSpeed * maxBoatSpeed)
            {
               this._1075d4192070963102148d78.x = _loc4_;
            }
         }
         else if(_loc4_ > (-978824526 ^ -2042879534 ^ 0x283676B1 ^ 0x6BA205D1))
         {
            --this._1075d4192070963102148d78.x;
         }
         else if(_loc4_ < (0x1F0DA160 ^ 0x6A3B953A ^ -1867605504 ^ -442978726))
         {
            ++this._1075d4192070963102148d78.x;
         }
         if(this._71860f4427142321ed62b719.y != (-1167813587 ^ 0x0E0E4589 ^ -2004146079 ^ 0x3CE1F9C5))
         {
            if(_loc5_ * _loc5_ <= maxBoatSpeed * maxBoatSpeed)
            {
               this._1075d4192070963102148d78.y = _loc5_;
            }
         }
         else if(_loc5_ > (-1104423378 ^ -1107112877 ^ 0x30C171B5 ^ 0x30E86BC8))
         {
            --this._1075d4192070963102148d78.y;
         }
         else if(_loc5_ < (0x5D20C53C ^ 0x4913D8BE ^ 0x0D6C4967 ^ 0x195F54E5))
         {
            ++this._1075d4192070963102148d78.y;
         }
         if(_loc4_ != (-1579056116 ^ 0x5D17B4A5 ^ -76696268 ^ 0x079B859D) && _loc5_ != (0x450F8FEF ^ -1517877412 ^ 0x05941D34 ^ -451111545))
         {
            _loc2_ = this._1075d4192070963102148d78.x;
            _loc3_ = this._1075d4192070963102148d78.y;
         }
         else
         {
            _loc2_ = this._1075d4192070963102148d78.x;
            _loc3_ = this._1075d4192070963102148d78.y;
         }
         if(_loc2_ != (0x142782EA ^ -1584011472 ^ -184077073 ^ 0x40B55135) || _loc3_ != (0x29AED01A ^ -621798817 ^ -770922129 ^ 0x2152632A))
         {
            _loc2_ *= param1;
            _loc3_ *= param1;
            if(this._2e02763c1d54c928ddc62f51(_loc2_,_loc3_,!this._3a2828d6bfc890cc7e5fce0f) || this._2e02763c1d54c928ddc62f51(_loc2_ * (-1716318189 ^ -1693400911 ^ -2080397915 ^ -2124647166),_loc3_ * (0x7A83A6DF ^ 0x7B7000F2 ^ -1069365579 ^ -1045340003),!this._3a2828d6bfc890cc7e5fce0f) && this._1075d4192070963102148d78.length < (-966164808 ^ 0x4E9660D5 ^ 0x6A53186C ^ -492042749))
            {
               this._711c7416eba5bd1f91e5ba68.graphic.x += _loc2_;
               this._711c7416eba5bd1f91e5ba68.graphic.y += _loc3_;
               this.floatInWaterManager._2facca7ff44dea91e76f802d(this._711c7416eba5bd1f91e5ba68);
            }
            else
            {
               if(this._3a2828d6bfc890cc7e5fce0f == false)
               {
                  this._boatPath.length = 0x382E49B8 ^ 0x6BD94429 ^ 0x55578932 ^ 0x06A084A3;
               }
               this._234601caf2b6556162e6d374();
            }
         }
      }
      
      public function set boatObstacleMap(param1:BitmapData) : void
      {
         this._30b08a5907e6cfc0110604cd = param1;
      }
      
      private function _5c0376f968ef159f4846e1a1(param1:int) : Boolean
      {
         var _loc2_:Point = null;
         var _loc3_:BitmapData = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         if(this._30b08a5907e6cfc0110604cd != null)
         {
            _loc2_ = _f4627c560a2c1219281787a7.leftSizeMap[_d8a6f04331e45b3fc4efa7e8.NORMAL][param1];
            _loc2_ = _loc2_.clone();
            _loc2_.x += this._711c7416eba5bd1f91e5ba68.graphic.x;
            _loc2_.y += this._711c7416eba5bd1f91e5ba68.graphic.y;
            _loc3_ = this._711c7416eba5bd1f91e5ba68._b007a8f45848923a4a7c0631(param1);
            _loc4_ = this._30b08a5907e6cfc0110604cd.hitTest(this._f5092f7b9cc9f7c232e9c198,-796228521 ^ 0x5B6C63A4 ^ -1584514949 ^ 0x2A68DF77,_loc3_,_loc2_,0x4809C98D ^ 0x7BE3E3AC ^ -863664211 ^ -9458317);
            if(_loc4_)
            {
               return false;
            }
            _loc5_ = this._e4c6aa983b6ce6c27b25dd78(_loc3_,_loc2_);
            if(_loc5_)
            {
               return false;
            }
         }
         return true;
      }
      
      private function _e4c6aa983b6ce6c27b25dd78(param1:BitmapData, param2:Point) : Boolean
      {
         var _loc3_:_40c40768738c862c74ddd128 = null;
         for each(_loc3_ in _fieldChar.boats)
         {
            if(this._711c7416eba5bd1f91e5ba68 != _loc3_)
            {
               if(_loc3_.hitTest(param1,param2))
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function _2e02763c1d54c928ddc62f51(param1:int, param2:int, param3:Boolean = true, param4:Boolean = true) : Boolean
      {
         var _loc5_:Point = null;
         var _loc6_:BitmapData = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         if(this._30b08a5907e6cfc0110604cd != null)
         {
            _loc5_ = _f4627c560a2c1219281787a7.leftSizeMap[_d8a6f04331e45b3fc4efa7e8.NORMAL][this._711c7416eba5bd1f91e5ba68.graphic.directionIndex];
            _loc5_ = _loc5_.clone();
            _loc5_.x = _loc5_.x + this._711c7416eba5bd1f91e5ba68.graphic.x + param1;
            _loc5_.y = _loc5_.y + this._711c7416eba5bd1f91e5ba68.graphic.y + param2;
            _loc6_ = this._711c7416eba5bd1f91e5ba68._b007a8f45848923a4a7c0631(this._711c7416eba5bd1f91e5ba68.graphic.directionIndex);
            if(param3)
            {
               _loc7_ = this._30b08a5907e6cfc0110604cd.hitTest(this._f5092f7b9cc9f7c232e9c198,0x112B6B91 ^ -515409762 ^ 0x6340652F ^ -1825802529,_loc6_,_loc5_,0x78DD5263 ^ 0x0D278F18 ^ -1447389042 ^ -599767798);
               if(_loc7_)
               {
                  return false;
               }
               if(this._a5e3a1f55654ed7d2c751689(this._711c7416eba5bd1f91e5ba68.graphic.x + param1,this._711c7416eba5bd1f91e5ba68.graphic.y + param2))
               {
                  return false;
               }
            }
            if(param4)
            {
               _loc8_ = this._e4c6aa983b6ce6c27b25dd78(_loc6_,_loc5_);
               if(_loc8_)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      public function moveToBoat(param1:_40c40768738c862c74ddd128) : void
      {
         this._711c7416eba5bd1f91e5ba68 = param1;
         this._obstacleMap = this._711c7416eba5bd1f91e5ba68.obstacleMap;
         this.state = _bc5b95970bb4c8cdb17ae210.MOVE_CLOSE_TO_BOAT;
         var _loc2_:Point = this._711c7416eba5bd1f91e5ba68._991faa1b633d7d8f17c499f4();
         moveTo(_loc2_.x,_loc2_.y);
      }
      
      public function _c546eb84adc3ff027f8b512a(param1:_40c40768738c862c74ddd128) : void
      {
         this._711c7416eba5bd1f91e5ba68 = param1;
         this._obstacleMap = this._711c7416eba5bd1f91e5ba68.obstacleMap;
         _fieldChar._866cbd5df047403d748b3e2d(this._711c7416eba5bd1f91e5ba68);
         this.state = _bc5b95970bb4c8cdb17ae210.ON_BOAT;
      }
      
      override public function _69f6832ef5212d8e19395b6d(param1:int, param2:int) : Boolean
      {
         var _loc3_:int = 0x30FECEBB ^ -1656002371 ^ -75930180 ^ 0x280EBA37;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1262620275 ^ -2032686873 ^ 0x313EE914 ^ 0x7D96C9F3))
            {
               case 0:
                  if(this.state == _bc5b95970bb4c8cdb17ae210.MOVE_TO_BOAT)
                  {
                     _loc3_ = -961321345 ^ 0x73022FF7 ^ 0x44746CC7 ^ -1895342909;
                  }
                  else
                  {
                     _loc3_ = -1792998945 ^ 0x1BDF1AE1 ^ 0x4757FECA ^ -1217684357;
                  }
                  break;
               case 1:
                  return false;
               case 2:
                  return super._69f6832ef5212d8e19395b6d(param1,param2);
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function init(param1:_2e5b3522a164ee588f85e4b1, param2:_412bba20db41500babcd2a85) : void
      {
         this._37347dfa7b100d2cc768a1e3 = param1;
         this._cb217b48d251112b0626463d = param2;
      }
      
      override public function _a43618439352bc03017c3c39() : Boolean
      {
         return super._a43618439352bc03017c3c39();
      }
      
      public function _1d90133f14d0230dc0788db9() : Boolean
      {
         return this.state == _bc5b95970bb4c8cdb17ae210.ON_BOAT && app.user.charState.value == _2fcef105b08d78e8c46cbf27.NORMAL;
      }
      
      public function _85bb6fe23bdc84e4c7e7ae3b(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:int = 0x46357CF9 ^ -688757925 ^ -715755857 ^ 0x4591710D;
         var _loc4_:int = 0x2C4BF045 ^ -1674201354 ^ -333245876 ^ 0x5C5D54FF;
         var _loc5_:uint = uint(0x06CA7D9B ^ -129607414 ^ -548372205 ^ 0x21DCA582);
         if(_fieldChar is _c9513c48978d5034cc9ff2f4 || this.state == _bc5b95970bb4c8cdb17ae210.MOVE_CLOSE_TO_BOAT)
         {
            if(this._711c7416eba5bd1f91e5ba68 == null)
            {
               return true;
            }
            _loc3_ = param1 - this._711c7416eba5bd1f91e5ba68.initPosition.x - this._711c7416eba5bd1f91e5ba68.obstacleMapPosition.x;
            _loc4_ = param2 - this._711c7416eba5bd1f91e5ba68.initPosition.y - this._711c7416eba5bd1f91e5ba68.obstacleMapPosition.y;
            _loc5_ = this._711c7416eba5bd1f91e5ba68.obstacleMap.getPixel32(_loc3_,_loc4_);
            return _loc5_ < (0x26EB662E ^ 0x68E7248F ^ -2061109147 ^ -875150021);
         }
         if(this._711c7416eba5bd1f91e5ba68 != null)
         {
            return false;
         }
         return super._5c02460a29e73651d344c931(param1,param2);
      }
      
      public function _93eadffa54c4b1bfff0374ab(param1:int, param2:int) : void
      {
         if(this.state == _bc5b95970bb4c8cdb17ae210.ON_BOAT)
         {
            if(param1 != (-51962053 ^ -1185895618 ^ -466002080 ^ -1584469147) || param2 != (0x63DD3614 ^ 0x22E39D6F ^ 0x546C76E8 ^ 0x1552DD93) || this._boatPath.length == (0x2491B876 ^ -448761705 ^ -1294028482 ^ 0x730F79DF))
            {
               this._71860f4427142321ed62b719.x = param1 * boatAcceleration;
               this._71860f4427142321ed62b719.y = param2 * boatAcceleration;
               _path.length = -252592621 ^ 0x1BF973D1 ^ -10963838 ^ 0x14507940;
               this._boatPath.length = 0x1A0D67AD ^ 0x29D69C5B ^ -571136065 ^ -298918839;
            }
         }
      }
      
      public function _e79468769a1f2dfe076686e3(param1:Number, param2:Number) : void
      {
         var _loc3_:int = -382409468 ^ 0x7E116887 ^ 0x42326B89 ^ -1582942269;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x2A031289 ^ 0x7F391756 ^ -1927010418 ^ -1397754984))
            {
               case 0:
                  this._boatPath.length = -1878156022 ^ -1435081727 ^ 0x3C794715 ^ 0x0602BE1E;
                  if((param1 - this._711c7416eba5bd1f91e5ba68.graphic.x) * (param1 - this._711c7416eba5bd1f91e5ba68.graphic.x) + (param2 - this._711c7416eba5bd1f91e5ba68.graphic.y) * (param2 - this._711c7416eba5bd1f91e5ba68.graphic.y) >= maxBoatSpeed * (0x2E5BC294 ^ -2109553277 ^ 0x4812F4AD ^ -468978760))
                  {
                     _loc3_ = -1359429072 ^ -1039747908 ^ -1016193065 ^ -618547053;
                  }
                  else
                  {
                     _loc3_ = 0x6622C4F8 ^ -110645547 ^ -1204458191 ^ 0x53C1D6D7;
                  }
                  break;
               case 1:
                  this._b65b6e6a98958b88b1a01e76(this._711c7416eba5bd1f91e5ba68.graphic.x,this._711c7416eba5bd1f91e5ba68.graphic.y,param1,param2);
                  _loc3_ = 0x32E189BB ^ -951879008 ^ -1403750403 ^ 0x2D47552D;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _b65b6e6a98958b88b1a01e76(param1:int, param2:int, param3:int, param4:int, param5:Boolean = false) : void
      {
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         this._3a2828d6bfc890cc7e5fce0f = param5;
         if(this._3a2828d6bfc890cc7e5fce0f)
         {
            if(param2 > _2bac8c2cca7402c2e63bdfe3 && param4 > _2bac8c2cca7402c2e63bdfe3)
            {
               param3 = this._711c7416eba5bd1f91e5ba68.initPosition.x;
            }
            else if(!(param2 < _2bac8c2cca7402c2e63bdfe3 && param4 < _2bac8c2cca7402c2e63bdfe3))
            {
               _loc6_ = new Point(this._711c7416eba5bd1f91e5ba68.initPosition.x,_2bac8c2cca7402c2e63bdfe3);
               _loc7_ = this._91718fa2318e9baefdea83f0(param1,param2,_loc6_.x,_loc6_.y);
               this._boatPath.push(_loc7_);
               this._boatPath.push(_loc6_);
               param1 = _loc6_.x;
               param2 = _loc6_.y;
            }
            this._6d69c94e7560e1364b5e4106.x = param3;
            this._6d69c94e7560e1364b5e4106.y = param4;
         }
         var _loc8_:Point = this._91718fa2318e9baefdea83f0(param1,param2,param3,param4);
         this._boatPath.push(_loc8_);
         this._boatPath.push(new Point(param3,param4));
      }
      
      private function _91718fa2318e9baefdea83f0(param1:int, param2:int, param3:int, param4:int) : Point
      {
         var _loc5_:Number = param3 - param1;
         var _loc6_:Number = param4 - param2;
         var _loc7_:Number = Math.min(Math.abs(_loc5_),Math.abs(_loc6_));
         var _loc8_:Point = new Point(param3,param4);
         if(_loc5_ > (-1555448021 ^ -744367710 ^ 0x4F362036 ^ 0x3FDE46BF))
         {
            _loc8_.x -= _loc7_;
         }
         else
         {
            _loc8_.x += _loc7_;
         }
         if(_loc6_ > (0x3F50811D ^ -1735233179 ^ 0x287C6BF0 ^ -1883333752))
         {
            _loc8_.y -= _loc7_;
         }
         else
         {
            _loc8_.y += _loc7_;
         }
         return _loc8_;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.floatInWaterManager = null;
         this._711c7416eba5bd1f91e5ba68 = null;
         this.state = null;
         this._37347dfa7b100d2cc768a1e3 = null;
         this._cb217b48d251112b0626463d = null;
      }
      
      public function _d4032cbcb284d156c3faa20f(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0x210EFF4B ^ -1744684066 ^ -888907115 ^ 0x25C1CFF8;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (-1034106897 ^ -1594776620 ^ 0x177DD994 ^ 0x2219EC56))
            {
               case 0:
                  this._boatPath.length = -2127602373 ^ 0x6A1288AC ^ 0x092D5815 ^ -502231678;
                  this._8ee1cffb04aa3b2cacaab399 = param3;
                  this._b65b6e6a98958b88b1a01e76(this._711c7416eba5bd1f91e5ba68.graphic.x,this._711c7416eba5bd1f91e5ba68.graphic.y,param1,param2,true);
                  _loc4_ = 0x2D3AD822 ^ 0x695578AD ^ 0x0EFAA96B ^ 0x1D5C581F;
                  break;
               case 1:
                  if(this.state == _bc5b95970bb4c8cdb17ae210.ON_BOAT)
                  {
                     _loc4_ = -830615328 ^ -1499204857 ^ -176203978 ^ -899144408;
                  }
                  else
                  {
                     _loc4_ = 0x5A48C947 ^ 0x4FECC978 ^ -38319544 ^ -1076225140;
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
      
      override public function _932bcd14906ee6abb2c18abc(param1:Point, param2:Boolean = false, param3:Boolean = false) : Boolean
      {
         var _loc4_:int = -13209118 ^ -1002082985 ^ -2077277272 ^ -288317879;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x0D5CE1D0 ^ -2069560719 ^ 0x74C9732F ^ -1396944423))
            {
               case 0:
                  return false;
               case 1:
                  return false;
               case 2:
                  if(app.user.charState.value == _2fcef105b08d78e8c46cbf27.SAIL_BY_BOAT)
                  {
                     _loc4_ = -1418805252 ^ 0x69795DCE ^ 0x0A7A6672 ^ -1713289961;
                  }
                  else
                  {
                     _loc4_ = 0x19D3F52C ^ 0x5CB5F787 ^ -436036067 ^ -219652636;
                  }
                  break;
               case 3:
                  if(this.state == _bc5b95970bb4c8cdb17ae210.MOVE_TO_BOAT)
                  {
                     _loc4_ = 0x34D5BEEA ^ 0x72E0DFB2 ^ -913923454 ^ -566295924;
                  }
                  else
                  {
                     _loc4_ = 0x5600C330 ^ -984195739 ^ 0x08D301CF ^ -905355575;
                  }
                  break;
               case 4:
                  if(this.state == _bc5b95970bb4c8cdb17ae210.ON_BOAT)
                  {
                     _loc4_ = -468678023 ^ -1195175019 ^ -27876841 ^ -217449810;
                  }
                  else
                  {
                     _loc4_ = -507939268 ^ -849484714 ^ -418153348 ^ -1703203001;
                  }
                  break;
               case 5:
                  return false;
               case 6:
                  return super._932bcd14906ee6abb2c18abc(param1,param2,param3);
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function stop() : void
      {
         super.stop();
         this._71860f4427142321ed62b719.x = 0x4A54BDBA ^ 0x3FC3CFE6 ^ -1607632530 ^ -709227726;
         this._71860f4427142321ed62b719.y = 0x54823C38 ^ -428520549 ^ -248881036 ^ 0x43DD17D7;
         this._1075d4192070963102148d78.x = -114763066 ^ 0x03BD40BB ^ -1471940435 ^ 0x52D662D0;
         this._1075d4192070963102148d78.y = -493579528 ^ 0x1E3B9AC2 ^ 0x0AEBC800 ^ -163266502;
         this._boatPath.length = 0x20617493 ^ -93282956 ^ -512251098 ^ 0x3B6642C1;
      }
      
      private function _c25d784e0fdd12d47fe4223b() : Boolean
      {
         var _loc1_:Point = _f4627c560a2c1219281787a7.leftSizeMap[_d8a6f04331e45b3fc4efa7e8.NORMAL][this._711c7416eba5bd1f91e5ba68.graphic.directionIndex];
         _loc1_ = _loc1_.clone();
         _loc1_.x += this._711c7416eba5bd1f91e5ba68.graphic.x;
         _loc1_.y += this._711c7416eba5bd1f91e5ba68.graphic.y;
         var _loc2_:BitmapData = this._711c7416eba5bd1f91e5ba68._b007a8f45848923a4a7c0631(this._711c7416eba5bd1f91e5ba68.graphic.directionIndex);
         return this._e4c6aa983b6ce6c27b25dd78(_loc2_,_loc1_);
      }
      
      private function _324b11c0b6add34f80e7026f() : Boolean
      {
         var _loc1_:Point = _f4627c560a2c1219281787a7.leftSizeMap[_d8a6f04331e45b3fc4efa7e8.NORMAL][this._711c7416eba5bd1f91e5ba68.graphic.directionIndex];
         _loc1_ = _loc1_.clone();
         _loc1_.x += this._711c7416eba5bd1f91e5ba68.graphic.x;
         _loc1_.y += this._711c7416eba5bd1f91e5ba68.graphic.y;
         var _loc2_:BitmapData = this._711c7416eba5bd1f91e5ba68._b007a8f45848923a4a7c0631(this._711c7416eba5bd1f91e5ba68.graphic.directionIndex);
         var _loc3_:Boolean = this._30b08a5907e6cfc0110604cd.hitTest(this._f5092f7b9cc9f7c232e9c198,-896415703 ^ -1439968471 ^ 0x7B38C70E ^ 0x1B82DCF1,_loc2_,_loc1_,0x39683BC1 ^ 0x4FE75EC6 ^ 0x21CA8D2C ^ 0x5745E8D4);
         var _loc4_:Boolean = this._a5e3a1f55654ed7d2c751689(this._711c7416eba5bd1f91e5ba68.graphic.x,this._711c7416eba5bd1f91e5ba68.graphic.y);
         return _loc3_ || _loc4_;
      }
      
      private function _a5e3a1f55654ed7d2c751689(param1:Number, param2:Number) : Boolean
      {
         return param2 > _cd05c9a6d75a8afe5585e502 && (this._711c7416eba5bd1f91e5ba68.initPosition.x - (-850091094 ^ -349273682 ^ -457377795 ^ -1027156625) > param1 || this._711c7416eba5bd1f91e5ba68.initPosition.x + (-2100562799 ^ -893539682 ^ -1292827286 ^ -91792397) < param1);
      }
      
      public function _2dd3c41698379f86f6a451b1(param1:int, param2:int) : Boolean
      {
         var _loc3_:int = param1 - this._711c7416eba5bd1f91e5ba68.initPosition.x - this._711c7416eba5bd1f91e5ba68.obstacleMapPosition.x;
         var _loc4_:int = param2 - this._711c7416eba5bd1f91e5ba68.initPosition.y - this._711c7416eba5bd1f91e5ba68.obstacleMapPosition.y;
         var _loc5_:uint = this._711c7416eba5bd1f91e5ba68.obstacleMap.getPixel32(_loc3_,_loc4_);
         return _loc5_ < (-1810497412 ^ -1935304755 ^ 0x21DC5938 ^ 0x39903176);
      }
   }
}

