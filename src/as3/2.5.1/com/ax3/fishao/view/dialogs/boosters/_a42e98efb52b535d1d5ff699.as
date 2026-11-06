package com.ax3.fishao.view.dialogs.boosters
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations._01cf9a78594a0bb30b57b0c3;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.boosters.base._2d8948bae31fcd19e45d6dae;
   import com.ax3.fishao.view.dialogs.boosters.base._862e2792496d13d3dff5b3ca;
   
   public class _a42e98efb52b535d1d5ff699 extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _b7d780c970744825b489ce2c:Array;
      
      public function _a42e98efb52b535d1d5ff699()
      {
         super();
         this.init();
      }
      
      private function _4f9d607cacdcc122a6aae88b(param1:uint) : _862e2792496d13d3dff5b3ca
      {
         var _loc2_:_862e2792496d13d3dff5b3ca = null;
         var _loc3_:_862e2792496d13d3dff5b3ca = null;
         for each(_loc2_ in this._b7d780c970744825b489ce2c)
         {
            if(_loc2_.id == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function _211a004fe426db88fb50af2c(param1:String) : _862e2792496d13d3dff5b3ca
      {
         var _loc2_:_862e2792496d13d3dff5b3ca = null;
         var _loc3_:_862e2792496d13d3dff5b3ca = null;
         for each(_loc2_ in this._b7d780c970744825b489ce2c)
         {
            if(_loc2_.type == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._b7d780c970744825b489ce2c = [];
      }
      
      public function _6fd42490e1002e153440a4f3(param1:uint) : void
      {
         if(this._4f9d607cacdcc122a6aae88b(param1) != null)
         {
            return;
         }
         var _loc2_:String = _01cf9a78594a0bb30b57b0c3._72c6b5d6cd6349d1392116f0(param1);
         var _loc3_:_862e2792496d13d3dff5b3ca = _2d8948bae31fcd19e45d6dae._81016c1c4045a0e51fdd99f3(_loc2_,param1);
         this._b7d780c970744825b489ce2c.push(_loc3_);
      }
      
      public function _b9741a7479ee2b724ce938fa(param1:String) : void
      {
         var _loc2_:_862e2792496d13d3dff5b3ca = this._211a004fe426db88fb50af2c(param1);
         if(_loc2_ == null)
         {
            Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၾნၳႄ჌ბဿმაႮကႾႌქဢႜჩခ჏Ⴚხჿဆဲၳ၏ჿၑၫျႈჯႨဈၴလჱၞႪဓ၄პၳႵဇ႑ჹ။ဗဘჯႽိ႘჋ႰჃႆსႧჱွၰၑၟၭဳၪဤဧနჟပჁဩვဢჾာုႋှႼၖၢ႒Ⴗႎ჋ဈၥჭ။Ⴎჱဈჶခလၣლၣ႘ၮႽခဖဥ႒ფ႖ဗႃၑ႐ჹჍბၱიၪმ჊ႢუႥვၕၺၑႩჅၒ႟ႺႜႴဋၶჹာႤီၴႭၗ၉ნၡႍ၁ဇჺၥၼဳၚထ","რၮၭၯြჴဖ჎მႺဴၢႬ႒ၳ႔") + param1);
            return;
         }
         var _loc3_:int = this._b7d780c970744825b489ce2c.indexOf(_loc2_);
         this._b7d780c970744825b489ce2c.splice(_loc3_,0x490E3EA2 ^ 0x2E61D2F2 ^ -224184593 ^ -1781736770);
      }
   }
}

