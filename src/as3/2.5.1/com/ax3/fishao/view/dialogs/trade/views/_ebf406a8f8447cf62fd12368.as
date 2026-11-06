package com.ax3.fishao.view.dialogs.trade.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _ebf406a8f8447cf62fd12368 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _903690c376e61752e602e542:DisplayObjectContainer;
      
      private var _55d7571c2dff0cf9d50e1392:TextField;
      
      private var _c000d453d3c5a1c668857fcd:TextField;
      
      private var _2f7d4453d3212e9dfedd6813:FishaoButtonWrapper;
      
      private var _7829ab1c4de0758c43b4a448:FrameButtonWrapper;
      
      public function _ebf406a8f8447cf62fd12368(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._903690c376e61752e602e542 = param2;
         super(param1,this._903690c376e61752e602e542);
         this.init();
      }
      
      public function set message(param1:String) : void
      {
         this._55d7571c2dff0cf9d50e1392.text = param1;
      }
      
      public function get labelAmount() : TextField
      {
         return this._c000d453d3c5a1c668857fcd;
      }
      
      public function set amount(param1:int) : void
      {
         this._c000d453d3c5a1c668857fcd.text = param1.toString();
      }
      
      public function get buttonClose() : FishaoButtonWrapper
      {
         return this._2f7d4453d3212e9dfedd6813;
      }
      
      public function get buttonOk() : FrameButtonWrapper
      {
         return this._7829ab1c4de0758c43b4a448;
      }
      
      private function init() : void
      {
         this._55d7571c2dff0cf9d50e1392 = Debug.assertProperty(this._903690c376e61752e602e542,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劐剱勢勎勚劁勖剓劊剎剅創势劋刍剌加刓刘剖勥切剭刲勉剅利剠剅剈刲動","勲勏劣勻劂勯剡刓勅剠劇刷勗勋勿劔"),TextField);
         this._55d7571c2dff0cf9d50e1392.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_DIALOG_AMOUNT_MESSAGE);
         this._c000d453d3c5a1c668857fcd = Debug.assertProperty(this._903690c376e61752e602e542,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၸၣၚၡၚႶჺჁူဓၿၚဂႊစႷ႔სჵူႵღၓႾတၙ၄လဥႽ","ဌოၔၢၯဧၩဠჅကၺၶ჊Ⴋႆႅ"),TextField);
         this._c000d453d3c5a1c668857fcd.text = "";
         this._2f7d4453d3212e9dfedd6813 = new FishaoButtonWrapper();
         this._2f7d4453d3212e9dfedd6813.process(Debug.assertProperty(this._903690c376e61752e602e542,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挄排掉挔捙挃挺挅揍掷挫握掑排挌捴挱捵挴挲掽掜揞掵捺挓掓揕挌揶","掷捑揯揚掐挘掰握掕掙挆握掃持揆掳")));
         this._2f7d4453d3212e9dfedd6813.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_2f7d4453d3212e9dfedd6813,param1);
         };
         this._7829ab1c4de0758c43b4a448 = new FrameButtonWrapper();
         this._7829ab1c4de0758c43b4a448.process(Debug.assertProperty(this._903690c376e61752e602e542,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჵტန႕ფჾ၎ဪფႥჸၹჄეႨႨპၾ်Ⴡ၃ႎၱმ","ჹဈჯნဩၙဂၨဆႣႍႩჵႃၯႽ")));
         this._7829ab1c4de0758c43b4a448.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_DIALOG_AMOUNT_BUTTON_OK);
         this._7829ab1c4de0758c43b4a448.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_7829ab1c4de0758c43b4a448,param1);
         };
      }
   }
}

