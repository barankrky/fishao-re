package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _673d599f29b98bd046581e54 implements IAssetWrapper
   {
      
      private var _66974c82e9f50bf82b1399c8:TextField;
      
      private var _3f94ae3332822bb13d34c778:Function;
      
      private var _1c2a0c5cd749da776dabdc39:FishaoButtonWrapper;
      
      public function _673d599f29b98bd046581e54()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._66974c82e9f50bf82b1399c8 = TextField(DisplayObjectContainer(param1).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႑ႷႤႶႡ჆ႴჼჄစႵဓჶထူჴၲႸႝႢღဇဲႀၼႯအსႽპ","ძၾၰႿ႖ჹႫဌငႵჼၯၗႜႆၬ")));
         this._1c2a0c5cd749da776dabdc39 = new FishaoButtonWrapper();
         this._1c2a0c5cd749da776dabdc39.process(DisplayObjectContainer(param1).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挵损捒授揯挲掯揓掖挗揕揝掫换挡揸捹掇","掏掴掘揌揭揅挟捝捰捬挮揇掑挚掬掟")));
         this._1c2a0c5cd749da776dabdc39.visible = false;
         this._66974c82e9f50bf82b1399c8.text = this._bbc46c7f6ae2543bde8f5ad0;
         this._66974c82e9f50bf82b1399c8.addEventListener(MouseEvent.CLICK,this._8547fb3e7ca9036a3a91f2bf);
         this._1c2a0c5cd749da776dabdc39.addEventListener(MouseEvent.CLICK,this._93cdaaa5ac2cae09b2912d6a);
         this._66974c82e9f50bf82b1399c8.addEventListener(KeyboardEvent.KEY_UP,this._624bf3c84be33460a4d34392);
      }
      
      private function get _bbc46c7f6ae2543bde8f5ad0() : String
      {
         return _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捌揩掞揇揽掰掓挽捹掙揸掌持握挿揹捈揉挑掏挅挿掸揭挨揋揮揅挃援捩揇捠措","掬捒掃挝掺揌挈揻掣揁挕捧措捡揸捆"));
      }
      
      private function _624bf3c84be33460a4d34392(param1:KeyboardEvent) : void
      {
         this._3f94ae3332822bb13d34c778(this._66974c82e9f50bf82b1399c8.text);
      }
      
      public function _93cdaaa5ac2cae09b2912d6a(param1:MouseEvent = null) : void
      {
         this._66974c82e9f50bf82b1399c8.text = this._bbc46c7f6ae2543bde8f5ad0;
         this._3f94ae3332822bb13d34c778("");
         this._66974c82e9f50bf82b1399c8.width = 0x36E8A8AD ^ -566378152 ^ 0x03D314F7 ^ -351896142;
         this._1c2a0c5cd749da776dabdc39.visible = false;
      }
      
      private function _8547fb3e7ca9036a3a91f2bf(param1:MouseEvent) : void
      {
         var _loc2_:int = -1984340755 ^ -1360582464 ^ 0x7B13D587 ^ 0x0A03F633;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x556F3FAD ^ -1836773268 ^ 0x56F49765 ^ -950997187))
            {
               case 0:
                  if(this._66974c82e9f50bf82b1399c8.text == this._bbc46c7f6ae2543bde8f5ad0)
                  {
                     _loc2_ = 0x3C1331A2 ^ 0x3F33D34C ^ 0x31C9F2F4 ^ 0x64A74781;
                  }
                  else
                  {
                     _loc2_ = 0x1E6F9C49 ^ 0x6244B4C5 ^ -1503826633 ^ -1942482397;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._66974c82e9f50bf82b1399c8.text = "";
                  this._1c2a0c5cd749da776dabdc39.visible = true;
                  this._66974c82e9f50bf82b1399c8.width = -1336515659 ^ -1502326246 ^ 0x616D7CD4 ^ 0x774F4DE4;
                  _loc2_ = -772059618 ^ 0x4E6B8D81 ^ 0x3DAEB472 ^ -193978251;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set serchCallback(param1:Function) : void
      {
         this._3f94ae3332822bb13d34c778 = param1;
      }
      
      public function get textField() : TextField
      {
         return this._66974c82e9f50bf82b1399c8;
      }
   }
}

