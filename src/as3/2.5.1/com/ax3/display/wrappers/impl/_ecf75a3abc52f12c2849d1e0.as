package com.ax3.display.wrappers.impl
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.fishao.display.dialogs._477aae31689d8cc1711fcd75;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   
   public class _ecf75a3abc52f12c2849d1e0 implements IAssetWrapper, IAssetWrapperRecursive
   {
      
      public var labelField:TextField;
      
      public var flag:_ce140abd3fa14cdb56db6c7f;
      
      public var usernameField:TextField;
      
      public var viewProfileButton:FrameButtonWrapper;
      
      public var viewLogsButton:FrameButtonWrapper;
      
      private var _eb821aa29670a5bbe75bce61:_477aae31689d8cc1711fcd75;
      
      private var _asset:DisplayObject;
      
      public function _ecf75a3abc52f12c2849d1e0()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = param1;
      }
      
      public function onAssetProcessComplete() : void
      {
         this.viewProfileButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劬剺剂动劒勯劲刉劤刖劶劼劷刈劆剕劦刄勯勔劽剞剼劬剐剌刪勜勿勚勦劰勑勎刟勚初刕劊剶劈勶","刴勾劕利勣劮刘办刱势剒劍剢勲勐刮"));
         this.viewLogsButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၄႔ႊဧဒპჅშჄှ႖ჺႛფ၉თႡၶჩႾၙႠႱဌဂ႗ဩ၇ၧဝჽႳၼွ჏၂","႘ၲွ჉჏ႁဧၭႌၑჶსႋဖစဥ"));
         this._eb821aa29670a5bbe75bce61 = new _477aae31689d8cc1711fcd75(this.labelField,this.flag,this.usernameField);
      }
      
      public function set title(param1:String) : void
      {
         this._eb821aa29670a5bbe75bce61.setValue(0x4C4DFEBC ^ 0x3E8D9ED5 ^ -1704261329 ^ -391419578,param1);
      }
      
      public function set username(param1:String) : void
      {
         this._eb821aa29670a5bbe75bce61.setValue(-980231723 ^ -716622976 ^ 0x40370BA6 ^ 0x50ECE1F1,param1);
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._asset.visible = param1;
      }
   }
}

