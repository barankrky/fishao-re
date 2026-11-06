package com.ax3.fishao.view.dialogs.club.pages.base.emblem
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._d3d70238b67f17bb35699a2c;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import flash.display.DisplayObjectContainer;
   
   public class _1c73633a6a4f4f6050258c2a extends _616a1c5d0674d17746366a7f
   {
      
      public function _1c73633a6a4f4f6050258c2a(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
      }
      
      public function set emblemID(param1:int) : void
      {
         this.imageURL = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(ConstantsBase.IMAGE_NAME_CLUB_EMBLEM + param1);
         _d3d70238b67f17bb35699a2c._d7c8729108cc7f2a5c2d5bf5(this.source);
      }
   }
}

