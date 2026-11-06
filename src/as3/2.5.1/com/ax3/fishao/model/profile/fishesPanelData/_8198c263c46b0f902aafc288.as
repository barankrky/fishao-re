package com.ax3.fishao.model.profile.fishesPanelData
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.model.profile._5b25b89cb3368976ba33f1ea;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.fishes.model._21587f0ac0bcbbbfdcd63026;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import protocol.sr.profile.ProfileFishesResp;
   
   public class _8198c263c46b0f902aafc288 extends _5b25b89cb3368976ba33f1ea
   {
      
      public var caughtFishes:Number;
      
      public var totalFishes:Number;
      
      public var userCaughtFishesList:Vector.<Object>;
      
      public function _8198c263c46b0f902aafc288()
      {
         super();
      }
      
      private static function _9479d301636ea9d06fedf1ea(param1:Object, param2:Object) : int
      {
         var _loc3_:String = param1.realName;
         var _loc4_:String = param2.realName;
         if(_loc3_ < _loc4_)
         {
            return -556295935 ^ -414918819 ^ -1693842650 ^ 0x5D66B285;
         }
         if(_loc3_ > _loc4_)
         {
            return 0x04C6512F ^ -746577111 ^ -1220699592 ^ 0x607BE83F;
         }
         return 0x023543BD ^ 0x60EADB28 ^ -899864464 ^ -1467830043;
      }
      
      private function _f06d80e02a81f28fbcedc8cf(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         _dfa25706e58a240c1e33e5c6.profileExtension._4f312005dd2c42491c7601d0(_login,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._76020cdc7ecda3e05eab3cee));
      }
      
      private function _76020cdc7ecda3e05eab3cee(param1:ProfileFishesResp) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:_21587f0ac0bcbbbfdcd63026 = null;
         var _loc6_:Boolean = false;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         this.userCaughtFishesList = new Vector.<Object>(-1070213499 ^ 0x28647B96 ^ -191782483 ^ 0x1CC00CBE);
         var _loc10_:Object = JSON.parse(param1.caughtFishIdes);
         if(_loc10_ is Array)
         {
            _loc2_ = _loc10_ as Array;
            _loc3_ = 0x4A91A808 ^ -1671556310 ^ 0x6DB20D21 ^ -1149389309;
            while(_loc3_ < _loc2_.length)
            {
               _loc4_ = Number(_loc2_[_loc3_]);
               _loc5_ = GameSwf.instance.managerFishes.fishesUserMap[_loc4_.toString()];
               _loc6_ = _loc5_ ? true : false;
               _loc7_ = _loc6_ ? _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("労勥勚劚刑力剾刮勪剠劉勗勭则勽勔刂劣","刳勰勮勛剜勈剿剕剋劔剺剠劁勆剕助") + _loc4_) : _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ტლ჈თႰლႢၬჺჁ","ჿၰႴႮၮႷႭႃႪ჎ျჟ႒႞မႜ");
               _loc8_ = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剝勀劕剥勂勹勵加勳剼刐剮刉剒刳剱劅勁勈創劽勄初刟勘刣勌剆券剝劀剚勼刪劲勍剄劖剳分刜効剹剌剕勉","劓勋剃剺剿勣勔刋剎刓刦劰列剏剀剥") + _loc4_.toString();
               _loc9_ = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("务剋制剮刵劑刂剦勍剬分別剟刟勗勡刟刯","刈刂剷劕刕划劗剺剛劾剔刂勿劣剅切") + _loc4_);
               this._95299f7c69558387da31ae3c(_loc4_.toString(),_loc7_,_loc8_,_loc6_,_loc9_);
               _loc3_++;
            }
            this.userCaughtFishesList.sort(_9479d301636ea9d06fedf1ea);
         }
         this.caughtFishes = this.userCaughtFishesList.length;
         this.totalFishes = param1.amountOfAllFishTypes;
         _callback();
      }
      
      override public function load(param1:String, param2:Function) : void
      {
         this.userCaughtFishesList = new Vector.<Object>(-817830888 ^ 0x5EDED356 ^ -1498529304 ^ 0x373076A6);
         super.load(param1,param2);
         GameSwf.instance.managerFishes._8bf4de9d74518e406a443aa3(_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._f06d80e02a81f28fbcedc8cf));
      }
      
      private function _95299f7c69558387da31ae3c(param1:String, param2:String, param3:String, param4:Boolean, param5:String) : void
      {
         this.userCaughtFishesList.push(new _cad80b76444bb507a2ed0379(param1,param2,param3,param4,param5));
      }
   }
}

