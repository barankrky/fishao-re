package com.ax3.fishao.view.dialogs.tournaments.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._2cdd13756ecbf9d1e37d2c0a;
   import com.ax3.fishao.view.dialogs.base.views.implementations._ab72f7798754bf7a51d8acb3;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _4ea1ddec62b65b6636ab91c8 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _3aad9851a18903043e070a42:DisplayObjectContainer;
      
      private var _b282629164ee87dad19086e2:_ab72f7798754bf7a51d8acb3;
      
      private var _6aed5d5fa3bd4a07b199b564:FrameButtonWrapper;
      
      private var _d29d1b3fcca8c389bd3840d8:TextField;
      
      private var _f8f9501db1d97b1c356925da:TextField;
      
      private var _13eefc6470a642a352457edd:TextField;
      
      private var _2b7301c27818fb3a632cb33d:_2cdd13756ecbf9d1e37d2c0a;
      
      private var _eb3e6c14c8b8abf8e1dde3cb:DisplayObjectContainer;
      
      public function _4ea1ddec62b65b6636ab91c8(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._3aad9851a18903043e070a42 = param2;
         super(param1,this._3aad9851a18903043e070a42);
         this.init();
      }
      
      public function get buttonReady() : FrameButtonWrapper
      {
         return this._6aed5d5fa3bd4a07b199b564;
      }
      
      public function get viewMembers() : DisplayObjectContainer
      {
         return this._eb3e6c14c8b8abf8e1dde3cb;
      }
      
      public function set dialogTitle(param1:String) : void
      {
         this._b282629164ee87dad19086e2.text = param1;
      }
      
      public function set timeStart(param1:String) : void
      {
         this._2b7301c27818fb3a632cb33d.value = param1;
      }
      
      private function init() : void
      {
         var labelTimeStartTitle:TextField = null;
         var labelTimeStartValue:TextField = null;
         this._b282629164ee87dad19086e2 = new _ab72f7798754bf7a51d8acb3(controller,Debug.assertProperty(this._3aad9851a18903043e070a42,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၇ဘဃဃႮႫႚკၝႃဆထႈၰ။ၐႜျ၊ႿါၦဠၜါႫ","ဋႴ့ဩႈ၊თဌ჆ႬွႬ၁ၨუႎ")));
         this._d29d1b3fcca8c389bd3840d8 = Debug.assertProperty(this._3aad9851a18903043e070a42,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挖捘掷揰挂揊挲挬掉揝揯掆挌捴捍掩掘挿掮捧掫掫捭捋挒揘揷挶掍掚捷挜挔捷掳捗揮措","揌掹掮挡揽揦挤挡揠掜挭措掵掟捷掴"),TextField);
         this._d29d1b3fcca8c389bd3840d8.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_START_LEVEL);
         this._f8f9501db1d97b1c356925da = Debug.assertProperty(this._3aad9851a18903043e070a42,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挻揷揖揵掶捎捽掓挩挍揝揉接据掷捴捼捶揀揪捁捹挥捀掖揎挖掎挱捃捀挷挭描捩捎","掂捜捪揙掝挭掊捻揱掞揇推挙掤換掣"),TextField);
         this._f8f9501db1d97b1c356925da.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_START_NAME);
         this._13eefc6470a642a352457edd = Debug.assertProperty(this._3aad9851a18903043e070a42,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("列刜劆剌务劌劭剫勓剐勚刊劝动劧劄刭勩刱前劌勔劏剟剌副劯剩勴劦刢刍勪分勹勣刁刮勾刜","副刟勮削剐勍剅劋刀勉剋劮勖勰勁劔"),TextField);
         this._13eefc6470a642a352457edd.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_START_STATUS);
         labelTimeStartTitle = Debug.assertProperty(this._3aad9851a18903043e070a42,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("務勺剳励剚勭动剠劶刟剽刡劬勎剝刞劍剸剢劥刵勗劚劰勵動刪刏刔刂勒劶剬勎剺劍勗勽剆割勋剂剦剺务刼","列励刕劳努剋前劋剰勵剡剶募券勨剹"),TextField);
         labelTimeStartValue = Debug.assertProperty(this._3aad9851a18903043e070a42,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၢႄၯჯႠၙ႔დ၅ဧၳၵႯႋႧჭ႗჏ႜႚჺၴႤႭၙႲဿ၇ၟႄჹဿႫဓ႑Ⴑ၉ႅ჎ၰးကღဪჂၝ","ဍ၃ႄီဌၽဦၱჶႚစဇჄၷၕဓ"),TextField);
         this._2b7301c27818fb3a632cb33d = new _2cdd13756ecbf9d1e37d2c0a(controller,labelTimeStartTitle,labelTimeStartValue,false);
         this._2b7301c27818fb3a632cb33d.title = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_START_TIME_START);
         this._6aed5d5fa3bd4a07b199b564 = new FrameButtonWrapper();
         this._6aed5d5fa3bd4a07b199b564.process(Debug.assertProperty(this._3aad9851a18903043e070a42,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挭掰揅掤挫挙揣掄挬揈排捺挥掬捾捀掼握採捼揊揅授挳探捃挤描掁掖","挣揯掃掝挱挻揳掯捻捖挴挢揚掾揦捃")));
         this._6aed5d5fa3bd4a07b199b564.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_6aed5d5fa3bd4a07b199b564,param1);
         };
         this._6aed5d5fa3bd4a07b199b564.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_START_BUTTON_READY);
         this._eb3e6c14c8b8abf8e1dde3cb = Debug.assertProperty(this._3aad9851a18903043e070a42,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掣掹捫掂挏挟推掓振掠掇挝捧揩挿揙揬捆換揶捵掇挳挡捚捺捧挆揟掄","捌挹掘捏捸揧捐揲指揃揂捌挘挳掃挫"));
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._6aed5d5fa3bd4a07b199b564.disable();
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

