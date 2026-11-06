package com.ax3.fishao.view.dialogs.base.views.implementations.improvable
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _37c3612007dbafee748d61ae extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _06aa584a7ebbf6e7c9187ecf:DisplayObjectContainer;
      
      private var _6dfce0138c6f7d1c2bec55be:TextField;
      
      private var _5a51d032166feb7f3fba11d8:TextField;
      
      private var _472532d6989c44b1c7b5c22b:TextField;
      
      private var _1e9ab55691eb6d46d3b7181d:TextField;
      
      private var _5e113fcaa50c8fe4387aef5e:FrameButtonWrapper;
      
      public function _37c3612007dbafee748d61ae(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._06aa584a7ebbf6e7c9187ecf = param2;
         super(param1,this._06aa584a7ebbf6e7c9187ecf);
         this.init();
      }
      
      public function set timeLeft(param1:uint) : void
      {
         this._472532d6989c44b1c7b5c22b.text = _c2ad9d37d7be0097d6d2e977._eeaa6c6c21a64b796b80bd46(param1);
      }
      
      public function set upgradePrice(param1:uint) : void
      {
         this._5e113fcaa50c8fe4387aef5e.label = param1.toString();
      }
      
      public function get buttonBuy() : FrameButtonWrapper
      {
         return this._5e113fcaa50c8fe4387aef5e;
      }
      
      public function _31a3c39eec073cc64db8f49c(param1:Boolean, param2:uint) : void
      {
         this._5a51d032166feb7f3fba11d8.text = _c2ad9d37d7be0097d6d2e977.get(param1 ? _85b2141a2303f6545d411d7a.EST_COMMON_TIME_LEFT : _85b2141a2303f6545d411d7a.EST_IMPROVABLE_LEVEL_TIME_DEFAULT);
         var _loc3_:String = "";
         if(param1)
         {
            _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_IMPROVABLE_LEVEL_TITLE_UPGRADING);
         }
         else
         {
            _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_IMPROVABLE_LEVEL_TITLE_DEFAULT);
            _loc3_ = _loc3_.replace(_706c123ff0b2d45829c1bb3e.ESTS_LEVEL,param2);
         }
         this._6dfce0138c6f7d1c2bec55be.text = _loc3_;
         this._1e9ab55691eb6d46d3b7181d.visible = param1;
      }
      
      private function init() : void
      {
         this._6dfce0138c6f7d1c2bec55be = Debug.assertProperty(this._06aa584a7ebbf6e7c9187ecf,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("助劅勵劯勑勋剙刵剧刍剥切勃剫剝剻劐勵力刈刼割劑刑勼勜勎剽","勻勑勂劋勴剜刻勢勐勾勯劎劸勩剾勃"),TextField);
         this._5a51d032166feb7f3fba11d8 = Debug.assertProperty(this._06aa584a7ebbf6e7c9187ecf,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捷捋掤捡揖挄探挈捾捏捇挦挮揕掸掹授捆掤捺按揟揮挭挗捋","掉挚挳掘掟揸提捅捼捃挈捺捫掶挊掏"),TextField);
         this._472532d6989c44b1c7b5c22b = Debug.assertProperty(this._06aa584a7ebbf6e7c9187ecf,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勋勢劻剥剖勺剛初勲別勨刅勣労刣劉勍刭力勳刺剘勮劇剮刱刍劝刺劃刌刈刵刓劷删","勿券剧劷刎劀剪劈勺剨制勣剷助剒勶"),TextField);
         this._1e9ab55691eb6d46d3b7181d = Debug.assertProperty(this._06aa584a7ebbf6e7c9187ecf,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揌揸揂捆捄揲揣揺捱揎挍挜挎挄捐挘捔挩捺挸掗挻挘捌","掰捡挢換排揾捎揱捁揑掰捱捷捂捛揆"),TextField);
         this._1e9ab55691eb6d46d3b7181d.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_IMPROVABLE_LEVEL_BUY);
         Debug.assertProperty(this._06aa584a7ebbf6e7c9187ecf,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揫揪掊掋掲捼挽排掫捠挜揩挚捓捳揀揙揩捨捴掱捞掔掑掛掿","揉捥捘捃捑掸揎挻挦挱掵控挦掦揹挂"),DisplayObjectContainer);
         this._5e113fcaa50c8fe4387aef5e = new FrameButtonWrapper();
         this._5e113fcaa50c8fe4387aef5e.process(Debug.assertProperty(this._06aa584a7ebbf6e7c9187ecf,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၹၼ჈ၴဪဥဣჲယဘမဗႸცႥၟၤჼအဝသၬရმညဠ","ჵჽჅေიတ၎ႽწဃႴၗ჎ာၳတ"),DisplayObjectContainer));
         this._5e113fcaa50c8fe4387aef5e.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_5e113fcaa50c8fe4387aef5e,param1);
         };
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._5e113fcaa50c8fe4387aef5e.handler = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

