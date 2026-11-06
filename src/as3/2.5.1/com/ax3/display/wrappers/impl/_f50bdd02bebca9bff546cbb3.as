package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.text.TextField;
   
   public class _f50bdd02bebca9bff546cbb3 extends EventDispatcher implements IAssetWrapper, IAssetWrapperRecursive
   {
      
      private static const _c7ec2498a2fbdaf39485c0ac:Number = -677815765 ^ -1050650719 ^ -1754496711 ^ -2120905551;
      
      private var _asset:DisplayObjectContainer;
      
      public var label:TextField;
      
      public var levelField:TextField;
      
      public var progressBarClip:MovieClip;
      
      private var _cd184f21977e67ccd004897d:int;
      
      private var _d4955e033a7e2012a81fb0f0:int;
      
      private var _ca8c2af3f43e09ba1c0ec0ba:_eb2314ffc37429732989b460;
      
      public function _f50bdd02bebca9bff546cbb3()
      {
         super();
      }
      
      public function get asset() : DisplayObjectContainer
      {
         return this._asset;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         this._ca8c2af3f43e09ba1c0ec0ba = new _eb2314ffc37429732989b460();
         this._ca8c2af3f43e09ba1c0ec0ba.x = -264731652 ^ 0x79B53110 ^ -1384803647 ^ 0x24F8202D;
         this._ca8c2af3f43e09ba1c0ec0ba.y = -452707464 ^ 0x060A7AC6 ^ 0x13ED3665 ^ -253528101;
         this._ca8c2af3f43e09ba1c0ec0ba.graphics.beginFill(-1556328510 ^ -1314322485 ^ 0x1701CFBE ^ 0x0504E727,-1059259823 ^ 0x4FABA7B8 ^ -763377927 ^ 0x5D089B10);
         var _temp_2:* = this._ca8c2af3f43e09ba1c0ec0ba.graphics;
         var _temp_1:* = -1501438284 ^ -3982769 ^ 0x6FC5427E ^ 0x3687A685;
         _temp_2.drawRect(_temp_1,_temp_1,this._asset.width,this._asset.height);
         this._ca8c2af3f43e09ba1c0ec0ba.graphics.endFill();
      }
      
      public function onAssetProcessComplete() : void
      {
         this._asset.addChild(this._ca8c2af3f43e09ba1c0ec0ba);
      }
      
      public function setLevel(param1:int) : void
      {
         this.levelField.text = String(param1);
      }
      
      public function setValue(param1:int, param2:int, param3:int, param4:Boolean = false) : void
      {
         var _loc5_:Number = NaN;
         this.nextExpLim = param3;
         if(param3 - param2 > (-18523486 ^ 0x682B39F5 ^ 0x5BAB00E2 ^ -848993355))
         {
            if(param1 < param2)
            {
               this.label.text = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掓揄掺指掀捋捋捙捰捘挥捸","挅掉挰指捵捦揔握捣掙捇掽措探授掄");
               this.progress = -881194893 ^ -658876893 ^ 0x03EB8844 ^ 0x102BD614;
            }
            else if(param1 >= param3)
            {
               this.label.text = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၺရჟჇႏႲႈၝძვၦႚၘႣ၇჎","၍ၑဋၗზკဌၢ၂ძჾင္ပၼႶ");
               this.progress = -1262972768 ^ 0x1B9C007D ^ 0x5FB059C5 ^ -258684647;
            }
            else
            {
               _loc5_ = (param1 - param2) / (param3 - param2);
               if(param1 <= this.userExp)
               {
                  this.label.text = String(Math.floor(_loc5_ * (0x66C0CD15 ^ -466902118 ^ 0x022EBC8C ^ -2134519193))) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("創划勤刱刻剨努刏劑勆","剋剛列刂劒勋劐刲募利勰刘剚勎勏剓");
                  this.progress = _loc5_;
                  dispatchEvent(new Event(_67f8febc099eaa05c48aa41e.END_EXP_TWEEN));
               }
               else
               {
                  if(this.progressBarClip.scaleX > _loc5_)
                  {
                     this.progress = 0x337B7DBC ^ 0x640AAEFE ^ -1458208713 ^ -26979467;
                  }
                  if(param4)
                  {
                     this.progressBarClip.scaleX = _loc5_;
                     this.label.text = String(Math.floor(this.progressBarClip.scaleX * (0x68768765 ^ 0x34B58A72 ^ 0x440EA4FC ^ 0x18CDA98F))) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捻揍挦指揍捃揉掦揈掛","挢揉捄挥掘掾援捵捱掽捜掀插挥掊揊");
                  }
                  else
                  {
                     TweenCube.to(this.progressBarClip,_c7ec2498a2fbdaf39485c0ac,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刔劦刟劮勡刲剓刯勋刚刼劙勇务功勦剧剝剋勛","勆務剶勍劐劺劺勣剕勶勃刐劖剆剝劐")):_loc5_},{
                        (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勷剔勇募刖勛効劼勶剒劋劀剿刴剌剴刈勭剿劘勶剋剏刨","勋勪剧列剻勇勧勷剨勅剮别刲剸劺剜")):this._647c8ab995cab7b486256524,
                        (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剉剿劉劇办劎刈劙勚剛刐割剿勺劗刬刘刐勂勓勁努刟刯勧勨勫勻","勔勃刿剳劥剸劚刚勃勡剼勠判剡勡劧")):this._dc4bbeb8e61b53d2384cf1a0
                     });
                  }
               }
            }
         }
         else
         {
            this.label.text = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႕ეღჴး႓ၡႠჰႉჁႱဆ၈","Ⴝ၀ნၱၖႸေႿႥჷၝၧჁခဍၽ");
            this.progress = 0x76CCB98A ^ 0x1750077D ^ -1568557701 ^ -1021506675;
         }
         this.userExp = param1;
      }
      
      public function set progress(param1:Number) : void
      {
         this.progressBarClip.scaleX = param1;
      }
      
      private function _647c8ab995cab7b486256524() : void
      {
         this.label.text = String(Math.floor(this.progressBarClip.scaleX * (-1772492293 ^ -314614693 ^ 0x550DC34E ^ 0x2E6B768A))) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捸揇掆揦挹揁据掂掀挟","掯挊掙捇揽捲捶捯掹揉挅捨挧挻揂捄");
      }
      
      private function _dc4bbeb8e61b53d2384cf1a0() : void
      {
         dispatchEvent(new Event(_67f8febc099eaa05c48aa41e.END_EXP_TWEEN));
      }
      
      public function set userExp(param1:int) : void
      {
         this._d4955e033a7e2012a81fb0f0 = param1;
         this._ca8c2af3f43e09ba1c0ec0ba.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劸勉劅勰剦劮勏初劍加劸勝剟勦劃副","劲勹剞初剜勥劈刾剜動劶剝募助前励")):String(this._d4955e033a7e2012a81fb0f0) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捍挃揋捗挮捷挻挽揵捑","掝捶推揷掬挈掑捇揦掤揺掴換揦捜捵") + String(this._cd184f21977e67ccd004897d)};
      }
      
      public function get userExp() : int
      {
         return this._d4955e033a7e2012a81fb0f0;
      }
      
      public function set nextExpLim(param1:int) : void
      {
         this._cd184f21977e67ccd004897d = param1;
         this._ca8c2af3f43e09ba1c0ec0ba.tooltipConfig = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၞယ႙၄မႄႹႥკႣႩႛၯၹဝဘ","၃ၾေ့ყဩბၑრထეၩၿႶဿႼ")):String(this._d4955e033a7e2012a81fb0f0) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၁ၕყჿၠჰဠၮჶႻ","ჶ႓ႥအအဂဆကႫႾႀწၵႮဉၾ") + String(this._cd184f21977e67ccd004897d)};
      }
      
      public function get width() : Number
      {
         return this._asset.width;
      }
      
      public function get x() : int
      {
         return this._asset.x;
      }
      
      public function set x(param1:int) : void
      {
         this._asset.x = param1;
      }
      
      public function get visible() : Boolean
      {
         return this._asset.visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._asset.visible = param1;
      }
   }
}

