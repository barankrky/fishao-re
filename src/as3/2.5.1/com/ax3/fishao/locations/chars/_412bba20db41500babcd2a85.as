package com.ax3.fishao.locations.chars
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class _412bba20db41500babcd2a85 implements _8b5edf1c1de2751d1bc6fca0
   {
      
      public static var maxSpeed:Number = 0x06E86E27 ^ 0x5E7A5E2D ^ -383049067 ^ -1313271141;
      
      public static var SIN_45:Number = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勮刼劁刘剪刀刦剂削刊勃勉剳劼刯勎剡刨刊勌剹勰劦創","勄勾劻剎劃剚动勉勹劻劤剰刋勺剗勏");
      
      private var _0eed6cf9725528eade14db92:Point = new Point();
      
      private var _87df3f3c6905e9babbe34aec:Point = new Point();
      
      private var _1b886179b11b729cf140e224:Boolean = false;
      
      private var _0b58cca384f35a5a70e0620b:Boolean = false;
      
      private var _82b441061f9e52c1141ca481:_08c120b706560fce9302bcab;
      
      private var _0559fbe74e182d8b6a6502b0:BitmapData;
      
      private var _9acd223e141497d8d7d7be4c:Function;
      
      private var _c954adfb112c54c94f3c96ae:Number;
      
      public var testPoints:Vector.<Point>;
      
      private var _b6918d13f39135e8bf5c44b7:BitmapData;
      
      private var _e0306c341c130ce8582050f5:Number;
      
      private var _2b36f49eb14303e12f8ff9f7:Number;
      
      public function _412bba20db41500babcd2a85()
      {
         var _temp_5:* = this;
         var _temp_4:* = Vector.<Point>;
         var _temp_3:* = global;
         var _temp_2:* = §§findproperty(Point);
         var _temp_1:* = 0x5E16CD73 ^ 0x2BA670DB ^ 0x4DAB4943 ^ 0x381BF4EB;
         _temp_5.testPoints = _temp_4([new Point(_temp_1,_temp_1),new Point(0x6B0BCE1A ^ -1704226314 ^ 0x72F3CB57 ^ -2087480131,-235176363 ^ -647501229 ^ -327732853 ^ -991189619),new Point(-1667964830 ^ 0x39C1E113 ^ 0x49E00F0D ^ -323678600,-1097309238 ^ 0x748769CD ^ 0x6C0A94A2 ^ -1508532570),new Point(-1458714163 ^ -57594231 ^ -1965763661 ^ -548915977,-287418797 ^ 0x3D06EC81 ^ -2137859142 ^ 0x534A616C),new Point(-1108959657 ^ -573540192 ^ -418205198 ^ 0x78DBA8F9,-859406560 ^ 0x7019F242 ^ -560571764 ^ 0x6249D7ED),new Point(-387085679 ^ 0x1A85A6F1 ^ 0x1766A222 ^ 0x1AF171B8,0x1237AD6F ^ 0x61B3E195 ^ 0x60EA5B08 ^ 0x136E17F2),new Point(-308045166 ^ -1699487984 ^ -2071523630 ^ 0x0C68B4AC,0x3FBE23B1 ^ -1661641703 ^ -805113906 ^ -1934200933),new Point(0x72DCFC16 ^ -1224769078 ^ 0x5130DC5B ^ -1793875577,-273529964 ^ 0x7D4D0714 ^ -1171734034 ^ -685213038),new Point(0x67701B07 ^ 0x2E6D52C4 ^ 0x54B4894C ^ -497664141,-517518812 ^ 0x13851439 ^ 0x6E359FB7 ^ -1667776087),new Point(-1500758541 ^ 0x6F106D80 ^ -240712848 ^ 0x383B5300
         ,-708098754 ^ -36124120 ^ 0x78B88420 ^ 0x50AB0B36),new Point(-361629371 ^ -1673623211 ^ -675258224 ^ -1584459646,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勞刈剃勪劦刲剗劢勝办刲勌剜刈勌初势勁剰刮势創剸勄","刐削勱勿刨努劭勁勱刓刖効前划剂劐")),new Point(0x15F73E75 ^ 0x5A33CF85 ^ -792492480 ^ -1626900560,-535868807 ^ -173153331 ^ 0x65778BE9 ^ 0x70D5225F),new Point(0x78D8A155 ^ -1960250964 ^ -662524949 ^ -728955668,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掛掚捛換揱捣捦挘捚振揣捚揫握挔掃掰掩捡掔揔揠掋揠","挍掱掰捹捹挴掼挧捾揢掑揇捍捰掀掏")),new Point(0x6685CE2B ^ -1226954941 ^ 0x5259481A ^ 0x7DFD5E8F,-1447874112 ^ 0x20FC0EA1 ^ 0x4FFFF893 ^ -961493006),new Point(-2071712414 ^ -123751483 ^ -895074138 ^ 0x494221FF,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揨援揺挅揜捾捛捹捻掎揋掿掳掏揮挎捊挿掬振掙指掎揥","掗挅掃挱掝挌捑掿捸挱揃损掍揼揓揙")),new Point(-1359458230 ^ -880479397 ^ 0x18BE7E82 ^ 0x7DC2DD93,0x02315C9A ^ -355384891 ^ 0x09D442C2 ^ 0x1ECBA063),new Point(-72781282 ^ -718100191 ^ -354894014 ^ 0x3BBC9B83,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჼးႎၦႆဗჟკၪၓှფဦႻၜဴၰသငႌ႖ဒၧႝ"
         ,"Ⴧ၌ႝီႴႽၗ္႐ၻ႕ჯ႟ၟမဌ"))]);
         this._9acd223e141497d8d7d7be4c = this._b472d80cc1bbf593ec1de389;
         super();
      }
      
      public function _bdc65a6326e91a3b031ee7c7() : Boolean
      {
         return this._a43618439352bc03017c3c39();
      }
      
      public function _4670bff38705895c648e18bd(param1:Point) : Boolean
      {
         return this._932bcd14906ee6abb2c18abc(param1,false,false);
      }
      
      public function _932bcd14906ee6abb2c18abc(param1:Point, param2:Boolean = false, param3:Boolean = false) : Boolean
      {
         return this._9acd223e141497d8d7d7be4c(int(param1.x + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剻劀剹勡勰劮列勏刾剚劆劾刾勹刅劒剶刴剷刊剅勔剰剌","剸勜刘募刄劔功勧刜删刘剋劍别剤劋")),int(param1.y + _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ლვႿလၐၧჃჅ၂ၦၤჸႅၨၱလငၻჵဉႭ၎၆ၷ","ႩႨၾ႙იၻံႻჵჁၛ჌႔ဤၒႿ")));
      }
      
      public function isLakeHit(param1:Point) : Boolean
      {
         if(this._b6918d13f39135e8bf5c44b7 != null)
         {
            return this._ec03abdf01408fb25e856b04(this._b6918d13f39135e8bf5c44b7.getPixel32(param1.x,param1.y),param1) && GameSwf.currentLocationDialog._b24937139cc44ffe53f7fc23(param1.x,param1.y,this._82b441061f9e52c1141ca481) == false;
         }
         return false;
      }
      
      public function set target(param1:_08c120b706560fce9302bcab) : void
      {
         this._82b441061f9e52c1141ca481 = param1;
      }
      
      public function set speedMultiplier(param1:Number) : void
      {
         this._c954adfb112c54c94f3c96ae = param1;
      }
      
      public function _a43618439352bc03017c3c39() : Boolean
      {
         return this._1b886179b11b729cf140e224;
      }
      
      public function _db384801298e04376755aa5d() : Number
      {
         var _loc1_:Point = this._0eed6cf9725528eade14db92;
         if(this._82b441061f9e52c1141ca481.boat != null)
         {
            _loc1_ = this._82b441061f9e52c1141ca481.boat._4217c5d9593f8db7cbf2f890(_loc1_.clone());
            _loc1_.x = int(_loc1_.x * (-1416841360 ^ 0x1F45702A ^ 0x3B3E579C ^ -1879600990)) / (-1282660401 ^ 0x5AD3F153 ^ -459339020 ^ 0x0DC0DC0C);
            _loc1_.y = int(_loc1_.y * (0x66A19B83 ^ -712566010 ^ 0x28C76AF3 ^ -1679693294)) / (0x1F63DB99 ^ 0x0F9553E5 ^ -269737878 ^ -15030158);
         }
         if(_loc1_.x > (0x6205C1FE ^ -867923298 ^ -2070114870 ^ 0x2ADDC6AA))
         {
            if(_loc1_.y > (-92652546 ^ 0x54895AC3 ^ 0x409553CE ^ -295292173))
            {
               return 0x08E27907 ^ -298963527 ^ -1044128044 ^ 0x270F8A47;
            }
            if(_loc1_.y < (-48314691 ^ -1992251581 ^ 0x2646DF6B ^ 0x5218BE95))
            {
               return -1660296696 ^ 0x20DB0A0A ^ 0x5BDBFE20 ^ -435611879;
            }
            return -1603691435 ^ 0x06285A8A ^ -762002142 ^ 0x74D503FD;
         }
         if(_loc1_.x < (-1055983923 ^ 0x2EA57F72 ^ -623366056 ^ 0x3573B9E7))
         {
            if(_loc1_.y > (0x1EA91087 ^ 0x0C027964 ^ -1269355745 ^ -1493417220))
            {
               return 0x49FAB496 ^ -2095486664 ^ -685233927 ^ 0x1DCBF5D0;
            }
            if(_loc1_.y < (0x13315864 ^ 0x26A9E8A3 ^ -1719993142 ^ -1394455539))
            {
               return 0x5E5E962A ^ -174889507 ^ -294681850 ^ 0x45A27010;
            }
            return -1537633358 ^ 0x2245DFBA ^ 0x1FB3D632 ^ -1716544882;
         }
         if(_loc1_.y > (-849964124 ^ 0x49C52FC1 ^ 0x0DA739DE ^ -1993046597))
         {
            return 0x50D4E6B9 ^ -342123632 ^ 0x0E810A2E ^ -1244760227;
         }
         if(_loc1_.y < (-224635839 ^ -450454755 ^ 0x487CD694 ^ 0x5FC619C8))
         {
            return -1244195242 ^ 0x51C7400E ^ 0x78DEC19C ^ -1664182582;
         }
         return NaN;
      }
      
      public function _41828d220a31759b508cc08d(param1:Function) : void
      {
         var _loc2_:int = -1975678434 ^ 0x51BFB951 ^ -1419402644 ^ -15254964;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-478400239 ^ 0x79C0137C ^ -799201717 ^ -988696758))
            {
               case 0:
                  this._9acd223e141497d8d7d7be4c = this._b472d80cc1bbf593ec1de389;
                  _loc2_ = -552158349 ^ 0x554D08C1 ^ 0x540EB9B9 ^ 0x51A5A166;
                  break;
               case 1:
                  return;
               case 2:
                  this._9acd223e141497d8d7d7be4c = param1;
                  _loc2_ = 0x0109B418 ^ 0x5434201D ^ 0x10C45B66 ^ -905354226;
                  break;
               case 3:
                  if(param1 != null)
                  {
                     _loc2_ = 0x7646FD29 ^ -1826140276 ^ -544650366 ^ -1256697271;
                  }
                  else
                  {
                     _loc2_ = -1085586347 ^ 0x43786DCF ^ 0x21641BD9 ^ 0x52A7992F;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _97a5a7e3bc4bf69d61e7aef7(param1:BitmapData, param2:BitmapData, param3:Number, param4:Number) : void
      {
         this._0559fbe74e182d8b6a6502b0 = param1;
         this._b6918d13f39135e8bf5c44b7 = param2;
         this._e0306c341c130ce8582050f5 = param3;
         this._2b36f49eb14303e12f8ff9f7 = param4;
      }
      
      public function update(param1:uint, param2:uint, param3:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Point = null;
         this._1b886179b11b729cf140e224 = false;
         if(this._82b441061f9e52c1141ca481.boat != null)
         {
            _loc4_ = this._87df3f3c6905e9babbe34aec.clone();
            _loc4_ = this._82b441061f9e52c1141ca481.boat._4cc2f4f14a4a0f3b86eab22b(_loc4_);
            _loc4_.x = int(_loc4_.x * (0x69D04D86 ^ -371908181 ^ -1818562680 ^ 0x139F83C1)) / (0x26B12573 ^ -1093277397 ^ 0x65C2CFF6 ^ -39451702);
            _loc4_.y = int(_loc4_.y * (0x7C4CE124 ^ -1484175711 ^ -724960536 ^ 0x0F0C5D09)) / (-1174729844 ^ 0x38955B76 ^ -2029385930 ^ 0x066457A8);
         }
         else
         {
            _loc4_ = this._87df3f3c6905e9babbe34aec;
         }
         var _loc8_:Number = _loc4_.x;
         var _loc9_:Number = _loc4_.y;
         this._0eed6cf9725528eade14db92.x = _loc8_;
         this._0eed6cf9725528eade14db92.y = _loc9_;
         if(_loc8_ != (-667416611 ^ -814655504 ^ -922390684 ^ -565428407) && _loc9_ != (-532530504 ^ -1562520951 ^ -1492414144 ^ -443254415))
         {
            _loc5_ = this._0eed6cf9725528eade14db92.x * SIN_45 * param3;
            _loc6_ = this._0eed6cf9725528eade14db92.y * SIN_45 * param3;
         }
         else
         {
            _loc5_ = this._0eed6cf9725528eade14db92.x * param3;
            _loc6_ = this._0eed6cf9725528eade14db92.y * param3;
         }
         var _loc10_:* = 0x2EA82B43 ^ -745086312 ^ -366849373 ^ 0x171C9B79;
         while((_loc5_ != (0x769BAB8D ^ 0xCCB3F6 ^ 0x60ED64D0 ^ 0x16BA7CAB) || _loc6_ != (-1889122566 ^ 0x6BFBDEA6 ^ -1155671729 ^ 0x5F804113)) && _loc10_ > (-1268713338 ^ 0x40471909 ^ -1270638601 ^ 0x40647678))
         {
            _loc10_--;
            if(this._210505d46669c9637f968f09(this._82b441061f9e52c1141ca481.position.x + _loc5_,this._82b441061f9e52c1141ca481.position.y + _loc6_) == false || Config.OBSTACLE_CHEAT)
            {
               this._82b441061f9e52c1141ca481.position.x += _loc5_;
               this._82b441061f9e52c1141ca481.position.y += _loc6_;
               if(_loc5_ != (-527717628 ^ 0x62AFDD78 ^ -1505710572 ^ 0x2464D868) || _loc6_ != (-1462965031 ^ -1660364981 ^ 0x5D9031FF ^ 0x68540A6D))
               {
                  this._1b886179b11b729cf140e224 = true;
               }
               break;
            }
            if(this._82b441061f9e52c1141ca481.boat != null)
            {
               _loc7_ = new Point(this._87df3f3c6905e9babbe34aec.x,this._87df3f3c6905e9babbe34aec.y);
               this._82b441061f9e52c1141ca481._14fd2868d3710a33e01faa02(_loc7_.x,_loc7_.y);
            }
            else
            {
               this._82b441061f9e52c1141ca481._14fd2868d3710a33e01faa02(_loc5_,_loc6_);
            }
         }
      }
      
      public function _93eadffa54c4b1bfff0374ab(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         this._87df3f3c6905e9babbe34aec.x = param1 * maxSpeed * this._c954adfb112c54c94f3c96ae;
         if(param1 > (-34697705 ^ 0x09FFB019 ^ 0x72CC5F6F ^ -2032311967) && this._0eed6cf9725528eade14db92.x < (-1981295693 ^ -1127449569 ^ 0x111A1D42 ^ 0x2431B2EE) || param1 < (0x3D9AB8E1 ^ -1099238416 ^ -1894513802 ^ 0x0CF44867) && this._0eed6cf9725528eade14db92.x > (0x6D529E4D ^ -494321407 ^ 0x5411C04E ^ -607510782))
         {
            this._0eed6cf9725528eade14db92.x = -1069214132 ^ 0x0D7E2B21 ^ 0x6EE3B4A8 ^ -1546090043;
         }
         if(param2 > (0x06A3B951 ^ -1457848351 ^ 0x2F926994 ^ -2144653532) && this._0eed6cf9725528eade14db92.y < (0x2E82805C ^ -1843837033 ^ -831451477 ^ 0x72EAC960) || param2 < (-1399044088 ^ 0x41A61ED2 ^ 0x6A775907 ^ -2024992803) && this._0eed6cf9725528eade14db92.y > (0x7318B11E ^ -678924909 ^ 0x35B13659 ^ -1860048172))
         {
            this._0eed6cf9725528eade14db92.y = -1390136592 ^ -653885267 ^ -416903999 ^ -1828438372;
         }
         this._87df3f3c6905e9babbe34aec.y = param2 * maxSpeed * this._c954adfb112c54c94f3c96ae;
         if(param3 && param1 == (0x641D06CC ^ 0x40B2EA72 ^ -2147416218 ^ -1532040232) && param2 == (0x5A08DCCC ^ 0x697C393D ^ 0x1C35456F ^ 0x2F41A09E))
         {
            this._0eed6cf9725528eade14db92.x = -1840547687 ^ 0x1BE4185E ^ 0x4F472601 ^ -957856058;
            this._0eed6cf9725528eade14db92.y = -745599900 ^ -1440456087 ^ -117811977 ^ -2125382918;
         }
      }
      
      private function _210505d46669c9637f968f09(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Point = null;
         for each(_loc3_ in this.testPoints)
         {
            if(this._9acd223e141497d8d7d7be4c(int(param1 + _loc3_.x + _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჹႈ჋ႈဢღჾႠგဠႬဠၱႫ၈ိႻၿႷ჏ၵჩჩ၏","იၱ၄ႨဖဩႶს႟ဩေ၏ჵဝႡဧ")),int(param2 + _loc3_.y + _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဧ၇႓ၟၑဩၮငჴှ჆ჵႷჰႅဤႹႩჂ်႗ღ჉ၜ","႗ၽၢ႞჆၄ႨႛჇႹჲႉညၦ჻ၶ"))))
            {
               return true;
            }
         }
         return false;
      }
      
      private function _b472d80cc1bbf593ec1de389(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         if(this._0559fbe74e182d8b6a6502b0)
         {
            if(this._82b441061f9e52c1141ca481.onRaft)
            {
               return this._82b441061f9e52c1141ca481.raft.rectangle.contains(param1,param2) == false;
            }
            if(param1 <= this._e0306c341c130ce8582050f5 && param2 <= this._2b36f49eb14303e12f8ff9f7)
            {
               _loc4_ = this._0559fbe74e182d8b6a6502b0.getPixel32(param1,param2) > (-205420022 ^ 0x3DB7F107 ^ 0x52AC120A ^ -1675258120);
               _loc5_ = GameSwf.currentLocationDialog._b24937139cc44ffe53f7fc23(param1,param2,this._82b441061f9e52c1141ca481);
               return _loc4_ || _loc5_;
            }
            return true;
         }
         return false;
      }
      
      public function disable() : void
      {
      }
      
      private function _ec03abdf01408fb25e856b04(param1:uint, param2:Point) : Boolean
      {
         var _loc3_:Boolean = false;
         _loc3_ = param1 > (-517794355 ^ 0x3F07C6F7 ^ 0x6C83A57C ^ -1302820423) && !GameSwf.currentLocationDialog.raftRectangle.containsPoint(param2);
         if(_loc3_ && this._82b441061f9e52c1141ca481.onRaft)
         {
            _loc3_ = GameSwf.currentLocationDialog.landingMap.getPixel32(param2.x,param2.y) <= (-1898894131 ^ 0x2F153C55 ^ -391112969 ^ 0x498BF990);
         }
         return _loc3_ && !GameSwf.currentLocationDialog.hitTestBoats(param2.x,param2.y);
      }
      
      public function destroy() : void
      {
         this._82b441061f9e52c1141ca481 = null;
         this._0559fbe74e182d8b6a6502b0 = null;
         this._9acd223e141497d8d7d7be4c = null;
      }
      
      public function stop() : void
      {
      }
   }
}

