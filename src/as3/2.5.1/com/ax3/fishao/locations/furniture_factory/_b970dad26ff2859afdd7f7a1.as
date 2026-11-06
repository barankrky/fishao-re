package com.ax3.fishao.locations.furniture_factory
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.fishao.events._4986c362bed569a2ffb299b4;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.events.Event;
   
   public class _b970dad26ff2859afdd7f7a1 extends _67f8febc099eaa05c48aa41e
   {
      
      private var _9ee629f8686fbca24ebdf827:_79f62ae7f3b54f8ffcd369e4;
      
      private var _cbde1d9b93310002aa8b3116:_cc170ef077916399956c86a9;
      
      public function _b970dad26ff2859afdd7f7a1(param1:_4039c287ddb4ef46ab65ab0e)
      {
         this._cbde1d9b93310002aa8b3116 = param1 as _cc170ef077916399956c86a9;
         super(param1);
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this._cbde1d9b93310002aa8b3116._9885756e6b482e3f691deced();
      }
      
      private function _1ca825fbad4cf5614fbceddb(param1:_4986c362bed569a2ffb299b4) : void
      {
         var _loc2_:Array = param1.data as Array;
         this._daedc23d235aa570752530db(_loc2_);
      }
      
      override protected function _3536e00a076cf84463e9eaaa() : _bd60f9ad6ef4aaf28041ce8f
      {
         this._9ee629f8686fbca24ebdf827 = super._3536e00a076cf84463e9eaaa() as _79f62ae7f3b54f8ffcd369e4;
         return this._9ee629f8686fbca24ebdf827;
      }
      
      override public function activate() : void
      {
         super.activate();
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,locationModel,_4986c362bed569a2ffb299b4.UPDATE_BOARD_FISH,this._1ca825fbad4cf5614fbceddb);
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,locationModel,_4986c362bed569a2ffb299b4.UPDATE_BOARD_FISH,this._1ca825fbad4cf5614fbceddb);
      }
      
      private function _daedc23d235aa570752530db(param1:Array) : void
      {
         var _loc2_:int = 0x2FAC9154 ^ 0x63C792F2 ^ 0x37804BCA ^ 0x7BEB486C;
         var _loc3_:Array = [];
         var _loc4_:int = 0x16E19162 ^ -924622898 ^ -152072256 ^ 0x28ED416C;
         while(_loc4_ < param1.length)
         {
            _loc3_[_loc4_] = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挃揓捆挺挳揊授描掗挘援揽揻挮掔捑掁捜","捛措挿換掖捌挰捧挒捯挱揘挹掆揻捚") + param1[_loc4_]);
            _loc4_++;
         }
         _loc3_.sort();
         var _loc5_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_BOARD_FISH_LUCKY_RAFT);
         _loc5_ = _loc5_.replace(_706c123ff0b2d45829c1bb3e.ESTS_COUNT,param1.length);
         if(_loc3_.length == (-1112689254 ^ 0x209425F8 ^ -866495643 ^ 0x5163C307))
         {
            _loc5_ = _loc5_.replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剜劒剺劌刈勺动勧刚勐","劥勸劂剨効劣判割劲勥力剦剹剣劕办"),"");
         }
         else
         {
            _loc2_ = 0x1B4954EB ^ -37259068 ^ -1376824342 ^ 0x4B617FC5;
            while(_loc2_ < param1.length)
            {
               _loc5_ += _loc3_[_loc2_];
               if(_loc2_ < param1.length - 1)
               {
                  _loc5_ += _95da7f1147c669197db81295._8f4866de82b7339154180ecb("则刈剱划剢勁刓劚到刎剩劼","剺剂剧剟劯刨勬勝刭勱剡勜勇勣劮勋");
               }
               _loc2_++;
            }
         }
         this._9ee629f8686fbca24ebdf827.boardFish.tooltipText = _loc5_;
      }
      
      override public function updateWithType(param1:String) : void
      {
         if(!_locationLoadComplete)
         {
            return;
         }
         var _loc2_:String = param1;
         switch(_6b63fd0a4028eb279b227831.ECU_FURNITURE_FACTORY_UPDATE === _loc2_ ? -1080787138 ^ -1869996480 ^ 0x2B36414C ^ 0x04282032 : -895709067 ^ 0x36165173 ^ -317548310 ^ 0x119859ED)
         {
            case 0:
               this._cbde1d9b93310002aa8b3116._9885756e6b482e3f691deced();
               break;
            default:
               super.updateWithType(param1);
         }
      }
   }
}

