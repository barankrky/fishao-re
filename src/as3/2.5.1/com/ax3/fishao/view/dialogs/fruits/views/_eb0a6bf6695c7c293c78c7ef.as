package com.ax3.fishao.view.dialogs.fruits.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._ab72f7798754bf7a51d8acb3;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   
   public class _eb0a6bf6695c7c293c78c7ef extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _bd7015d1ab42dc6b01d04669:DisplayObjectContainer;
      
      private var _b457ad6d6cff72dedecf548d:_ab72f7798754bf7a51d8acb3;
      
      private var _cced684796b85049ac5011ce:FrameButtonWrapper;
      
      public function _eb0a6bf6695c7c293c78c7ef(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._bd7015d1ab42dc6b01d04669 = param2;
         super(param1,this._bd7015d1ab42dc6b01d04669);
         this.init();
      }
      
      public function get buttonCrush() : FrameButtonWrapper
      {
         return this._cced684796b85049ac5011ce;
      }
      
      private function init() : void
      {
         this._b457ad6d6cff72dedecf548d = new _ab72f7798754bf7a51d8acb3(controller,Debug.assertProperty(this._bd7015d1ab42dc6b01d04669,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("換据挹挍換挀揶揗挮揌掔掚揊挄措揅掺揶掦掌揥捾挺捠援捔","挙掘捆描捻捍捫挍捤控掭捡挱揔挻掩")));
         this._b457ad6d6cff72dedecf548d.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_FRUITS_CRUSH_TITLE);
         this._cced684796b85049ac5011ce = new FrameButtonWrapper();
         this._cced684796b85049ac5011ce.process(Debug.assertProperty(this._bd7015d1ab42dc6b01d04669,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揝挕掳揲挙捿掕捁揤掅挣揮掮捕揓掱掱捭损揀揃掬揟捌捻挙掺挬捈挈","掣挥捜挽挠措揋捳挵捙揠掌捇持掞揳")));
         this._cced684796b85049ac5011ce.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_cced684796b85049ac5011ce,param1);
         };
         this._cced684796b85049ac5011ce.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_FRUITS_CRUSH_BUTTON_CRUSH);
      }
   }
}

