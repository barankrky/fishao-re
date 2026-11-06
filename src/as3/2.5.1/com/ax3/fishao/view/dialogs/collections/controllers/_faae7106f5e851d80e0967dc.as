package com.ax3.fishao.view.dialogs.collections.controllers
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.core._d9fcc7126f55b8a550ecc5ee;
   import com.ax3.fishao.requirements._ddb70167c149bc90b647ba30;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._f6788106409c49494058e542;
   import com.ax3.fishao.view.dialogs.collections.model._a9131e6257bb33cc49417f53;
   import com.ax3.fishao.view.dialogs.collections.views._16852a1dfc4ac46830e496dd;
   import flash.events.Event;
   
   public class _faae7106f5e851d80e0967dc extends _f6788106409c49494058e542
   {
      
      private var _6e25b8511d04a9ae5e641906:_16852a1dfc4ac46830e496dd = new _16852a1dfc4ac46830e496dd(this);
      
      private var _04d4f1c76fff11111b2dc0ba:Array;
      
      private var _9711817b44eaa7d7997a365b:_a9131e6257bb33cc49417f53;
      
      private var _dae06152209e4054293d46a7:int;
      
      private var _c2b9a2eb77e0df6e15190f49:int;
      
      public function _faae7106f5e851d80e0967dc(param1:_a9131e6257bb33cc49417f53)
      {
         super(this._6e25b8511d04a9ae5e641906);
         this._9711817b44eaa7d7997a365b = param1;
         this.init();
      }
      
      public function get entity() : _a9131e6257bb33cc49417f53
      {
         return this._9711817b44eaa7d7997a365b;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._6e25b8511d04a9ae5e641906.buttonNext:
                  §§push(0x3E4820A3 ^ -234181414 ^ -280918734 ^ 0x2303094B);
                  break;
               case this._6e25b8511d04a9ae5e641906.buttonPrev:
                  §§push(0x47AA8258 ^ -987824310 ^ -1648781163 ^ 0x1F0DE586);
                  break;
               default:
                  §§push(0x5DF66626 ^ -1120011521 ^ 0x749FD5B1 ^ -1806415510);
            }
            switch(§§pop())
            {
               case 0:
                  ++this._dae06152209e4054293d46a7;
                  this._7d2917db4a6180423de05704();
                  this._0796e5962e98e767e968df43();
                  break;
               case 1:
                  --this._dae06152209e4054293d46a7;
                  this._7d2917db4a6180423de05704();
                  this._0796e5962e98e767e968df43();
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         var _loc1_:int = -1860055462 ^ -1467714914 ^ -1126244725 ^ -2055511473;
         var _loc2_:Boolean = false;
         var _loc3_:_a03e2f6849d1eb7104208399 = null;
         this._04d4f1c76fff11111b2dc0ba = [];
         this._6e25b8511d04a9ae5e641906.collectionId = this._9711817b44eaa7d7997a365b.id;
         this._6e25b8511d04a9ae5e641906.reward = this._9711817b44eaa7d7997a365b.reward;
         this._6e25b8511d04a9ae5e641906.isLocked = this._9711817b44eaa7d7997a365b.isLocked;
         this._6e25b8511d04a9ae5e641906.isComplete = this._9711817b44eaa7d7997a365b.isComplete;
         this._6e25b8511d04a9ae5e641906._299e7bb5a645ce91a6b1a4d1(this._9711817b44eaa7d7997a365b.collectedItemsIDs.length,this._9711817b44eaa7d7997a365b.itemsIDs.length);
         if(this._9711817b44eaa7d7997a365b.isLocked)
         {
            this._6e25b8511d04a9ae5e641906.lockMessage = (this._9711817b44eaa7d7997a365b.requirements[0x6B728D06 ^ -905583343 ^ 0x5DD87C59 ^ -55634866] as _ddb70167c149bc90b647ba30).description;
         }
         var _loc4_:Array = [];
         for each(_loc1_ in this._9711817b44eaa7d7997a365b.itemsIDs)
         {
            _loc2_ = this._9711817b44eaa7d7997a365b.collectedItemsIDs.indexOf(_loc1_) != ConstantsBase.INDEX_NONE;
            _loc3_ = new _a03e2f6849d1eb7104208399(this._9711817b44eaa7d7997a365b.type,_loc1_,_loc2_);
            this._04d4f1c76fff11111b2dc0ba.push(_loc3_);
            _loc4_.push(_loc3_.view);
         }
         this._6e25b8511d04a9ae5e641906.items = _loc4_;
         this._dae06152209e4054293d46a7 = -564696317 ^ -6320780 ^ -806858595 ^ -299845909;
         this._c2b9a2eb77e0df6e15190f49 = Math.max(Math.ceil(this._04d4f1c76fff11111b2dc0ba.length / this._6e25b8511d04a9ae5e641906.itemsOnPage),0x2B886A40 ^ 0x21E725C4 ^ -1819428480 ^ -1713179131);
         this._7d2917db4a6180423de05704();
         this._0796e5962e98e767e968df43();
      }
      
      private function _0796e5962e98e767e968df43() : void
      {
         _3d866f07adb02a6079215c17(this._04d4f1c76fff11111b2dc0ba,this._dae06152209e4054293d46a7 - 1,this._6e25b8511d04a9ae5e641906.itemsOnPage);
      }
      
      private function _7d2917db4a6180423de05704() : void
      {
         this._6e25b8511d04a9ae5e641906.buttonNext.enabled = this._dae06152209e4054293d46a7 < this._c2b9a2eb77e0df6e15190f49;
         this._6e25b8511d04a9ae5e641906.buttonPrev.enabled = this._dae06152209e4054293d46a7 > (-565077709 ^ -1706382965 ^ -1434812120 ^ -295587439);
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         var _loc1_:_d9fcc7126f55b8a550ecc5ee = null;
         for each(_loc1_ in this._04d4f1c76fff11111b2dc0ba)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
         }
         super._90eac9ca552fe54c2ca0299f();
      }
      
      public function toString() : String
      {
         var _loc1_:String = "";
         if(this._9711817b44eaa7d7997a365b != null)
         {
            _loc1_ += _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勍刀剸剀劘勡刅刴剗刏剈勒刖劖","勰劢努勄勆剷刵勘剴刃删划劺剪剩刵") + this._9711817b44eaa7d7997a365b.id;
         }
         return _loc1_;
      }
   }
}

