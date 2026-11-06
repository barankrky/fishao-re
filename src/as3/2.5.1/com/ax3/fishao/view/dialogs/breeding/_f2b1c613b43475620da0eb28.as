package com.ax3.fishao.view.dialogs.breeding
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.breeding.model._60df203c5bd65d9824423405;
   import protocol.api.breeding.FscExtensionBreeding;
   import protocol.api.breeding.getCurrent.ResponseBreedingGetCurrent;
   import protocol.api.breeding.getFishes.ResponseBreedingGetFishes;
   
   public class _f2b1c613b43475620da0eb28 extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _e2bfe02a3f2d068a6df37a31:FscExtensionBreeding;
      
      private var _33476cb9706babda6fd235ac:Array;
      
      private var _4eeb2c9ecde44d0edfff071a:_60df203c5bd65d9824423405;
      
      public function _f2b1c613b43475620da0eb28()
      {
         super();
         this._e2bfe02a3f2d068a6df37a31 = _dfa25706e58a240c1e33e5c6.fscModel.extensionBreeding;
         _remoteExtension = this._e2bfe02a3f2d068a6df37a31;
         _4575c3ec15103b43cbf2be04(ResponseBreedingGetFishes,this._638e35f24bccbdd4010cfab5);
         _4575c3ec15103b43cbf2be04(ResponseBreedingGetCurrent,this._960e4aa111ff4e2624e618f7);
      }
      
      public static function get fishIncreaseChanceMultiplierFishcoins() : Number
      {
         var _loc1_:Number = 0x0CF099BB ^ -1474181981 ^ 0x13D29AF7 ^ -1224488978;
         _loc1_ *= _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၿႚဇၱဋ့ၵၠ႙ႢႿၑႥၤဠဤၜႳၦსးმၚႬ","ၡჍ၅ၭၐိჩ჻ဍၾၠဥဈၯဉლ");
         _loc1_ /= -1887970710 ^ 0x0C1CA420 ^ 0x314F9496 ^ -1306203404;
         return _loc1_ * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ႎႹၼ၃အოဆႚტႺ႙ფუဧၮႏ၅ႁၧႫၿႽ။პ","ၪჅႢპწႜ၄ჟყვ၄ၵ၍ဌჩၜ");
      }
      
      public function get fishes() : Array
      {
         return this._33476cb9706babda6fd235ac;
      }
      
      public function get currentlyBreeding() : _60df203c5bd65d9824423405
      {
         return this._4eeb2c9ecde44d0edfff071a;
      }
      
      private function _638e35f24bccbdd4010cfab5(param1:ResponseBreedingGetFishes) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_60df203c5bd65d9824423405 = null;
         this._33476cb9706babda6fd235ac = [];
         var _loc4_:Array = param1.fishes;
         for each(_loc2_ in _loc4_)
         {
            _loc3_ = new _60df203c5bd65d9824423405();
            _loc3_.deserialize(_loc2_);
            this._33476cb9706babda6fd235ac.push(_loc3_);
         }
      }
      
      private function _960e4aa111ff4e2624e618f7(param1:ResponseBreedingGetCurrent) : void
      {
         var _loc2_:_60df203c5bd65d9824423405 = new _60df203c5bd65d9824423405();
         _loc2_.deserialize(param1.fish);
         this._4eeb2c9ecde44d0edfff071a = _loc2_;
      }
      
      public function decreaseBreedingTime(param1:Function) : void
      {
         this._e2bfe02a3f2d068a6df37a31.decreaseBreedingTime(param1);
      }
      
      public function increaseBreedingChance(param1:Function) : void
      {
         this._e2bfe02a3f2d068a6df37a31.increaseBreedingChance(param1);
      }
      
      public function breedFish(param1:int, param2:Boolean) : void
      {
         var _loc3_:int = -836556942 ^ -906474891 ^ -1808432545 ^ -11353870;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x4A7E81FA ^ 0x0F909871 ^ -445583224 ^ -870136152))
            {
               case 0:
                  return;
               case 1:
                  if(param2)
                  {
                     _loc3_ = -1619724625 ^ -1992809737 ^ -857237808 ^ -1239978719;
                  }
                  else
                  {
                     _loc3_ = 0x16A554FF ^ 0x47C33862 ^ -465649936 ^ -639304251;
                  }
                  break;
               case 2:
                  this._e2bfe02a3f2d068a6df37a31.breedFishPayFishcoins(param1);
                  _loc3_ = 0x3C16E363 ^ -1789145739 ^ -654200415 ^ 0x1CF0B01C;
                  break;
               case 3:
                  this._e2bfe02a3f2d068a6df37a31.breedFishPayFishbucks(param1);
                  _loc3_ = 0x3A4ABD43 ^ 0x0F64E17D ^ -1870641223 ^ -921553876;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

