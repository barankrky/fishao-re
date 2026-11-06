package com.ax3.fishao.view.wrappers.impl
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.buttons.FrameBaseButton;
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class FrameButtonWrapper extends ShiftWrapper implements IAssetWrapper
   {
      
      protected var _button:FrameBaseButton;
      
      protected var _buttonCls:Class = FrameBaseButton;
      
      public function FrameButtonWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         var _loc2_:StandardBitmapButtonConfiguration = new StandardBitmapButtonConfiguration();
         _loc2_.asset = _child;
         if(_child is DisplayObjectContainer && Boolean(DisplayObjectContainer(_child).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဤႷဍၯႷဴႶ႘႞၊ပႤဗဩႲၷႝ႑","ၯႠჱဿ၈ႄၕႥႵႷဩჳၙၴჺႚ"))))
         {
            _loc2_.labelField = TextField(DisplayObjectContainer(_child).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ნံ႞ဎဵს႖ၘပ႒ဴႽၓူဃჟჇဓ","ႢမႣဌိံო၇ჼ჉Ⴈრჶၾံၚ")));
         }
         this._button = new this._buttonCls(_loc2_,null);
         addChild(this._button);
      }
      
      public function set handler(param1:Function) : void
      {
         this._button.handler = param1;
      }
      
      public function disable() : void
      {
         this._button.disable();
      }
      
      public function enable() : void
      {
         this._button.enable();
      }
      
      public function get enabled() : Boolean
      {
         return this._button.enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this._button.enabled = param1;
      }
      
      public function remove() : void
      {
         removeChild(this._button);
      }
      
      public function set label(param1:String) : void
      {
         this._button.label = param1;
      }
      
      public function set label2(param1:String) : void
      {
         var _loc2_:int = 0x45790875 ^ 0x50E3B72D ^ -569693043 ^ -456144847;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6897AC36 ^ -1985247561 ^ 0x3E95B375 ^ -252198384))
            {
               case 0:
                  if(DisplayObjectContainer(_child).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劢勆勢劌剴劒剁剨劫勇勮剤劑势劜刋剁勧勰刏","剢剒励劻劼劫劫刋劓刏劏劆勐勔刟剋")) != null)
                  {
                     _loc2_ = -1453058970 ^ -1516939121 ^ 0x6FF529BE ^ 0x4C5A3EB1;
                  }
                  else
                  {
                     _loc2_ = 0x05859246 ^ -280139308 ^ 0x6EFEAF41 ^ -1419243722;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  TextField(DisplayObjectContainer(_child).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勨劒剀刷勃剉刁劎勰刴劣刵創勤剅勌勉勴劈刘","刄刋前刎剗勐刻刅劋剉刓勡勨劝劦利"))).text = param1;
                  _loc2_ = -1154066211 ^ -176217191 ^ 0x4F22745B ^ 0x2E3554FA;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function click() : void
      {
         this._button.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
      
      public function set tooltipConfig(param1:Object) : void
      {
         this._button.tooltipConfig = param1;
      }
      
      public function get button() : FrameBaseButton
      {
         return this._button;
      }
      
      public function hide() : void
      {
         this._button.visible = false;
      }
      
      public function show() : void
      {
         this._button.visible = true;
      }
   }
}

