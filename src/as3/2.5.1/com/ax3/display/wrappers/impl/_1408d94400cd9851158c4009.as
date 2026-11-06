package com.ax3.display.wrappers.impl
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class _1408d94400cd9851158c4009 extends Sprite implements IAssetWrapper, IToolTipTarget
   {
      
      private var _cf3e393b278a5dc3d2bfb9ad:Rectangle;
      
      public var tooltipConfig:Object;
      
      private var _ae8e0c60ff073f6bea13d224:TextField;
      
      public function _1408d94400cd9851158c4009()
      {
         super();
         mouseChildren = false;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._ae8e0c60ff073f6bea13d224 = TextField(param1);
         this._cf3e393b278a5dc3d2bfb9ad = new Rectangle(param1.x,param1.y,param1.width,param1.height);
         ShiftWrapper.shiftDisplayObject(param1,this);
         addChild(param1);
      }
      
      public function set text(param1:String) : void
      {
         this._ae8e0c60ff073f6bea13d224.text = param1;
         this._ae8e0c60ff073f6bea13d224.y = int(this._cf3e393b278a5dc3d2bfb9ad.height / (-112008943 ^ -689316687 ^ 0x5C8F56E8 ^ 0x73346B4A) - this._ae8e0c60ff073f6bea13d224.textHeight / (-381870754 ^ 0x75FBB215 ^ 0x3F1D15CC ^ -1545880955) + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("割勰劄勞勄勱劅划勵勬劘剘刎剿劘劚剀剹剧刽剉募剳刻","劻剩劌劘効剜勿剻努勬勀剐剁勒刱勳"));
      }
      
      public function getTooltipType() : TooltipType
      {
         var _loc1_:int = 0x74CCBE01 ^ -697359521 ^ -1684880130 ^ -367127504;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x01B983D9 ^ -1984761323 ^ 0x07031E9E ^ 0x5C2722C0))
            {
               case 0:
                  return TooltipType.TEXT_TOOLTIP;
               case 1:
                  return null;
               case 2:
                  if(this.tooltipConfig != null)
                  {
                     _loc1_ = -1862705974 ^ -1448418024 ^ -1064859510 ^ 0x2AFB7CCA;
                  }
                  else
                  {
                     _loc1_ = 0x7F61BF98 ^ 0x72C9CBD8 ^ 0x0F5AE730 ^ -773988637;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function getTooltipGlobalPosition() : Point
      {
         return null;
      }
      
      public function getTooltipConfig() : Object
      {
         return this.tooltipConfig;
      }
   }
}

