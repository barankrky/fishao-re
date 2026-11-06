package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.buttons.ButtonState;
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.view.buttons.FishaoBaseButton;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class FishaoButtonWrapper extends ShiftWrapper implements IAssetWrapper
   {
      
      public var data:Object;
      
      protected var _button:*;
      
      protected var _buttonCls:Class = FishaoBaseButton;
      
      protected var fishBucks_icon:MovieClip;
      
      protected var fishCoins_icon:MovieClip;
      
      protected var hasCurrnsyIcons:Boolean = false;
      
      public function FishaoButtonWrapper()
      {
         super();
         this._buttonCls = FishaoBaseButton;
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         _child.x = -1908047087 ^ -1407285175 ^ 0x480E0CF4 ^ 0x6A5507AC;
         _child.y = 0x79E539E1 ^ -1070661456 ^ 0x2FC8947C ^ -1778209491;
         if(_child is MovieClip && MovieClip(_child).totalFrames > (0x709316C2 ^ 0x56F36154 ^ 0x41A427BE ^ 0x67C45029))
         {
            MovieClip(_child).gotoAndStop(-482394751 ^ 0x121ED182 ^ 0x54A955E2 ^ -1517766176);
         }
         var _loc2_:StandardBitmapButtonConfiguration = new StandardBitmapButtonConfiguration();
         _loc2_.asset = _child;
         if(_child is DisplayObjectContainer)
         {
            if(DisplayObjectContainer(_child).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勱勔助勿劖劀刞劕勅別勭勣剫劲劲刭勣勈","划劜刃勿刱勷刚刽勏刭功劜分劷刅勱")))
            {
               _loc2_.labelField = TextField(DisplayObjectContainer(_child).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掍捦捆捎接掣揋捑挪掆揁握捦掝捒挬揽掝","掮揜掜捓捧挽捞揧挝挏据揋捳揻換描")));
            }
            if(DisplayObjectContainer(_child).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捄捱捂捒掋掾掑掃捎揬捋捤捌掚掴揨揚捵掗探挗指捂揢挛挷捎掝掙捌揶挽掭揩揊揂","捤捹掽揜挾挷揨措掅捘揍捃捲挤揵揞")) != null && DisplayObjectContainer(_child).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勗剢剮剳刃初刃剋剄剋剖剫勩劒剕剩劚劮勆刜刦勭剓勻动勞刼勿刕剋剠刉努勘劦刄","剽勿劳剹删剗剽劚勏加刮刃判加勎劼")) != null)
            {
               this.fishBucks_icon = MovieClip(DisplayObjectContainer(_child).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႥႻჰჵ႓ူရဗჽ႒ႈჁ၏რႝဦဎ၃ာჭဩ႙უဴ၎ႛေႿႄဵၥဴဩဇ၌ၺ","მၷჅၼეႈჟႹျ၇჈ၪႬဃ႖ဉ")));
               this.fishCoins_icon = MovieClip(DisplayObjectContainer(_child).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴈჿဂညဇდ၈ႇဎხၸჼ၇ဦှ႕ၳၨၒს၂ႲေႎႹႁၵႁ႞ျ၀ၱၔ႞ဍႤ","၁ၠ႖ႎံ၊ၬჵ႖Ⴧဉ၌၃ၫႰဓ")));
               this.hasCurrnsyIcons = true;
            }
         }
         this._button = new this._buttonCls(_loc2_,null);
         addChild(this._button);
      }
      
      public function set handler(param1:Function) : void
      {
         this._button.handler = param1;
      }
      
      public function showFishCoinsIcon() : void
      {
         this.fishBucks_icon.visible = false;
         this.fishCoins_icon.visible = true;
      }
      
      public function showFishBucksIcon() : void
      {
         this.fishBucks_icon.visible = true;
         this.fishCoins_icon.visible = false;
      }
      
      public function disable() : void
      {
         this._button.disable();
      }
      
      public function enable() : void
      {
         this._button.enable();
      }
      
      public function enabled() : Boolean
      {
         return this._button.enabled;
      }
      
      public function remove() : void
      {
         removeChild(this._button);
      }
      
      public function setFiltersForState(param1:ButtonState, param2:Array) : void
      {
         this._button.setFiltersForState(param1,param2);
      }
      
      public function set label(param1:String) : void
      {
         this._button.label = param1;
      }
      
      public function get label() : String
      {
         return this._button.label;
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this._button.addEventListener(param1,param2,param3,param4,param5);
      }
   }
}

