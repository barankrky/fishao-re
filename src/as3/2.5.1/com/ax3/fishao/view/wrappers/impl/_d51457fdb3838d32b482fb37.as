package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class _d51457fdb3838d32b482fb37 extends ShiftWrapper implements IAssetWrapper
   {
      
      private var _19ea394fd894c6d39df71609:MovieClip;
      
      private var _5944d6dee46ee285185bfcb3:Sprite;
      
      private var _f63b35fc286ac655a8cd9917:Number;
      
      private var _a3242faee55cb78feab8e75c:Number;
      
      private var _faab127cd4b1555fb3e97486:Number;
      
      public function _d51457fdb3838d32b482fb37()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         addChild(_child);
         this._19ea394fd894c6d39df71609 = MovieClip(MovieClip(_child).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჿဪჸჼთီႺၚႠႎქგၙჄဧႯ","ဧဦဆၷჼႆႣာၺცၾჄ႕ჾဈၓ")));
         this._19ea394fd894c6d39df71609.gotoAndStop(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჸဖ႑ჴဌဋ႙Ⴇ჏ၪ჉ႄၟၮ၌Ⴏ၅႘၁ၴ","ჶჁ၍ၜ႙Ⴠ჎მဖჀၔ၀ီႡဢჰ"));
         this._19ea394fd894c6d39df71609.buttonMode = true;
         this._5944d6dee46ee285185bfcb3 = Sprite(Sprite(_child).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("握捖捧掬挗掃掫捬挳挲掑揕挨挏捶掉捓揟","揝振挂揪揻掆掻捷捯捶挮挭挝掽挣捣")));
         Sprite(_child).buttonMode = true;
         this._f63b35fc286ac655a8cd9917 = this._5944d6dee46ee285185bfcb3.width;
         this._a3242faee55cb78feab8e75c = this._5944d6dee46ee285185bfcb3.x - this._19ea394fd894c6d39df71609.width / (-1021583984 ^ -371952575 ^ -1618974247 ^ -1253064694);
         this._19ea394fd894c6d39df71609.addEventListener(MouseEvent.MOUSE_DOWN,this._0e1fb3b53ab77705a6238c0c);
         this._19ea394fd894c6d39df71609.addEventListener(MouseEvent.ROLL_OVER,this._4291e77c8cde71e68aa40697);
         this._19ea394fd894c6d39df71609.addEventListener(MouseEvent.ROLL_OUT,this._d70003f2804ae7fbdf216cb8);
         addEventListener(MouseEvent.CLICK,this._7dff5dfcec180e5218d85194);
      }
      
      private function _d70003f2804ae7fbdf216cb8(param1:MouseEvent) : void
      {
         this._19ea394fd894c6d39df71609.gotoAndStop(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捤揾捧挫揮揸挑捤挘揘揻挬捈揌揉捛揞捲捌掽","掃挪揔捠挆揽援揇探挿挷挢捄挋捌揶"));
      }
      
      private function _4291e77c8cde71e68aa40697(param1:MouseEvent) : void
      {
         this._19ea394fd894c6d39df71609.gotoAndStop(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ံთဇာღၔჵႝჁჁ၃ႄၫႀბိ","ရ၌დჲၼ။စႇဤႌფနူာဿჁ"));
      }
      
      private function _7dff5dfcec180e5218d85194(param1:MouseEvent) : void
      {
         this._375b3e83bcea820688126388(mouseX + this._a3242faee55cb78feab8e75c + this._19ea394fd894c6d39df71609.width / (0x5ADF2B72 ^ -1381945998 ^ -227710155 ^ 0x05136D37));
      }
      
      private function _0e1fb3b53ab77705a6238c0c(param1:MouseEvent) : void
      {
         _child.stage.addEventListener(MouseEvent.MOUSE_UP,this._5396e1e73041e90da037c304);
         _child.stage.addEventListener(MouseEvent.MOUSE_MOVE,this._1fbe7c16e5d7163a793d82c7);
      }
      
      private function _5396e1e73041e90da037c304(param1:MouseEvent) : void
      {
         _child.stage.removeEventListener(MouseEvent.MOUSE_UP,this._5396e1e73041e90da037c304);
         _child.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this._1fbe7c16e5d7163a793d82c7);
      }
      
      private function _1fbe7c16e5d7163a793d82c7(param1:MouseEvent) : void
      {
         this._375b3e83bcea820688126388(mouseX);
      }
      
      private function _375b3e83bcea820688126388(param1:Number) : void
      {
         param1 = limit(param1,this._a3242faee55cb78feab8e75c + this._19ea394fd894c6d39df71609.width / (-524630062 ^ -1960248264 ^ 0x03575E38 ^ 0x68C565D0),this._a3242faee55cb78feab8e75c + this._f63b35fc286ac655a8cd9917 + this._19ea394fd894c6d39df71609.width / (-803693261 ^ 0x0A984700 ^ -814986502 ^ 0x15EC90CB));
         this._19ea394fd894c6d39df71609.x = param1;
         this._5944d6dee46ee285185bfcb3.width = this._19ea394fd894c6d39df71609.x - this._a3242faee55cb78feab8e75c;
         var _loc2_:Number = this._f63b35fc286ac655a8cd9917 / (-984938600 ^ -741669703 ^ -2087589279 ^ -1793988316);
         this._faab127cd4b1555fb3e97486 = Math.round(this._5944d6dee46ee285185bfcb3.width / _loc2_) / (0x5E95A948 ^ 0x7C507DDD ^ 0x20C66B20 ^ 0x0203BFD1);
      }
      
      public function set value(param1:Number) : void
      {
         this._faab127cd4b1555fb3e97486 = limit(param1,-1511521018 ^ 0x12708227 ^ -90078945 ^ 0x4D39063E,-1631245963 ^ 0x6C453FA8 ^ 0x0867FF33 ^ -85464593);
         this._375b3e83bcea820688126388(this._f63b35fc286ac655a8cd9917 * this._faab127cd4b1555fb3e97486 + this._a3242faee55cb78feab8e75c);
      }
      
      public function get value() : Number
      {
         return this._faab127cd4b1555fb3e97486;
      }
   }
}

