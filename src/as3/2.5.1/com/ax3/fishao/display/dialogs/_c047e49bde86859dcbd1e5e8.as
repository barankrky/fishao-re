package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.wrappers.impl._03cf4a1c7de9f33d761a6a1d;
   import com.ax3.display.wrappers.impl._69dc8523ff82edb3720bd8e2;
   import com.ax3.display.wrappers.impl._73f5d17d09eb8739d4a22162;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.display.wrappers.impl._ddf29697ecb85732c2e48007;
   import com.ax3.fishao.model.vo._849cfb7e3d3f1f15ce0c680a;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs._8071087ebe26c264282580d0;
   import com.ax3.fishao.view.wrappers.impl._6b91a781d828662e84e05553;
   import flash.events.MouseEvent;
   
   public class _c047e49bde86859dcbd1e5e8 extends _8071087ebe26c264282580d0
   {
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var title:_6b91a781d828662e84e05553;
      
      public var list:_03cf4a1c7de9f33d761a6a1d;
      
      public var fishcoinsIndicator:_ddf29697ecb85732c2e48007;
      
      public var fishbucksIndicator:_73f5d17d09eb8739d4a22162;
      
      public var items:Vector.<_849cfb7e3d3f1f15ce0c680a> = new Vector.<_849cfb7e3d3f1f15ce0c680a>();
      
      public function _c047e49bde86859dcbd1e5e8()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掌捂揪揘揍揎捩捰掾接掁揦掊捧握揦揲捀掍捚捓揃揝掷掽揯持掽探掌挔揇揳揰捻捾按捫挛捄挸掾揈掤挛挘揹揞","掂掁掊掩揅掦掏挗掄掝揲掩掰掙掏换");
         super(_loc1_);
         _canClosedByEsc = false;
      }
      
      public function _e4382dd0c880f8636c6d2eea(param1:Vector.<_849cfb7e3d3f1f15ce0c680a>) : void
      {
         var _loc2_:int = 0x16B7AB70 ^ 0x1B90562F ^ 0x14806ED5 ^ -1767902225;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x31119938 ^ 0x7D82D676 ^ -1551692060 ^ 0x602821CE))
            {
               case 0:
                  return;
               case 1:
                  this.items = param1;
                  if(this.list != null)
                  {
                     _loc2_ = -2047877702 ^ -780594807 ^ 0x4AF532FC ^ -1856266583;
                  }
                  else
                  {
                     _loc2_ = 0x5E2766B1 ^ -96113697 ^ 0x6E65C03F ^ 0x453FAD35;
                  }
                  break;
               case 2:
                  this._3464f9eb2c8c0167a9aaa4dd();
                  _loc2_ = 0x05C15A2C ^ 0x5D357CFB ^ -1097940211 ^ 0x694285BE;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _3464f9eb2c8c0167a9aaa4dd() : void
      {
         var _loc1_:_849cfb7e3d3f1f15ce0c680a = null;
         var _loc2_:_69dc8523ff82edb3720bd8e2 = null;
         var _loc3_:Vector.<_849cfb7e3d3f1f15ce0c680a> = this.items;
         this.list.removeAll();
         for each(_loc1_ in _loc3_)
         {
            _loc2_ = _69dc8523ff82edb3720bd8e2(this.list.add(_loc1_));
            _loc2_.buyHandler = this.buyHandler;
         }
      }
      
      protected function buyHandler(param1:_849cfb7e3d3f1f15ce0c680a, param2:int) : void
      {
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         var _loc1_:int = 0x070AC72B ^ 0x2C5C126F ^ 0x3E152335 ^ 0x086F7DA4;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1335116722 ^ 0x43118601 ^ -987378749 ^ 0x2B737A59))
            {
               case 0:
                  this.closeButton.handler = this._224d8ff22bc3c385f0ff599a;
                  this.title.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剑刄劺刨勎刑剧刣劳勲列剖勡刽剳刴剛勦初劸劈剑劥劖劗加勴劳划刼務剝勉勆加分刃剹劔励劓刣勼刵剴勐別券劢剥剖券剝制刐势劒刅劐刉","删刖刣刾劵劥刯勁努刞勚劆剙剷労剺"));
                  if(GameSwf.instance != null)
                  {
                     _loc1_ = 0x0999E254 ^ -2123843107 ^ -71913604 ^ 0x6E6B7F21;
                  }
                  else
                  {
                     _loc1_ = -2018483279 ^ 0x04C5166F ^ -1814990805 ^ 0x0D888E22;
                  }
                  break;
               case 1:
                  this.fishcoinsIndicator.addButton.handler = GameSwf.instance._e6f0a7b005cacf7751286e97;
                  this.fishbucksIndicator.addButton.handler = GameSwf.instance._cb81036d0354ae254b0556b1;
                  _loc1_ = 0x5530DD6E ^ 0x46FDBFB8 ^ 0x78978969 ^ 0x76766068;
                  break;
               case 2:
                  super._935ac2966ddad68dfc449202();
                  this._c253fa7e09283fa181e79b00();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _224d8ff22bc3c385f0ff599a(param1:MouseEvent) : void
      {
         close();
      }
      
      public function _c253fa7e09283fa181e79b00() : void
      {
         var _loc1_:_b6959442d774100015b69ffa = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_69dc8523ff82edb3720bd8e2);
         _loc1_.process(this.list.itemTemplate);
         this.list.gap = -328828540 ^ 0x70B04832 ^ 0x467455F2 ^ -626891711;
         this.list.itemFactory = _loc1_;
         this._3464f9eb2c8c0167a9aaa4dd();
      }
   }
}

