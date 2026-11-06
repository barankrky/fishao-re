package com.ax3.fishao.locations.objects
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune._ebfae60a420fd1c3ccdd4d9b;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class _a38933af26dced44f886f5bd
   {
      
      private var _698aa37b4bcfa02eb23c098b:DisplayObjectContainer;
      
      private var _b6ebadfa6f4be0ff8ed2b7d8:_ebfae60a420fd1c3ccdd4d9b;
      
      private var _f2230f1d0bbb8b1f5a4e710b:Sprite;
      
      public function _a38933af26dced44f886f5bd(param1:DisplayObjectContainer)
      {
         super();
         this._698aa37b4bcfa02eb23c098b = param1;
         this.init();
      }
      
      private function _6b1d2c00e9d192a5b1ca1812(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         this._b6ebadfa6f4be0ff8ed2b7d8.getInfo();
      }
      
      private function init() : void
      {
         this._b6ebadfa6f4be0ff8ed2b7d8 = GameSwf.instance.managerWheelOfFortune;
         this._698aa37b4bcfa02eb23c098b.mouseEnabled = true;
         this._698aa37b4bcfa02eb23c098b.mouseChildren = true;
         this._f2230f1d0bbb8b1f5a4e710b = Debug.assertProperty(this._698aa37b4bcfa02eb23c098b,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揢握持捶挃捌挚挃掷揁掁握捿揔掓揈挕掣揭掏掼捹捨挝挚掑挊捾揸揆接授挘掾","探捌挎捊揿揹挈掔揬揩掛挑捂挓捍揶"));
         this._f2230f1d0bbb8b1f5a4e710b.alpha = -1243174594 ^ -1437204237 ^ 0x34AABD97 ^ 0x2B1A145A;
         this._f2230f1d0bbb8b1f5a4e710b.buttonMode = true;
         this._f2230f1d0bbb8b1f5a4e710b.mouseEnabled = true;
         this._f2230f1d0bbb8b1f5a4e710b.addEventListener(MouseEvent.CLICK,this._6b1d2c00e9d192a5b1ca1812,false,-1882980738 ^ 0x2B91867F ^ -150186967 ^ 0x535E2C28,true);
      }
      
      public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._f2230f1d0bbb8b1f5a4e710b.removeEventListener(MouseEvent.CLICK,this._6b1d2c00e9d192a5b1ca1812);
         this._b6ebadfa6f4be0ff8ed2b7d8 = null;
      }
   }
}

