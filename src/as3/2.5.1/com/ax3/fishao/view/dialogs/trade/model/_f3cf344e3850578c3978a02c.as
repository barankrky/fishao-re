package com.ax3.fishao.view.dialogs.trade.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.debug.Debug;
   import flash.utils.Dictionary;
   
   public class _f3cf344e3850578c3978a02c
   {
      
      private var _ee956299b5d1fd2ed1731315:int;
      
      private var _6dda8f9ac0d909236eb43aa4:int;
      
      private var _0464011d26b5a1bf90231182:Dictionary;
      
      private var _651783745cb3128d8dd4984d:Array;
      
      private var _53b519d53edb790cffd2b971:String;
      
      private var _44ad2c0f8eaec24dd52623c5:_394d2d1e72d06151d1adc157;
      
      private var _f6c9cf2c5307abdeaeab0011:_394d2d1e72d06151d1adc157;
      
      public function _f3cf344e3850578c3978a02c()
      {
         super();
         this.init();
      }
      
      public static function _c13c97d491bda8b424e4f187(param1:_67282af25befe9778e5c8dd1, param2:int) : String
      {
         var _loc3_:String = "";
         switch(param1)
         {
            case _67282af25befe9778e5c8dd1.BAIT:
               §§push(0x103F949A ^ 0x57F2335C ^ -1718790235 ^ -566169501);
               break;
            case _67282af25befe9778e5c8dd1.ROD:
               §§push(0x522B8E0A ^ 0x08BC04E0 ^ -465780886 ^ -1096075903);
               break;
            case _67282af25befe9778e5c8dd1.CLOTHE:
               §§push(-33158793 ^ 0x04F48F7E ^ 0x1903EDAD ^ -470717530);
               break;
            case _67282af25befe9778e5c8dd1.FISH:
               §§push(-685626609 ^ 0x626B38E1 ^ -1882977286 ^ 0x3A8D1817);
               break;
            case _67282af25befe9778e5c8dd1.FISH_SHINY:
               §§push(0x763AED6A ^ -1531837639 ^ 0x2743DE6A ^ -171233219);
               break;
            case _67282af25befe9778e5c8dd1.DECORATION:
               §§push(0x70927F3D ^ 0x2E5CC025 ^ -669209016 ^ -2033053355);
               break;
            case _67282af25befe9778e5c8dd1.FISHBUCKS:
               §§push(-1873759147 ^ -1754629352 ^ -2090612278 ^ -2074540415);
               break;
            case _67282af25befe9778e5c8dd1.FOSSIL:
               §§push(-1390591478 ^ -1457319802 ^ 0x47A7A3CF ^ 0x4399F144);
               break;
            case _67282af25befe9778e5c8dd1.FRUIT:
               §§push(-1097424649 ^ -124260565 ^ -2085564828 ^ -978222672);
               break;
            case _67282af25befe9778e5c8dd1.FISHBOX:
               §§push(-625511618 ^ 0x2C238855 ^ -1139975253 ^ 0x4A99A0C9);
               break;
            case _67282af25befe9778e5c8dd1.FISH_RADAR:
               §§push(0x7FC278CA ^ -1133264133 ^ 0x229BC4D3 ^ -517308696);
               break;
            case _67282af25befe9778e5c8dd1.FLOAT:
               §§push(0x27EDB350 ^ -1938531931 ^ -1947809912 ^ 0x207F2D76);
               break;
            case _67282af25befe9778e5c8dd1.LUCK_POTION:
               §§push(0x216F753E ^ -1951287737 ^ 0x23891512 ^ -1990732185);
               break;
            case _67282af25befe9778e5c8dd1.MAGIC_WATCH:
               §§push(0x1C2BBD5E ^ -2024403762 ^ 0x0182B8C3 ^ -1694561954);
               break;
            case _67282af25befe9778e5c8dd1.EXP_BOOSTER:
               §§push(-1797688525 ^ -145759700 ^ 0x0B0DBAD8 ^ 0x689B2BC9);
               break;
            case _67282af25befe9778e5c8dd1.SHINY_POTION:
               §§push(-472752582 ^ -1520895627 ^ 0x02015EB3 ^ 0x448BF9F3);
               break;
            case _67282af25befe9778e5c8dd1.POWER_BOOSTER:
               §§push(-2035529251 ^ -1649336383 ^ 0x27BEB078 ^ 0x3CA3E674);
               break;
            case _67282af25befe9778e5c8dd1.OTHER:
               §§push(0x563C860D ^ 0x6F138E0A ^ -58031046 ^ -979006420);
               break;
            default:
               §§push(-1075795613 ^ 0x2622496A ^ -227390021 ^ 0x6BB0ADA0);
         }
         switch(§§pop())
         {
            case 0:
               _loc3_ = _bbfe24a3df7967d705072009.ETIT_BAIT;
               break;
            case 1:
               _loc3_ = _bbfe24a3df7967d705072009.ETIT_ROD;
               break;
            case 2:
               _loc3_ = _bbfe24a3df7967d705072009.ETIT_LOOK;
               break;
            case 3:
            case 4:
               _loc3_ = _bbfe24a3df7967d705072009.ETIT_FISH;
               break;
            case 5:
               _loc3_ = _bbfe24a3df7967d705072009.ETIT_DECORATION;
               break;
            case 6:
               _loc3_ = _bbfe24a3df7967d705072009.ETIT_FISHBUCKS;
               break;
            case 7:
               _loc3_ = _bbfe24a3df7967d705072009.ETIT_FOSSIL;
               break;
            case 8:
               _loc3_ = _bbfe24a3df7967d705072009.ETIT_FRUIT;
               break;
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
               _loc3_ = _bbfe24a3df7967d705072009.ETIT_OTHER;
               break;
            case 17:
               if(param2 == _67282af25befe9778e5c8dd1.ID_SHELL)
               {
                  _loc3_ = _bbfe24a3df7967d705072009.ETIT_SHELL;
               }
               else
               {
                  _loc3_ = _bbfe24a3df7967d705072009.ETIT_OTHER;
               }
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揭揷捷提挾指揁揽挆推揯掶挵挳捱掼捲捸挚挷捦捓揆捠捪据捬揯捎揤揩掕挫挺掕损控捶挆掕捙捕捀揇挽捔掆握捉挜持挭挞捑掻揮捷掆挙捞捇揋揟捳挵捓掏揬掁掜捌揧揜掆捱捹掾揦掉捋揕挝揾据掞掛掜捣掲揇接揚揭按措掗揩捯挢挓挾捭揅揟捫捻掳捶掀揱挢挽挘揢掾揘换捺捣掖掲挝揋揕揢挻揧捀捗揭挅掺捻捯揟捷揵揁揟揲挡掯掴捅捊掑揻捐掣捤振换挬捕挐挜捄掞揢捋挘挝捣捊按揦掜挌捆揅掆捫捈捝掋揽掛挩捰推掅掗揅挕採捿挥挠指掅掁揬挂掏捺揕捾挈揙挿","揤捙採掷指挤掐挕持挰揊捉挄掰捊挖") + param1);
         }
         return _loc3_;
      }
      
      public function set tradeSidePlayer(param1:_394d2d1e72d06151d1adc157) : void
      {
         this._44ad2c0f8eaec24dd52623c5 = param1;
      }
      
      public function set tradeSideTarget(param1:_394d2d1e72d06151d1adc157) : void
      {
         this._f6c9cf2c5307abdeaeab0011 = param1;
      }
      
      public function get tradeSidePlayer() : _394d2d1e72d06151d1adc157
      {
         return this._44ad2c0f8eaec24dd52623c5;
      }
      
      public function get tradeSideTarget() : _394d2d1e72d06151d1adc157
      {
         return this._f6c9cf2c5307abdeaeab0011;
      }
      
      public function set offerItemsLimit(param1:int) : void
      {
         var _loc2_:int = -212517284 ^ 0x53942F74 ^ 0x0F9D7A75 ^ -583092319;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-420118747 ^ 0x1CAD5617 ^ 0x317AB702 ^ -1186970932))
            {
               case 0:
                  if(param1 == this._6dda8f9ac0d909236eb43aa4)
                  {
                     _loc2_ = -329511284 ^ -1852353143 ^ 0x79B08DFF ^ 0x76190A07;
                  }
                  else
                  {
                     _loc2_ = -1712660120 ^ -1309421323 ^ -576213986 ^ -2015608451;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._6dda8f9ac0d909236eb43aa4 = param1;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set tradeId(param1:int) : void
      {
         this._ee956299b5d1fd2ed1731315 = param1;
      }
      
      public function get tradeId() : int
      {
         return this._ee956299b5d1fd2ed1731315;
      }
      
      public function get tradeItemsDictionary() : Dictionary
      {
         return this._0464011d26b5a1bf90231182;
      }
      
      public function set tradeItemsDictionary(param1:Dictionary) : void
      {
         this._0464011d26b5a1bf90231182 = param1;
      }
      
      public function set tradeItemsTypeList(param1:Array) : void
      {
         this._651783745cb3128d8dd4984d = param1;
      }
      
      public function get tradeItemsTypeList() : Array
      {
         return this._651783745cb3128d8dd4984d;
      }
      
      public function set tradeItemsTypeCurrent(param1:String) : void
      {
         this._53b519d53edb790cffd2b971 = param1;
      }
      
      private function init() : void
      {
         this._ee956299b5d1fd2ed1731315 = 0x0C039D01 ^ -1797166301 ^ -1243036718 ^ -755643889;
         this._0464011d26b5a1bf90231182 = new Dictionary(true);
         this._651783745cb3128d8dd4984d = [];
         this._53b519d53edb790cffd2b971 = "";
         this._6dda8f9ac0d909236eb43aa4 = -1913583195 ^ -1173602428 ^ 0x6E42A515 ^ -1505727285;
      }
      
      public function _a29ed57364e972f40eacc918(param1:_664206d546fdcb718f944b31) : void
      {
         var _loc2_:_664206d546fdcb718f944b31 = null;
         var _loc3_:_664206d546fdcb718f944b31 = null;
         var _loc4_:Array = this._0464011d26b5a1bf90231182[this._53b519d53edb790cffd2b971];
         for each(_loc2_ in _loc4_)
         {
            if(_loc2_.id == param1.id && _loc2_.type == param1.type)
            {
               if(_loc2_.quantity == param1.quantity)
               {
                  _loc4_.splice(_loc4_.indexOf(_loc2_),-938343448 ^ -1329832150 ^ 0x038664AB ^ 0x7B283868);
               }
               else
               {
                  _loc2_.quantity -= param1.quantity;
               }
               if(param1.type.isQuantitySeparable || param1.type == _67282af25befe9778e5c8dd1.DECORATION)
               {
                  for each(_loc3_ in this._44ad2c0f8eaec24dd52623c5.items)
                  {
                     if(param1.id == _loc3_.id && param1.type == _loc3_.type)
                     {
                        _loc3_.quantity += param1.quantity;
                        param1 = null;
                        break;
                     }
                  }
               }
               break;
            }
         }
         if(param1 != null)
         {
            this._44ad2c0f8eaec24dd52623c5.items.push(param1);
         }
         if(this._44ad2c0f8eaec24dd52623c5.items.length > this._6dda8f9ac0d909236eb43aa4)
         {
            this._0b6d97ecc581214d8d9cbdd5(this._44ad2c0f8eaec24dd52623c5.items[0x182274D1 ^ 0x387885CB ^ 0x20BD3F05 ^ 0xE7CE1F]);
         }
         GameSwf.instance.managerTrade.updateOffer();
      }
      
      public function _0b6d97ecc581214d8d9cbdd5(param1:_664206d546fdcb718f944b31) : void
      {
         var _loc2_:_664206d546fdcb718f944b31 = null;
         this._44ad2c0f8eaec24dd52623c5.items.splice(this._44ad2c0f8eaec24dd52623c5.items.indexOf(param1),0x39848054 ^ -215281319 ^ -425425930 ^ 0x2C0B12FA);
         var _loc3_:String = _c13c97d491bda8b424e4f187(param1.type,param1.id);
         var _loc4_:Array = this._0464011d26b5a1bf90231182[_loc3_];
         if(param1.type.isQuantitySeparable || param1.type == _67282af25befe9778e5c8dd1.DECORATION)
         {
            for each(_loc2_ in _loc4_)
            {
               if(param1.id == _loc2_.id && param1.type == _loc2_.type)
               {
                  _loc2_.quantity += param1.quantity;
                  param1 = null;
                  break;
               }
            }
         }
         if(param1 != null)
         {
            _loc4_.push(param1);
         }
         GameSwf.instance.managerTrade.updateOffer();
      }
      
      public function _b6644d73e85345bbc07c1d93(param1:String) : _394d2d1e72d06151d1adc157
      {
         var _loc2_:_394d2d1e72d06151d1adc157 = null;
         switch(param1)
         {
            case this._44ad2c0f8eaec24dd52623c5.login:
               §§push(-1122105163 ^ -1404517644 ^ -1361878189 ^ -1081759470);
               break;
            case this._f6c9cf2c5307abdeaeab0011.login:
               §§push(-915700239 ^ 0x51408DC0 ^ 0x7344C161 ^ -344995503);
               break;
            default:
               §§push(-842127579 ^ 0x7E9BCFD7 ^ -50624487 ^ 0x4FAE60E9);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = this._44ad2c0f8eaec24dd52623c5;
               break;
            case 1:
               _loc2_ = this._f6c9cf2c5307abdeaeab0011;
         }
         return _loc2_;
      }
      
      public function _2152ca7a57e44c68690fd30c() : void
      {
         this._44ad2c0f8eaec24dd52623c5._2c24317c979138ebb4b66a70();
         this._f6c9cf2c5307abdeaeab0011._2c24317c979138ebb4b66a70();
      }
   }
}

