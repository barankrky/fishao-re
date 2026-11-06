package com.ax3.fishao.display.panels.inventory.base
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._3295d30c2cf527988ca84291;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _4dfa7fce32de2ad031f2e3da extends _3295d30c2cf527988ca84291
   {
      
      private static const _f3e40099a0d5bf4ebd6b4c40:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၄ထႫၴჼმ႑၇჆ႊၱ၉ၵჼႎာ၆ၧာბჲဨၙဢႄႷ","჎ჰဨ჌ဳ၌ၩငဢჿဏპ჎႒အၐ");
      
      private var _bb3b5d6b08c93f63dee0323f:DisplayObjectContainer;
      
      private var _a05516e27792b1c9e37ca517:DisplayObject;
      
      private var _76cb368a9512909084b66872:DisplayObject;
      
      public function _4dfa7fce32de2ad031f2e3da(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._bb3b5d6b08c93f63dee0323f = param2;
         super(param1,this._bb3b5d6b08c93f63dee0323f);
         this.init();
      }
      
      public function set image(param1:DisplayObject) : void
      {
         var _loc2_:int = 0x6969E93C ^ -1469674081 ^ 0x5ED5DD27 ^ -962554171;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x12B74593 ^ -1041797718 ^ -697425091 ^ 0x5C442445))
            {
               case 0:
                  if(this._76cb368a9512909084b66872 == param1)
                  {
                     _loc2_ = 0x14F03B7F ^ 0x02CC2FF1 ^ 0x6ACB7153 ^ 0x258D4A9D;
                  }
                  else
                  {
                     _loc2_ = -1736189142 ^ -664326058 ^ 0x694E66DD ^ 0x70D0A2E2;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._76cb368a9512909084b66872 = param1;
                  this._a05516e27792b1c9e37ca517.parent.addChild(this._76cb368a9512909084b66872);
                  this._76cb368a9512909084b66872.x = this._a05516e27792b1c9e37ca517.x + (this._a05516e27792b1c9e37ca517.width - this._76cb368a9512909084b66872.width) / (-668861262 ^ 0x5DE18B38 ^ 0x25FEA76F ^ -1606496025);
                  this._76cb368a9512909084b66872.y = this._a05516e27792b1c9e37ca517.y + (this._a05516e27792b1c9e37ca517.height - this._76cb368a9512909084b66872.height) / (0x0DDFB555 ^ -1543211402 ^ 0x49F1FF37 ^ -534103018);
                  this._a05516e27792b1c9e37ca517.visible = false;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         this._a05516e27792b1c9e37ca517 = Debug.assertProperty(this._bb3b5d6b08c93f63dee0323f,_f3e40099a0d5bf4ebd6b4c40,DisplayObject);
      }
   }
}

