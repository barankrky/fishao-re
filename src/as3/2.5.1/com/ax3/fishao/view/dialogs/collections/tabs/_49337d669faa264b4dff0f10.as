package com.ax3.fishao.view.dialogs.collections.tabs
{
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import flash.events.MouseEvent;
   
   public class _49337d669faa264b4dff0f10 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _b3a95cd5770921269c70b32d:gButtonTab = new gButtonTab();
      
      public function _49337d669faa264b4dff0f10(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._b3a95cd5770921269c70b32d);
         this._fc17178734ae7cc816dbcc2f(true);
         this._b3a95cd5770921269c70b32d.label.mouseEnabled = false;
      }
      
      public function set label(param1:String) : void
      {
         this._b3a95cd5770921269c70b32d.label.text = param1;
         this._b3a95cd5770921269c70b32d.label.width = this._b3a95cd5770921269c70b32d.label.textWidth + (0x30FCED86 ^ -784733406 ^ 0x4459A034 ^ -1516460395);
         this._b3a95cd5770921269c70b32d.viewCenter.width = this._b3a95cd5770921269c70b32d.label.width + (-1696100266 ^ -2076892828 ^ 0x0785BF43 ^ 0x19570E74);
         this._b3a95cd5770921269c70b32d.viewRight.x = this._b3a95cd5770921269c70b32d.viewCenter.x + this._b3a95cd5770921269c70b32d.viewCenter.width;
      }
      
      public function get label() : String
      {
         return this._b3a95cd5770921269c70b32d.label.text;
      }
      
      override protected function onMouseClick(param1:MouseEvent) : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_049_UI_Switch_tab);
         super.onMouseClick(param1);
      }
      
      public function _a5e1b14cd3919356c2d472ce(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:uint = uint(0x0DFBC0ED ^ -75970232 ^ 0x10B30C40 ^ -433060379);
         if(param1)
         {
            _loc4_ = param2 ? uint(0x75975F30 ^ -1381246802 ^ 0x4746332B ^ -1619348298) : uint(-342961185 ^ -1351716236 ^ -1639127847 ^ -626244237);
         }
         else if(param2)
         {
            _loc4_ = param3 ? uint(0x3FC4D6F4 ^ 0x57D9F6ED ^ -1943690254 ^ -466058258) : uint(0x6AF4BB67 ^ -648281730 ^ 0x6FF00B7D ^ -598167200);
         }
         else
         {
            _loc4_ = uint(-340992687 ^ 0x3D48A91A ^ -553316573 ^ 0x09E17B6A);
         }
         this._b3a95cd5770921269c70b32d.viewLeft.gotoAndStop(param1 ? 0x3B3255E1 ^ 0x096F1806 ^ 0x7F6B3D46 ^ 0x4D3670A0 : 0x6D44AD48 ^ 0x6D73DB63 ^ 0x0FB40693 ^ 0x0F8370BA);
         this._b3a95cd5770921269c70b32d.viewCenter.gotoAndStop(param1 ? -1944304618 ^ 0x08716D2D ^ -333903076 ^ 0x68742226 : 0x285DBFC6 ^ 0x7CCFE68D ^ 0x3DFCAC22 ^ 0x696EF56B);
         this._b3a95cd5770921269c70b32d.viewRight.gotoAndStop(_loc4_);
      }
   }
}

