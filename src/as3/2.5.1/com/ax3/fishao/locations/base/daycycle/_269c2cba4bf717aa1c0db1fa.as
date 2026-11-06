package com.ax3.fishao.locations.base.daycycle
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations._10aec915df137be255fad9fc;
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import com.ax3.fishao.locations.objects._296ee54b441acfe4f3a01508;
   import com.ax3.fishao.managers._de89e27ae8b90e70822b4fad;
   import com.ax3.fishao.utils._9c52777792d76fde110d23c0;
   import com.ax3.fishao.vars.app;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils._0ce7a4d99e17666ff0e19ce6;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.timer._33dd41a12065671be9311587;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import protocol.sr.dayState.TimeOfDayResp;
   
   public class _269c2cba4bf717aa1c0db1fa
   {
      
      public static var isDayState:int;
      
      public static var toSunSet:int;
      
      public static var toSunRise:int = 0x7E9D4286 ^ -283458964 ^ 0x6A9F409C ^ -82263946;
      
      private var _5b93c1557cc121cee75baa44:_33dd41a12065671be9311587;
      
      protected var _isEnabled:Boolean;
      
      private var _ebe1913b29e810d28471f1c8:Vector.<_296ee54b441acfe4f3a01508>;
      
      private var _db839906b711cb86264932b0:Dictionary;
      
      private var _84f9e7441738220599df8533:Dictionary;
      
      private var _5571147813b0332f55a7547a:int;
      
      private var _53b4f90f8276e471743e87a6:Number;
      
      private var _be1ec313a2864f91d33c705d:_8ba2040e72b17d89d7e77dca;
      
      private var _36c2679bec37086171dd97f8:_8ba2040e72b17d89d7e77dca;
      
      private var _9d1ee8a9be6aa941b05547e1:_8ba2040e72b17d89d7e77dca;
      
      private var _9c216b8e545a29be149c7729:Vector.<DisplayObject>;
      
      private var _2f19a00c91f6d2a94f333751:Vector.<DisplayObject>;
      
      private var _4ada218a0d4cf28ae8ea8fab:String;
      
      private var _64ffc1a7432a5efd0909f01e:uint;
      
      public function _269c2cba4bf717aa1c0db1fa()
      {
         super();
         this.init();
      }
      
      public function set lakesLayer(param1:DisplayObject) : void
      {
         this._be1ec313a2864f91d33c705d._cd00d97cac65b4dc892b5324(param1);
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this._isEnabled = param1;
      }
      
      public function set state(param1:String) : void
      {
         if(this._4ada218a0d4cf28ae8ea8fab == param1 || !this._isEnabled)
         {
            return;
         }
         this._4ada218a0d4cf28ae8ea8fab = param1;
         this._63bc7136da541eadeb605e55();
      }
      
      private function _311b33b2df14fa4463c5b2d2(param1:Event) : void
      {
         this.state = _c5e7216c18d78efd33e7d176.EDCS_DAY;
      }
      
      private function _a6748d5559c266f329fe782a() : void
      {
         this._63a72755139c3d1f9e687d43 = _08dcc3ec9573358db49d7899.DAY_TO_NIGHT;
      }
      
      private function _d76cd631d72afc340e5f4765() : void
      {
         this._63a72755139c3d1f9e687d43 = _08dcc3ec9573358db49d7899.NIGHT_TO_DAY;
      }
      
      private function init() : void
      {
         Cc.addSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揂揚揹挖掃掄掃捂捷捍插揶掱揜挧挜揄挺","掲捇捿揤掞掘掵揊捑挌挫揹捽捌持挪"),this._a6748d5559c266f329fe782a);
         Cc.addSlashCommand(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劸劼剟剻勐勑勴剜剒劬勶努劻剐","劶剳列刿勚劾剛刍刞剂勈刲刺刽剆勃"),this._d76cd631d72afc340e5f4765);
         this._5571147813b0332f55a7547a = 0x287DC142 ^ -1671576856 ^ 0x4C1E8659 ^ 0x07C17A0C;
         this._53b4f90f8276e471743e87a6 = 0x6214D98F ^ -1161984514 ^ -1481419921 ^ 0x7F1A0F1E;
         this._9d1ee8a9be6aa941b05547e1 = new _8ba2040e72b17d89d7e77dca();
         this._36c2679bec37086171dd97f8 = new _8ba2040e72b17d89d7e77dca();
         this._be1ec313a2864f91d33c705d = new _8ba2040e72b17d89d7e77dca();
         this._2f19a00c91f6d2a94f333751 = new Vector.<DisplayObject>(0x2C809C98 ^ -1240303991 ^ 0x2FF8DD46 ^ -1251330217);
         this._9c216b8e545a29be149c7729 = new Vector.<DisplayObject>();
         this._ebe1913b29e810d28471f1c8 = new Vector.<_296ee54b441acfe4f3a01508>();
         this._db839906b711cb86264932b0 = new Dictionary();
         this._84f9e7441738220599df8533 = new Dictionary();
         this._isEnabled = true;
         this._5b93c1557cc121cee75baa44 = new _33dd41a12065671be9311587();
         this._f5f27b48e92f7d8f5ac769a9();
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,app.performanceManager,_de89e27ae8b90e70822b4fad.DAY_NIGHT_OFF,this._311b33b2df14fa4463c5b2d2);
      }
      
      private function _fcfcd06305f9bea4f932abd5(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(this._5b93c1557cc121cee75baa44 == null)
         {
            return;
         }
         var _loc2_:TimeOfDayResp = param1 as TimeOfDayResp;
         if(_loc2_ == null)
         {
            return;
         }
         isDayState = _loc2_.getIntData(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捆捾挊揩捖揂揞捄掆掌挩掂掴挶挑掞掼掳挻挆挍揯捸捵","捺掻捌揾掤掝揘挠捸揹挒挪掞授掍掂"));
         this._f5f27b48e92f7d8f5ac769a9();
         this.state = isDayState ? _c5e7216c18d78efd33e7d176.EDCS_DAY : _c5e7216c18d78efd33e7d176.EDCS_NIGHT;
      }
      
      private function _f5f27b48e92f7d8f5ac769a9() : void
      {
         if(this._5b93c1557cc121cee75baa44 == null)
         {
            return;
         }
         var _loc1_:Number = isDayState ? toSunSet : toSunRise;
         var _loc2_:_0ce7a4d99e17666ff0e19ce6 = new _0ce7a4d99e17666ff0e19ce6(_dfa25706e58a240c1e33e5c6.locationExtension._5899c0b5ac6e593c9ce1ae96,this._fcfcd06305f9bea4f932abd5);
         this._5b93c1557cc121cee75baa44._bc1d2c0c359bffe4ef99cfee(_loc1_,_loc2_);
      }
      
      private function set _63a72755139c3d1f9e687d43(param1:int) : void
      {
         var _loc2_:int = 0x79511966 ^ 0x1A485B06 ^ 0x0FC2351C ^ -1724513377;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x2545B483 ^ -676517968 ^ -1166766003 ^ -1116637281))
            {
               case 0:
                  if(this._5571147813b0332f55a7547a == (0x6557497F ^ -671544446 ^ -671670537 ^ -1700355083))
                  {
                     _loc2_ = 0x6228533B ^ -1582802807 ^ -1526191308 ^ -1822075808;
                  }
                  else
                  {
                     _loc2_ = -1885551943 ^ -663465182 ^ -602930412 ^ 0x7E15E666;
                  }
                  break;
               case 1:
                  this._5571147813b0332f55a7547a = param1;
                  return;
               case 2:
                  if(this._5571147813b0332f55a7547a == param1)
                  {
                     _loc2_ = 0x67AC5BE1 ^ -121015437 ^ 0x4B67EDBF ^ 0x21EFB1C9;
                  }
                  else
                  {
                     _loc2_ = -1570146680 ^ 0x585A7750 ^ 0x016229FA ^ 0x0EBC5CC3;
                  }
                  break;
               case 3:
                  this._1dbc07b000eda2960a88ef83();
                  _loc2_ = -286774118 ^ 0x08348D23 ^ -2039924014 ^ -1789333620;
                  break;
               case 4:
                  this._5b98428e1ff05bf8398bef17();
                  _loc2_ = 0x4B7298E4 ^ 0x49E6AD8C ^ -1199597214 ^ 0x4F06D8ED;
                  break;
               case 5:
                  return;
               case 6:
                  _loc2_ = -686311528 ^ 0x3C546141 ^ -43817836 ^ -473053523;
                  break;
               case 7:
                  if(param1 == _08dcc3ec9573358db49d7899.NIGHT_TO_DAY)
                  {
                     _loc2_ = -958487192 ^ 0x16FF288B ^ -1337738314 ^ -1785773385;
                  }
                  else
                  {
                     _loc2_ = -363152707 ^ -1671985437 ^ -1418361390 ^ 0x2895CD69;
                  }
                  break;
               case 8:
                  this._4ada218a0d4cf28ae8ea8fab = null;
                  _loc2_ = -1710578119 ^ -2001361009 ^ -1926497317 ^ 0x6A798E8D;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _1dbc07b000eda2960a88ef83() : void
      {
         this._4ada218a0d4cf28ae8ea8fab = _c5e7216c18d78efd33e7d176.EDCS_DAY;
         this._9d1ee8a9be6aa941b05547e1._cdef7669c395665e864c7a41();
         this._36c2679bec37086171dd97f8._cdef7669c395665e864c7a41();
         this._be1ec313a2864f91d33c705d._cdef7669c395665e864c7a41();
         _9c52777792d76fde110d23c0._85beba13680a4d2af8926bfa(this._2f19a00c91f6d2a94f333751,[]);
         _9c52777792d76fde110d23c0._85beba13680a4d2af8926bfa(this._9c216b8e545a29be149c7729,[]);
         this._acc327ea862d90f435e40718();
      }
      
      public function _5b98428e1ff05bf8398bef17() : void
      {
         var _loc1_:DisplayObject = null;
         this._4ada218a0d4cf28ae8ea8fab = _c5e7216c18d78efd33e7d176.EDCS_NIGHT;
         for each(_loc1_ in this._9c216b8e545a29be149c7729)
         {
            this._1a9fdb5e25ba45e5b7768db2(_loc1_);
         }
         _9c52777792d76fde110d23c0._85beba13680a4d2af8926bfa(this._2f19a00c91f6d2a94f333751,this._be1ec313a2864f91d33c705d.nightFilter);
         this._9d1ee8a9be6aa941b05547e1._aed610f81e806de6fe467d97();
         this._be1ec313a2864f91d33c705d._aed610f81e806de6fe467d97();
         this._acc327ea862d90f435e40718();
      }
      
      private function _1a9fdb5e25ba45e5b7768db2(param1:DisplayObject) : void
      {
         var _loc2_:int = 0x2C15A4FE ^ 0x5A62E586 ^ -2032381250 ^ 0x0191D718;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x49349D55 ^ 0x6D8B904E ^ -595987629 ^ 0x09FC3A96))
            {
               case 0:
                  if(param1.name == _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刴勱刲勴勆勴勡副刵剮劚分勬剳勂剻勭刖剾刲剽勨刷劊劂勊剳刨剔勪剭劓勖剤劶刑","劈劼劄创刕助劂勪別効剁剺剨剳剴剋"))
                  {
                     _loc2_ = -566682458 ^ -362292150 ^ 0x2F02D220 ^ -362359273;
                  }
                  else
                  {
                     _loc2_ = 0x031EBB48 ^ 0x02ED770A ^ -888010813 ^ 0x3BDB0F5E;
                  }
                  break;
               case 1:
                  if(param1 in this._db839906b711cb86264932b0)
                  {
                     _loc2_ = 0x78786692 ^ -1444249718 ^ 0x36D8FD03 ^ 0x167020C6;
                  }
                  else
                  {
                     _loc2_ = -1381611001 ^ -1683432230 ^ -41660101 ^ 0x3AB0033A;
                  }
                  break;
               case 2:
                  param1.filters = this._36c2679bec37086171dd97f8.nightFilter;
                  _loc2_ = -2063634428 ^ 0x705DA77B ^ 0x49AA7508 ^ 0x4C3266AD;
                  break;
               case 3:
                  param1.filters = this._db839906b711cb86264932b0[param1];
                  _loc2_ = -487710945 ^ 0x5F5DF053 ^ -112677818 ^ -1245607984;
                  break;
               case 4:
                  return;
               case 5:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _acc327ea862d90f435e40718() : void
      {
         var _loc1_:_296ee54b441acfe4f3a01508 = null;
         for each(_loc1_ in this._ebe1913b29e810d28471f1c8)
         {
            _loc1_.state = this._4ada218a0d4cf28ae8ea8fab;
         }
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         if(this._5571147813b0332f55a7547a == _08dcc3ec9573358db49d7899.NONE || this._5571147813b0332f55a7547a == (-1120848776 ^ -1191439627 ^ 0x237182C5 ^ -649897033))
         {
            return;
         }
         var _loc3_:Number = param1 - this._64ffc1a7432a5efd0909f01e;
         if(_loc3_ < (0x025EDA08 ^ -1823405104 ^ 0x5192CC68 ^ -1063445036))
         {
            return;
         }
         this._64ffc1a7432a5efd0909f01e = param1;
         var _loc4_:Number = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揃捒揥掇掎捻捓据掽捱推揚揱捂掊控揜揆挥挌揌捬挏揶","挘握捎推挙掹捥捞挕揙挘捉挝持挭揼");
         if(this._5571147813b0332f55a7547a == _08dcc3ec9573358db49d7899.DAY_TO_NIGHT)
         {
            this._53b4f90f8276e471743e87a6 += _loc4_;
         }
         else
         {
            this._53b4f90f8276e471743e87a6 -= _loc4_;
         }
         this._53b4f90f8276e471743e87a6 = limit(this._53b4f90f8276e471743e87a6,-1173734457 ^ 0x1AC682AB ^ 0x7CA2D83C ^ -596745904,0x44BD5554 ^ -1619109993 ^ 0x5C5ABCFF ^ -2019967427);
         this._984dbed55b8cb39d9d103fff();
         if(this._5571147813b0332f55a7547a == _08dcc3ec9573358db49d7899.DAY_TO_NIGHT && this._53b4f90f8276e471743e87a6 >= (-866505305 ^ -1356646773 ^ -1996591372 ^ -343444007))
         {
            this._5571147813b0332f55a7547a = _08dcc3ec9573358db49d7899.NONE;
            this._5b98428e1ff05bf8398bef17();
         }
         else if(this._5571147813b0332f55a7547a == _08dcc3ec9573358db49d7899.NIGHT_TO_DAY && this._53b4f90f8276e471743e87a6 <= (-491890032 ^ 0x14F75C97 ^ 0x1DAEE326 ^ -336075487) && _de89e27ae8b90e70822b4fad.CAN_CHANGE_DAY_NIGHT)
         {
            this._5571147813b0332f55a7547a = _08dcc3ec9573358db49d7899.NONE;
            this._1dbc07b000eda2960a88ef83();
         }
      }
      
      private function _984dbed55b8cb39d9d103fff() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:_296ee54b441acfe4f3a01508 = null;
         var _loc3_:Array = null;
         this._9d1ee8a9be6aa941b05547e1._68bb5ce7688967072d53242b(this._53b4f90f8276e471743e87a6);
         this._36c2679bec37086171dd97f8._68bb5ce7688967072d53242b(this._53b4f90f8276e471743e87a6);
         this._be1ec313a2864f91d33c705d._68bb5ce7688967072d53242b(this._53b4f90f8276e471743e87a6);
         this._9d1ee8a9be6aa941b05547e1._aed610f81e806de6fe467d97();
         this._be1ec313a2864f91d33c705d._aed610f81e806de6fe467d97();
         for each(_loc1_ in this._9c216b8e545a29be149c7729)
         {
            if(_loc1_.visible)
            {
               if(_loc1_ in this._84f9e7441738220599df8533)
               {
                  _loc3_ = this._db839906b711cb86264932b0[_loc1_];
                  _9c52777792d76fde110d23c0._aca02dabec9019b8f4707df9(_loc3_,this._84f9e7441738220599df8533[_loc1_],this._53b4f90f8276e471743e87a6);
                  _loc1_.filters = _loc3_;
               }
               else
               {
                  _loc1_.filters = this._36c2679bec37086171dd97f8.nightFilter;
               }
            }
         }
         for each(_loc2_ in this._ebe1913b29e810d28471f1c8)
         {
            _loc2_._442ddcb2727b8ddf77b91843(this._53b4f90f8276e471743e87a6);
         }
      }
      
      public function _92c9d577ac680f24db415275(param1:String, param2:DisplayObject) : void
      {
         switch(param1)
         {
            case _77ca96a94affdf1e9d31698c.EDOT_FILTER_NIGHT_TREE:
               §§push(0x1F866357 ^ -1031864807 ^ 0x366B5F8F ^ -342637887);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_FILTER_NIGHT_GROUND:
               §§push(-1993525443 ^ 0x3A041122 ^ 0x0B35B5CF ^ -1206086703);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_FILTER_NIGHT_LAKE:
               §§push(-1359946593 ^ 0x2D33CF53 ^ 0x18F29491 ^ -1691252897);
               break;
            default:
               §§push(0x399B388A ^ -171016479 ^ 0x0F448CF6 ^ -1022244194);
         }
         switch(§§pop())
         {
            case 0:
               param2.parent.removeChild(param2);
               this._36c2679bec37086171dd97f8.nightFilter = _9c52777792d76fde110d23c0._c08b9d50de93ee9df95de516(param2);
               break;
            case 1:
               this._9d1ee8a9be6aa941b05547e1.nightFilter = _9c52777792d76fde110d23c0._c08b9d50de93ee9df95de516(param2);
               break;
            case 2:
               param2.parent.removeChild(param2);
               this._be1ec313a2864f91d33c705d.nightFilter = _9c52777792d76fde110d23c0._c08b9d50de93ee9df95de516(param2);
               break;
            default:
               Debug.assert(false);
         }
      }
      
      public function _91a21a458e77847fc1b8ecc5(param1:_10aec915df137be255fad9fc) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         if(param1 in this._db839906b711cb86264932b0)
         {
            _loc3_ = this._db839906b711cb86264932b0[param1];
            this._db839906b711cb86264932b0[param1] = null;
            delete this._db839906b711cb86264932b0[param1];
            _loc4_ = this._84f9e7441738220599df8533[param1];
            this._84f9e7441738220599df8533[param1] = null;
            delete this._84f9e7441738220599df8533[param1];
         }
         var _loc5_:Vector.<DisplayObject> = param1._7aa00ab6e8c1c792ca866dec();
         for each(_loc2_ in _loc5_)
         {
            if(_loc3_ != null)
            {
               this._db839906b711cb86264932b0[_loc2_] = _loc3_;
               this._84f9e7441738220599df8533[_loc2_] = _loc4_;
            }
            this._cd00d97cac65b4dc892b5324(_loc2_);
         }
      }
      
      public function _81dcdd9695843825ebcd94c9(param1:Array, param2:DisplayObject, param3:Object = null) : void
      {
         if(param1 == null || param1.length == (-968554129 ^ -686181294 ^ 0x70E66666 ^ 0x61BADB5B))
         {
            return;
         }
         if(param3 == null)
         {
            param3 = param2;
         }
         this._db839906b711cb86264932b0[param3] = param1;
         this._84f9e7441738220599df8533[param3] = _9c52777792d76fde110d23c0._6b85eafdbaf608366d48da90(param1);
      }
      
      public function _c1284069d5114be7c54fa362(param1:_296ee54b441acfe4f3a01508) : void
      {
         this._ebe1913b29e810d28471f1c8.push(param1);
         this._cd00d97cac65b4dc892b5324(param1);
      }
      
      public function _cd00d97cac65b4dc892b5324(param1:DisplayObject) : void
      {
         var _loc2_:int = 0x45495790 ^ -156205272 ^ -1866816153 ^ -894871653;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x0E086699 ^ 0x54ED6116 ^ 0x410783DF ^ -234332651))
            {
               case 0:
                  this._1a9fdb5e25ba45e5b7768db2(param1);
                  _loc2_ = 0x32D41AFB ^ 0x3442AE08 ^ -1801632630 ^ 0x7BE12A3E;
                  break;
               case 1:
                  this._9c216b8e545a29be149c7729.push(param1);
                  if(this._4ada218a0d4cf28ae8ea8fab == _c5e7216c18d78efd33e7d176.EDCS_NIGHT)
                  {
                     _loc2_ = -2119663085 ^ -149007119 ^ 0x482B20D6 ^ -680055695;
                  }
                  else
                  {
                     _loc2_ = 0x0C1A7C44 ^ 0x4A666724 ^ 0x09A5D3BF ^ -1506602344;
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
      
      public function _f0b680965f9a5238045064d5(param1:DisplayObject) : void
      {
         this._2f19a00c91f6d2a94f333751.push(param1);
      }
      
      public function _754eda0de238659164fdbf55(param1:DisplayObject) : void
      {
         this._9d1ee8a9be6aa941b05547e1._cd00d97cac65b4dc892b5324(param1);
      }
      
      public function _63bc7136da541eadeb605e55() : void
      {
         var _loc1_:int = -929606435 ^ -1557542957 ^ -2092729009 ^ -2035670708;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1114255044 ^ 0x66AE11EE ^ 0x2ACC2FA8 ^ -1616895881))
            {
               case 0:
                  if(this._4ada218a0d4cf28ae8ea8fab == _c5e7216c18d78efd33e7d176.EDCS_DAY)
                  {
                     _loc1_ = 0x6FD21DAC ^ 0x3D794F10 ^ 0x16067A0D ^ 0x2AFAE7BF;
                  }
                  else
                  {
                     _loc1_ = -2029579428 ^ 0x127180DE ^ -1063312826 ^ 0x3BBE7ECD;
                  }
                  break;
               case 1:
                  this._63a72755139c3d1f9e687d43 = _08dcc3ec9573358db49d7899.DAY_TO_NIGHT;
                  _loc1_ = -1970970981 ^ 0x3378DBD2 ^ -1875218949 ^ 0x479027BD;
                  break;
               case 2:
                  return;
               case 3:
                  this._63a72755139c3d1f9e687d43 = _08dcc3ec9573358db49d7899.NIGHT_TO_DAY;
                  _loc1_ = 0x4B9AB9A9 ^ -1533829005 ^ 0x0D60986F ^ -1942073670;
                  break;
               case 4:
                  if(_de89e27ae8b90e70822b4fad.CAN_CHANGE_DAY_NIGHT)
                  {
                     _loc1_ = 0x5B75325B ^ 0x174EE43F ^ 0x687863DF ^ 0x4A147AB7;
                  }
                  else
                  {
                     _loc1_ = 0x1928DCC3 ^ 0x598F4CC0 ^ -939576152 ^ -384865372;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _90eac9ca552fe54c2ca0299f() : void
      {
         var _loc1_:_296ee54b441acfe4f3a01508 = null;
         for each(_loc1_ in this._ebe1913b29e810d28471f1c8)
         {
            _loc1_.destroy();
         }
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,app.performanceManager,_de89e27ae8b90e70822b4fad.DAY_NIGHT_OFF,this._311b33b2df14fa4463c5b2d2);
         if(this._5b93c1557cc121cee75baa44 != null)
         {
            this._5b93c1557cc121cee75baa44.destroy();
            this._5b93c1557cc121cee75baa44 = null;
         }
         this._db839906b711cb86264932b0 = null;
         this._84f9e7441738220599df8533 = null;
         this._4ada218a0d4cf28ae8ea8fab = null;
         this._9d1ee8a9be6aa941b05547e1._90eac9ca552fe54c2ca0299f();
         this._9d1ee8a9be6aa941b05547e1 = null;
         this._36c2679bec37086171dd97f8._90eac9ca552fe54c2ca0299f();
         this._36c2679bec37086171dd97f8 = null;
         this._be1ec313a2864f91d33c705d._90eac9ca552fe54c2ca0299f();
         this._be1ec313a2864f91d33c705d = null;
      }
   }
}

