package com.ax3.fishao.view.dialogs.club.pages.rankings
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.UtilsString;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._d3d70238b67f17bb35699a2c;
   import com.ax3.fishao.view.dialogs.club.model._518280cac6f3ae016ad4f350;
   import com.ax3.fishao.view.dialogs.club.model._8a55e6919385386ebc54f870;
   import com.ax3.fishao.view.dialogs.club.pages.base._a86dadbf5fed875ec9c2c515;
   import com.ax3.fishao.view.dialogs.club.pages.rankings.item._94ef63f5867493b335cd4a43;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.page.rankings.ResponseClubsGetPageRankings;
   
   public class _7787d4762ede09455f5db142 extends _a86dadbf5fed875ec9c2c515
   {
      
      private var _dd16247fc48b5dc2328f2102:_50b5af3469972fef229e8cb4;
      
      private var _ab53aed4ea9cf360eb1aee2f:Array;
      
      private var _2b390308312bafcdc6230d3a:int;
      
      private var _8dd2f30729916d29f1907641:Array;
      
      private var _b4771315a6eb8f0117b6898f:Array;
      
      private var _b4c3ccf1cadaef1390bc2d38:String;
      
      public function _7787d4762ede09455f5db142(param1:DisplayObjectContainer, param2:String)
      {
         this._dd16247fc48b5dc2328f2102 = new _50b5af3469972fef229e8cb4(this,param1,param2);
         super(this._dd16247fc48b5dc2328f2102);
         this.init();
      }
      
      private function get _2c7bb87e3284334018c4a76e() : int
      {
         var _loc1_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = -886313646 ^ 0x040A9F8C ^ -967815286 ^ 0x09713D54;
         if(!_managerClubs.userInClub)
         {
            return _loc3_;
         }
         var _loc4_:int = -301829315 ^ 0x0F36FE47 ^ -99993061 ^ 0x1B3EB761;
         while(_loc4_ < this._b4771315a6eb8f0117b6898f.length)
         {
            _loc1_ = this._b4771315a6eb8f0117b6898f[_loc4_];
            _loc2_ = Debug.assertProperty(_loc1_,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ხြჯဇႭူ၀ဖ၎ႫႺჯნၷ႒ၳၠ႒აჺဟႣၙႮჼბႢဟ","ခၚ႑ၽစုဵၭၑၯဨჰၪჵၬႶ"));
            if(_loc2_)
            {
               _loc3_ = Math.floor(_loc4_ / this._2b390308312bafcdc6230d3a);
               break;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function _bc9ac3409896af5a80c0d961(param1:Event) : void
      {
         this._bd82e272777ed3124374ba32();
      }
      
      private function _06a7eb3b20698a055d8e885a(param1:Event = null) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_8a55e6919385386ebc54f870 = null;
         _f2f26e7a66175d89c6f850e5(this._ab53aed4ea9cf360eb1aee2f);
         this._ab53aed4ea9cf360eb1aee2f = [];
         var _loc4_:String = this._dd16247fc48b5dc2328f2102.viewInput.label.text;
         var _loc5_:RegExp = null;
         if(!UtilsString.isNullOrEmpty(_loc4_))
         {
            _loc5_ = new RegExp(_loc4_,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႄჶႉၹႺၮဘၚჶၙၺၫ","რၲၒၻႾနვှ၂႙ყႭႄႏၰၹ"));
         }
         this._b4771315a6eb8f0117b6898f = [];
         for each(_loc2_ in this._8dd2f30729916d29f1907641)
         {
            _loc3_ = Debug.assertProperty(_loc2_,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刅剨勄劇劣刄勷劊努劗剬到劵剤劺剳劬勖勠刈刭勻動剈劮劎","勆刬劌刎劚劏勉勉刟勇剾劗劒剱剙刂"));
            if(_loc5_ == null)
            {
               this._b4771315a6eb8f0117b6898f.push(_loc2_);
               this._ab53aed4ea9cf360eb1aee2f.push(null);
            }
            else if(_loc3_.name.match(_loc5_).length > (0x5A060F38 ^ 0x77776FE9 ^ 0x380C32F8 ^ 0x157D5229))
            {
               this._b4771315a6eb8f0117b6898f.push(_loc2_);
               this._ab53aed4ea9cf360eb1aee2f.push(null);
            }
         }
         this._dd16247fc48b5dc2328f2102.viewPagination.pageCurrent = this._2c7bb87e3284334018c4a76e;
         this._32c616611ce4c48d079e2ca9();
         this._745079479ec2cd81849c3755();
         this._324c0a611491b4de99641642();
      }
      
      override protected function _3d45492cb1b715a713c0c8d0(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         super._3d45492cb1b715a713c0c8d0(param1);
         if(param1 is ResponseError)
         {
            return;
         }
         var _loc2_:ResponseClubsGetPageRankings = param1 as ResponseClubsGetPageRankings;
         this._8dd2f30729916d29f1907641 = _loc2_.rankingsData;
         this._b4c3ccf1cadaef1390bc2d38 = _loc2_.rankingType;
         this._dd16247fc48b5dc2328f2102.rankingType = this._b4c3ccf1cadaef1390bc2d38;
         this._3cd49d1c0a9611865775c93f();
         this._06a7eb3b20698a055d8e885a();
      }
      
      private function _3cd49d1c0a9611865775c93f() : void
      {
         var _loc1_:Object = null;
         var _loc2_:_8a55e6919385386ebc54f870 = null;
         var _loc3_:Boolean = false;
         var _loc4_:_518280cac6f3ae016ad4f350 = GameSwf.instance.managerClubs;
         for each(_loc1_ in this._8dd2f30729916d29f1907641)
         {
            _loc2_ = new _8a55e6919385386ebc54f870();
            _loc2_.deserialize(_loc1_);
            _loc3_ = false;
            if(_loc4_.userInClub)
            {
               _loc3_ = _loc4_.userClub.ID == _loc2_.ID;
            }
            _loc1_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捴揨损捹揧挌揟揩揞揕掗挗揨捻掕揀揜掞挺挐揖挞揄揼捏挙捳揊","掗掖揺揥挌控援掙挬揲挴掀掓挎挨捙")] = _loc3_;
            _loc1_[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劷勾剀労劘剒剌刅劒剔刨刑劍勹刈剠削劁劓刹剝刊刐勁剏則","刼勐勓勠剅刃劯別刯劆勬剒利勠刌剓")] = _loc2_;
         }
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._dd16247fc48b5dc2328f2102.viewPagination.buttonLeft:
                  §§push(-1058036708 ^ -2076666170 ^ -458859704 ^ -1603180142);
                  break;
               case this._dd16247fc48b5dc2328f2102.viewPagination.buttonRight:
                  §§push(0x4B49F742 ^ 0x3CF06D8C ^ -1730126276 ^ -279329549);
                  break;
               default:
                  §§push(0x42337D46 ^ 0x37E17B72 ^ 0x7FF20ECE ^ 0x0A2008F8);
            }
            switch(§§pop())
            {
               case 0:
               case 1:
                  this._32c616611ce4c48d079e2ca9();
                  this._324c0a611491b4de99641642();
                  _loc3_ = true;
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._b4c3ccf1cadaef1390bc2d38 = null;
         this._ab53aed4ea9cf360eb1aee2f = [];
         this._8dd2f30729916d29f1907641 = [];
         this._b4771315a6eb8f0117b6898f = [];
         this._2b390308312bafcdc6230d3a = -804874089 ^ 0x3AB1201B ^ 0x53D77B7A ^ -1184840705;
         this._dd16247fc48b5dc2328f2102.viewInput.callbackOnTextChanged = this._06a7eb3b20698a055d8e885a;
         this._dd16247fc48b5dc2328f2102.viewInput.label.addEventListener(Event.CHANGE,this._06a7eb3b20698a055d8e885a);
         this._dd16247fc48b5dc2328f2102.viewDropDown.addEventListener(Event.CHANGE,this._bc9ac3409896af5a80c0d961);
      }
      
      override public function _bd82e272777ed3124374ba32() : void
      {
         var _loc1_:Object = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჇၑႭၲတშၱၜიၹၾယ၀အიဎၻၠႮჷၔႴၟဵႴီဨ႑ဈჄႊ჌","Ⴡၭ჊ဌႁჩၠဨ႕ၲၕႚဘၿစႷ")):this._dd16247fc48b5dc2328f2102.viewDropDown.selectedType};
         _managerClubs.loadDataForPage(_type,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._3d45492cb1b715a713c0c8d0),_loc1_);
      }
      
      private function _32c616611ce4c48d079e2ca9() : void
      {
         var _loc1_:_94ef63f5867493b335cd4a43 = null;
         var _loc2_:Object = null;
         var _loc3_:DisplayObjectContainer = this._dd16247fc48b5dc2328f2102.source as DisplayObjectContainer;
         var _loc4_:int = this._dd16247fc48b5dc2328f2102.viewPagination.pageCurrent;
         var _loc5_:int = _loc4_ * this._2b390308312bafcdc6230d3a;
         var _loc6_:int = (_loc4_ + (0x0FAFBDD5 ^ -21569032 ^ 0x341BE601 ^ -989677011)) * this._2b390308312bafcdc6230d3a;
         var _loc7_:Array = [];
         _loc6_ = Math.min(_loc6_,this._b4771315a6eb8f0117b6898f.length);
         var _loc8_:int = _loc5_;
         while(_loc8_ < _loc6_)
         {
            _loc1_ = this._ab53aed4ea9cf360eb1aee2f[_loc8_];
            if(_loc1_ == null)
            {
               _loc2_ = this._b4771315a6eb8f0117b6898f[_loc8_];
               _loc1_ = new _94ef63f5867493b335cd4a43(_loc2_,this._b4c3ccf1cadaef1390bc2d38);
               this._ab53aed4ea9cf360eb1aee2f[_loc8_] = _loc1_;
               _loc3_.addChild(_loc1_.view.source);
               _loc7_.push(_loc1_);
            }
            _loc8_++;
         }
         this._44744cf1768852c1f6ab6c3f(_loc7_);
         _d3d70238b67f17bb35699a2c._d7c8729108cc7f2a5c2d5bf5(this._dd16247fc48b5dc2328f2102.viewDropDown);
      }
      
      private function _44744cf1768852c1f6ab6c3f(param1:Array) : void
      {
         _2366485e451061bdda2a0f22(param1,-420517644 ^ 0x7A614663 ^ -1093465615 ^ 0x225D270F,this._2b390308312bafcdc6230d3a,-146515705 ^ -1856028637 ^ -706241025 ^ -1275296549);
      }
      
      private function _745079479ec2cd81849c3755() : void
      {
         this._dd16247fc48b5dc2328f2102.viewPagination.pagesTotal = Math.ceil(this._ab53aed4ea9cf360eb1aee2f.length / this._2b390308312bafcdc6230d3a);
      }
      
      private function _324c0a611491b4de99641642() : void
      {
         _3d866f07adb02a6079215c17(this._ab53aed4ea9cf360eb1aee2f,this._dd16247fc48b5dc2328f2102.viewPagination.pageCurrent,this._2b390308312bafcdc6230d3a);
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._dd16247fc48b5dc2328f2102.viewInput.label.removeEventListener(Event.CHANGE,this._06a7eb3b20698a055d8e885a);
         this._dd16247fc48b5dc2328f2102.viewDropDown.removeEventListener(Event.CHANGE,this._bc9ac3409896af5a80c0d961);
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

