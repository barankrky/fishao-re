package com.ax3.fishao.view.dialogs.trade.controllers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.buttons.ButtonState;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.config._1137556d0c60e275233e9d5d;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.trade.model._05c4e1b6af1696aeeffa56de;
   import com.ax3.fishao.view.dialogs.trade.model._4351b8ab79e2546483fbcaab;
   import com.ax3.fishao.view.dialogs.trade.model._664206d546fdcb718f944b31;
   import com.ax3.fishao.view.dialogs.trade.model._f3cf344e3850578c3978a02c;
   import com.ax3.fishao.view.dialogs.trade.views._6d7e55d3e1b3cc349100f419;
   import com.ax3.utils.ColorMatrix;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   
   public class _0efd1708c978d0fe0983d06e extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _aa20cd0845f9d19e07fb19b3:_6d7e55d3e1b3cc349100f419;
      
      private var _49296a838e408a1146cd0d05:_664206d546fdcb718f944b31;
      
      private var _d6edf79ca56664e9288a6f06:String;
      
      public function _0efd1708c978d0fe0983d06e(param1:_664206d546fdcb718f944b31, param2:DisplayObjectContainer)
      {
         this._aa20cd0845f9d19e07fb19b3 = new _6d7e55d3e1b3cc349100f419(this,param2);
         this._49296a838e408a1146cd0d05 = param1;
         super(this._aa20cd0845f9d19e07fb19b3);
         this.init();
      }
      
      public function set state(param1:String) : void
      {
         var _loc2_:int = -372750401 ^ 0x77C7712A ^ 0x404A0240 ^ -1029894438;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-3950753 ^ 0x1F3F54D5 ^ 0x1AF09667 ^ -422293536))
            {
               case 0:
                  this._d6edf79ca56664e9288a6f06 = param1;
                  this.updateState();
                  return;
               case 1:
                  return;
               case 2:
                  if(param1 == this._d6edf79ca56664e9288a6f06)
                  {
                     _loc2_ = 0x3C65704C ^ 0x3FCAAFB0 ^ 0x0CAB3C5D ^ 0x13DCD9AD;
                  }
                  else
                  {
                     _loc2_ = -1161691347 ^ 0x6AECD56B ^ -1220151901 ^ 0x7BB0E5E8;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:_664206d546fdcb718f944b31 = null;
         var _loc4_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         var _loc5_:_f3cf344e3850578c3978a02c = GameSwf.instance.managerTrade.tradeModel;
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._aa20cd0845f9d19e07fb19b3.source:
                  §§push(-632270282 ^ 0x25D60E96 ^ 0x201204A7 ^ -543926265);
                  break;
               case this._aa20cd0845f9d19e07fb19b3.buttonRemove:
                  §§push(0x3AC37505 ^ 0x287D3625 ^ 0x7A37A3CD ^ 0x6889E0EC);
                  break;
               default:
                  §§push(0x7E719707 ^ 0x02DB0979 ^ -97794856 ^ -2038343004);
            }
            switch(§§pop())
            {
               case 0:
                  _loc3_ = _664206d546fdcb718f944b31.clone(this._49296a838e408a1146cd0d05);
                  if(_loc3_.type.isQuantitySeparable || _loc3_.type == _67282af25befe9778e5c8dd1.DECORATION)
                  {
                     (_0737efdbd5337ba3fbc64b2e.getInstance()._f42ac7342cf11c48018af906() as _4351b8ab79e2546483fbcaab).controllerTradeDialog.controllerAmountDialog.show(_loc3_);
                  }
                  else
                  {
                     _loc5_._a29ed57364e972f40eacc918(_loc3_);
                  }
                  break;
               case 1:
                  _loc5_._0b6d97ecc581214d8d9cbdd5(this._49296a838e408a1146cd0d05);
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      private function _e2e8ec3e54c12c1d0befb3b7(param1:MouseEvent) : void
      {
         var _loc2_:int = -50876156 ^ -2049845861 ^ -257444393 ^ 0x65C733A2;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-180872161 ^ 0x37E252D3 ^ 0x343A5F71 ^ 0x1AA6F357))
            {
               case 0:
                  if(this._aa20cd0845f9d19e07fb19b3.state == ButtonState.DISABLED)
                  {
                     _loc2_ = 0x7BF6E91D ^ -1715642855 ^ -248132112 ^ -13068260;
                  }
                  else
                  {
                     _loc2_ = -1665808232 ^ -978356798 ^ 0x287B2900 ^ -1658358095;
                  }
                  break;
               case 1:
                  this._4f254116765eb1a39d6712be(this._aa20cd0845f9d19e07fb19b3.source,param1);
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _2b8173130bebb15f6dca1c9f(param1:MouseEvent) : void
      {
         var _loc2_:int = -2109577120 ^ -2017490372 ^ -951356850 ^ 0x3A1863F3;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x349CA3F7 ^ -935930087 ^ 0x0806CBF8 ^ 0x0C024CF7))
            {
               case 0:
                  if(this._aa20cd0845f9d19e07fb19b3.state == ButtonState.DISABLED)
                  {
                     _loc2_ = -1146706659 ^ -71511489 ^ 0x04AE3EA8 ^ -1139099031;
                  }
                  else
                  {
                     _loc2_ = 0x02239EF6 ^ -1485010861 ^ -1029860925 ^ -1620282234;
                  }
                  break;
               case 1:
                  this._aa20cd0845f9d19e07fb19b3.state = ButtonState.OVER;
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _c9b821dfd0e186621c4e3b33(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x04942881 ^ -1000175570 ^ -1294894191 ^ -1932629668;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x3952A53E ^ -884169820 ^ 0x7BF79909 ^ 0x77002DF1))
            {
               case 0:
                  if(this._aa20cd0845f9d19e07fb19b3.state == ButtonState.DISABLED)
                  {
                     _loc2_ = -404833005 ^ -1926168888 ^ -871677885 ^ 0x580CB1F8;
                  }
                  else
                  {
                     _loc2_ = -757170979 ^ 0x35667246 ^ -901992770 ^ -747826618;
                  }
                  break;
               case 1:
                  this._aa20cd0845f9d19e07fb19b3.state = ButtonState.OVER;
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _0b366b73b6edc185e2995ba2(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x4C352274 ^ -547946055 ^ -1650715310 ^ 0x5DD0B3A5;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1243040170 ^ -479750388 ^ 0x0DDA0FDC ^ 0x087BABBC))
            {
               case 0:
                  if(this._aa20cd0845f9d19e07fb19b3.state == ButtonState.DISABLED)
                  {
                     _loc2_ = -687344515 ^ -90683464 ^ 0x5BF58A72 ^ 0x2544BC8C;
                  }
                  else
                  {
                     _loc2_ = 0x4FC99EE8 ^ 0x3C9DEFF4 ^ -390969066 ^ -926368462;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._aa20cd0845f9d19e07fb19b3.state = ButtonState.NORMAL;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         this._1b58ca7213949a93724d34fe();
         this._e8af223070ba369f1bdb2025();
         this._d332e6cbbc103ed20818a4d8();
         this._72408d32cb3d24ad65ecf099();
      }
      
      private function _e8af223070ba369f1bdb2025() : void
      {
         this._aa20cd0845f9d19e07fb19b3.amount = this._49296a838e408a1146cd0d05.quantity;
         this._aa20cd0845f9d19e07fb19b3.amountVisible = this._49296a838e408a1146cd0d05.quantity > (-2089448586 ^ 0x69E7A679 ^ 0x339EC6D0 ^ -653464609) || this._49296a838e408a1146cd0d05.type == _67282af25befe9778e5c8dd1.FISHBUCKS;
      }
      
      private function _d332e6cbbc103ed20818a4d8() : void
      {
         var _loc1_:_a4e47350c89a50d87a148c28 = null;
         this._aa20cd0845f9d19e07fb19b3.imagePlaceholder.removeChildren();
         if(this._49296a838e408a1146cd0d05.imageUrl != null)
         {
            _loc1_ = new _a4e47350c89a50d87a148c28(null);
            _loc1_.width = this._aa20cd0845f9d19e07fb19b3.imagePlaceholderSize.x;
            _loc1_.height = this._aa20cd0845f9d19e07fb19b3.imagePlaceholderSize.y;
            app.resourceManager.replaceBitmapDataFromURL(_loc1_,this._49296a838e408a1146cd0d05.imageUrl);
            if(this._49296a838e408a1146cd0d05.type == _67282af25befe9778e5c8dd1.FISH_SHINY)
            {
               this._26a4a98c471aa4c8643927d8(_loc1_);
            }
            this._aa20cd0845f9d19e07fb19b3.imagePlaceholder.addChild(_loc1_);
            if(this._49296a838e408a1146cd0d05.type == _67282af25befe9778e5c8dd1.ROD)
            {
               this._aa20cd0845f9d19e07fb19b3.imagePlaceholder.filters = _1137556d0c60e275233e9d5d._73f81f08b04bb9864237b7db(this._49296a838e408a1146cd0d05.infoId,this._49296a838e408a1146cd0d05.color);
            }
         }
      }
      
      private function _26a4a98c471aa4c8643927d8(param1:_a4e47350c89a50d87a148c28) : void
      {
         var _loc2_:Array = [];
         var _loc3_:_cff30366d510ea862540bfef = app.fishDict.get(this._49296a838e408a1146cd0d05.id) as _cff30366d510ea862540bfef;
         var _loc4_:ColorMatrix = new ColorMatrix();
         _loc4_.adjustHue(_loc3_.hueShiftOfShiny);
         var _loc5_:ColorMatrixFilter = new ColorMatrixFilter(_loc4_.matrix);
         _loc2_.push(_loc5_);
         param1.filters = _loc2_;
      }
      
      private function _72408d32cb3d24ad65ecf099() : void
      {
         if(this._49296a838e408a1146cd0d05.name != null)
         {
            this._aa20cd0845f9d19e07fb19b3.viewTooltipHandleArea._09d32aad035d4c6f4097c78b();
            this._aa20cd0845f9d19e07fb19b3.viewTooltipHandleArea.tooltipText = this._49296a838e408a1146cd0d05.description == null ? this._49296a838e408a1146cd0d05.name : this._49296a838e408a1146cd0d05.name + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("到劭勻削劤刽劎勖刺勒","刾剮剖剞劄功劢刃勁剶劏劭劁勷剼勘") + this._49296a838e408a1146cd0d05.description;
         }
      }
      
      private function updateState() : void
      {
         switch(this._d6edf79ca56664e9288a6f06)
         {
            case _05c4e1b6af1696aeeffa56de.ETIS_INVENTORY:
               §§push(-1150701139 ^ 0x7D4EEC12 ^ -239077636 ^ 0x3798AB43);
               break;
            case _05c4e1b6af1696aeeffa56de.ETIS_OFFER_OWNER:
               §§push(-305564273 ^ -1181552133 ^ -1089295997 ^ -347525642);
               break;
            case _05c4e1b6af1696aeeffa56de.ETIS_OFFER_TARGET:
               §§push(0x5FBE6022 ^ -1861909293 ^ 0x36D8FD45 ^ -127723082);
               break;
            default:
               §§push(0x31EA0060 ^ -1163543296 ^ -1294560122 ^ 0x399929E5);
         }
         switch(§§pop())
         {
            case 0:
               this._aa20cd0845f9d19e07fb19b3.buttonRemove.visible = false;
               this._36c62c4b30b2b5ae21883798();
               break;
            case 1:
               this._aa20cd0845f9d19e07fb19b3.buttonRemove.visible = true;
               this.disable();
               break;
            case 2:
               this._aa20cd0845f9d19e07fb19b3.buttonRemove.visible = false;
               this.disable();
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揦掬掕揘揫挕捌捞探挭掽掼揎揼握捂捐挰授捊挰挸掯捎捿挦揢揼持挎挊捽挐挻挴据挴探授掞揘捍挧掰揼掵揿挋挜挱揁掽挒挖掱揿挸换捖掬挏換揚提揁掵揆掷捭揸捞挌捫捐挪捯捠指揈挨採揕捗揄揭挬授挶掸揺捲捲挖掼","掔揱揠挲挃揪捠揪捉捰握授揎揢掶掌") + this._d6edf79ca56664e9288a6f06);
         }
      }
      
      private function _36c62c4b30b2b5ae21883798() : void
      {
         (this._aa20cd0845f9d19e07fb19b3.source as Sprite).buttonMode = true;
         (this._aa20cd0845f9d19e07fb19b3.source as Sprite).useHandCursor = true;
         this._aa20cd0845f9d19e07fb19b3.state = ButtonState.NORMAL;
      }
      
      private function disable() : void
      {
         (this._aa20cd0845f9d19e07fb19b3.source as Sprite).buttonMode = false;
         (this._aa20cd0845f9d19e07fb19b3.source as Sprite).useHandCursor = false;
         this._aa20cd0845f9d19e07fb19b3.state = ButtonState.DISABLED;
      }
      
      private function _1b58ca7213949a93724d34fe() : void
      {
         this._aa20cd0845f9d19e07fb19b3.source.addEventListener(MouseEvent.CLICK,this._e2e8ec3e54c12c1d0befb3b7,false,0x2E98913C ^ -1450532529 ^ 0x27D88AFF ^ -1597326708,true);
         this._aa20cd0845f9d19e07fb19b3.source.addEventListener(MouseEvent.MOUSE_MOVE,this._2b8173130bebb15f6dca1c9f,false,-148029492 ^ 0x4D6B445A ^ -1049463486 ^ 0x7B340ED4,true);
         this._aa20cd0845f9d19e07fb19b3.source.addEventListener(MouseEvent.ROLL_OVER,this._c9b821dfd0e186621c4e3b33,false,-1994373041 ^ -255744792 ^ -742778355 ^ -1436813654,true);
         this._aa20cd0845f9d19e07fb19b3.source.addEventListener(MouseEvent.ROLL_OUT,this._0b366b73b6edc185e2995ba2,false,-95270841 ^ 0x088BDF41 ^ -1382685218 ^ 0x5F4C72D8,true);
      }
      
      private function _3246e802f35284896304f455() : void
      {
         this._aa20cd0845f9d19e07fb19b3.source.removeEventListener(MouseEvent.CLICK,this._e2e8ec3e54c12c1d0befb3b7);
         this._aa20cd0845f9d19e07fb19b3.source.removeEventListener(MouseEvent.MOUSE_MOVE,this._2b8173130bebb15f6dca1c9f);
         this._aa20cd0845f9d19e07fb19b3.source.removeEventListener(MouseEvent.ROLL_OVER,this._c9b821dfd0e186621c4e3b33);
         this._aa20cd0845f9d19e07fb19b3.source.removeEventListener(MouseEvent.ROLL_OUT,this._0b366b73b6edc185e2995ba2);
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._49296a838e408a1146cd0d05 = null;
         this._3246e802f35284896304f455();
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

