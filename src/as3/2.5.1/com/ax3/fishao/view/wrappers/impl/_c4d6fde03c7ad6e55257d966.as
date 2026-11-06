package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.buttons._81ff3e1c8bfb9de3893ca089;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _c4d6fde03c7ad6e55257d966 extends Sprite implements IAssetWrapper
   {
      
      public var closeCallback:Function;
      
      public var txtRecommended:TextField;
      
      public var imgItem:MovieClip;
      
      public var btnBuyInShop:_81ff3e1c8bfb9de3893ca089;
      
      private var _60f7113d2eabdf43013e6324:DisplayObject;
      
      private var _5055eed161bb2d86a39e62fd:Object;
      
      private var _9bfd6985451ab832d3763bca:int = 0;
      
      public function _c4d6fde03c7ad6e55257d966()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._60f7113d2eabdf43013e6324 = param1;
         ShiftWrapper.shiftDisplayObject(this._60f7113d2eabdf43013e6324,this,true);
         this.txtRecommended = (this._60f7113d2eabdf43013e6324 as MovieClip).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჲႿယဲနႱჳႉႅၑთၽေ჋ၔတ჈ჳဤჀჼ၂မစိტဉၧဗ၁ီၑၢ჌သႋ","Ⴤ჉ဦႠႁၦ္ოၠჾႳ႓Ⴀၶၰთ")) as TextField;
         this.imgItem = (this._60f7113d2eabdf43013e6324 as MovieClip).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劯刣剻勩刐剠剘劓剫剝努剏勵剒剗勫创务刽割劎刈","刈劲制勫勚剨劽劅副勷剪刟剦刼劀勍")) as MovieClip;
         this.btnBuyInShop = new _81ff3e1c8bfb9de3893ca089();
         this.btnBuyInShop.process((this._60f7113d2eabdf43013e6324 as MovieClip).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဨჵဒႹဦႥႜ္რၐဩჩႃႼდဎႂးႰၟႯ်Ⴚნဣ၊ၻစლဒმჯ","ာ႒Ⴃ၍ႪၔႽსႅႈဢჺၮთၵზ")));
      }
      
      public function show(param1:Object, param2:int) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:_a4e47350c89a50d87a148c28 = null;
         this._5055eed161bb2d86a39e62fd = param1;
         this._9bfd6985451ab832d3763bca = param2;
         if(this._9bfd6985451ab832d3763bca == (-83185480 ^ -2146036381 ^ 0x69FCA3AE ^ 0x12E00675))
         {
            this.txtRecommended.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劽勠勊勝判加剢勑刹刜勨刟刳刺则刺勘劒剒刄刎剉勑剈劘剟剬劗劤勛刼剅勐劧劵勀劁前前劃剜劭刊剕副刂剔刱剨劃勓創劌勗剃剪劜刁勷刽","劢剰劧勮勡刈剛勐劂勀劂刋劶勹剃劢"));
         }
         else if(this._9bfd6985451ab832d3763bca == (-1275535727 ^ -785383795 ^ -2122053316 ^ -481089247))
         {
            this.txtRecommended.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挚掺捣捔揈揠揍捿掯捝挧挒捝挓捹挟捛挾掾提捖掾捹揭揃揆挡挎捹挹揱捗揯揬接掵揬捍捆揕揜挒捅揧掐捊揠捄掁挂掸揬掺挅挊掶揷掵挩揆掼挃","挻揳挜挨掫掼挥掃捿揔挾挬捏捫插揦"));
         }
         else if(this._9bfd6985451ab832d3763bca == (-391060769 ^ -2135042299 ^ 0x24147A25 ^ 0x4C194FFD))
         {
            this.txtRecommended.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႨဵႨဩဪတჷၨၡဩჺၐဃდჵႉႨ၈ၶႝზဘႀဣဿၑრავႱမၜၰ჋ძဥ၄უ၇ဥႌႅဝၾၻჂბႸႊၯကဍႵჃჵရႤႝ႒ထငၺ჉რ၎ჸ","ထმ჋ဲპჹႏၘဲႵႉႃ္ၫႷ჈"));
         }
         this.btnBuyInShop.label = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捛掕揂揖掌揧捜挰捠挗挙掄揘挒掅捼据揑捥掗捻挐捹捯捋捆挀揈捰捖揓揰挞捿揯持挄振捳挮揕捺捂揓掙挖挈掝揨捆掝揶","掸挠捁揔捺揊揠掺掓揩挟捧掺揘挰挲"));
         if(this._5055eed161bb2d86a39e62fd)
         {
            _loc3_ = "";
            if(this._9bfd6985451ab832d3763bca == (0x23DC93DF ^ -1244810305 ^ 0x4F895ECA ^ -644317526))
            {
               _loc3_ = _3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_67282af25befe9778e5c8dd1.ROD.name,this._5055eed161bb2d86a39e62fd.id);
            }
            else if(this._9bfd6985451ab832d3763bca == (0x7DF18ABB ^ 0x1E461482 ^ 0x57DA6314 ^ 0x346DFD2C))
            {
               _loc3_ = _3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_67282af25befe9778e5c8dd1.BAIT.name,this._5055eed161bb2d86a39e62fd.id);
            }
            else if(this._9bfd6985451ab832d3763bca == (0x0782948F ^ -1049487206 ^ -1610508619 ^ 0x66F11AA2))
            {
               if(this._5055eed161bb2d86a39e62fd.type_id == _67282af25befe9778e5c8dd1.LUCK_POTION.id)
               {
                  _loc3_ = _3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_67282af25befe9778e5c8dd1.LUCK_POTION.name,this._5055eed161bb2d86a39e62fd.id);
               }
               else if(this._5055eed161bb2d86a39e62fd.type_id == _67282af25befe9778e5c8dd1.MAGIC_WATCH.id)
               {
                  _loc3_ = _3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_67282af25befe9778e5c8dd1.MAGIC_WATCH.name,this._5055eed161bb2d86a39e62fd.id);
               }
            }
            if(this._5055eed161bb2d86a39e62fd.price_fishcoins > (-1619825970 ^ 0x057779ED ^ 0x16E82B1B ^ -1930676168))
            {
               if(this._5055eed161bb2d86a39e62fd.appear_in_shop != null)
               {
                  if(this._5055eed161bb2d86a39e62fd.appear_in_shop == (-1369480774 ^ 0x6A5F5119 ^ -1412816599 ^ 0x6FCA118B))
                  {
                     this.btnBuyInShop.handler = this._117d47ec33f76b104bf959f9;
                  }
                  else
                  {
                     this.btnBuyInShop.visible = false;
                  }
               }
               else
               {
                  this.btnBuyInShop.handler = this._117d47ec33f76b104bf959f9;
               }
            }
            else
            {
               this.btnBuyInShop.visible = false;
            }
            _loc4_ = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_loc3_);
            _loc5_ = new _a4e47350c89a50d87a148c28(null);
            _loc5_.width = 0x3165A3CD ^ -618518769 ^ 0x01C3EA60 ^ -343642590;
            _loc5_.height = -585638156 ^ 0x1AE79D1F ^ -808422027 ^ 0x0820361E;
            app.resourceManager.replaceBitmapDataFromURL(_loc5_,_loc4_);
            this.imgItem.addChild(_loc5_);
            ShiftWrapper.shiftDisplayObject(this.imgItem,_loc5_);
         }
      }
      
      private function _117d47ec33f76b104bf959f9(param1:MouseEvent) : void
      {
         GameSwf.instance._904abe67d8849826ace64512(this._9bfd6985451ab832d3763bca,this._5055eed161bb2d86a39e62fd.id);
         this.closeCallback.apply();
      }
   }
}

