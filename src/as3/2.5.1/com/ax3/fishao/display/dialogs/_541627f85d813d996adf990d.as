package com.ax3.fishao.display.dialogs
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.wrappers.impl._340398c7d0de61214956211b;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs._8256b1324608dc993f5220be;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.events.MouseEvent;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class _541627f85d813d996adf990d extends _8256b1324608dc993f5220be
   {
      
      private var _asset:gDialogMessageSmall;
      
      public var messageField:_340398c7d0de61214956211b;
      
      public var buttonYes:FishaoButtonWrapper;
      
      public var buttonNo:FishaoButtonWrapper;
      
      public var closeOnOk:Boolean;
      
      public var callbackYes:Function;
      
      public var callbackNo:Function;
      
      private var _94a52fbb86f2db99a94fa70a:Number = 0;
      
      private var _53d7bdc30724ab0f398d3f04:Number = 0;
      
      public function _541627f85d813d996adf990d()
      {
         super();
         this._asset = new gDialogMessageSmall();
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         this.buttonYes.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("力劋剫勷刁勣剜募動刲劾剘剭勸","刴劍募剔劍切刘剮創劣勄刺剉劼剞勠"));
         this.buttonNo.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刉勌劄勣刷剨剧加刴剆劈刜","勊剡劽刌劤勝剦劍劐刿刣剐勺剣勩勈"));
         this.buttonYes.handler = this._65d9893ad3a434fedb826bdb;
         this.buttonNo.handler = this._024bf5b9caeed996369116b5;
         this._94a52fbb86f2db99a94fa70a = this.buttonYes.y - (this.messageField.y + this.messageField.height);
         this._53d7bdc30724ab0f398d3f04 = bg.height - (this.buttonYes.y + this.buttonYes.height);
         tabChildren = false;
         addChild(this._asset);
         this.reset();
      }
      
      override public function reset() : void
      {
         var _loc1_:int = -920096159 ^ -1016661825 ^ -273823193 ^ 0x40E7B0D7;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x5F99729E ^ -1748818139 ^ -1375869282 ^ -1063042293))
            {
               case 0:
                  super.reset();
                  this.closeOnOk = false;
                  if(this.buttonYes != null)
                  {
                     _loc1_ = 0x5449EFED ^ -282522524 ^ -311585637 ^ -217479363;
                  }
                  else
                  {
                     _loc1_ = -1699417702 ^ -627984649 ^ 0x5F710417 ^ -1169116330;
                  }
                  break;
               case 1:
                  this.buttonYes.visible = true;
                  _loc1_ = 0x34C48903 ^ 0x4BF3D213 ^ -1619596236 ^ 0x45454708;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _9d7ff510a479c30e6b8f67a3(param1:int, param2:int) : void
      {
         this._asset.x += param1;
         this._asset.y += param2;
      }
      
      private function _024bf5b9caeed996369116b5(param1:MouseEvent) : void
      {
         close();
         this.callbackNo();
      }
      
      private function _65d9893ad3a434fedb826bdb(param1:MouseEvent) : void
      {
         var _loc2_:int = -452890305 ^ 0x199E0BAC ^ 0x2D91D61B ^ 0x6A33F06F;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-591438101 ^ -797991786 ^ -1838074797 ^ 0x259CAACB))
            {
               case 0:
                  close();
                  _loc2_ = 0x2BC26FE5 ^ 0x59714635 ^ -1665524648 ^ 0x5534696C;
                  break;
               case 1:
                  this.callbackYes();
                  return;
               case 2:
                  if(this.closeOnOk)
                  {
                     _loc2_ = 0x4754A5A4 ^ 0x0850A1FE ^ 0x7CA66575 ^ -2002829878;
                  }
                  else
                  {
                     _loc2_ = 0x5C1610F0 ^ 0x495A39F1 ^ 0x36CCC82C ^ -1732395575;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _4b5d5535760fe8919ccfbd43(param1:String, param2:Boolean = true) : void
      {
         this.textAlign = TextAlign.LEFT;
         this._a429f54e51da8c67501e1c28 = param2;
         this.messageField.text = param1;
         this._8ddab15170131c09363875a9();
      }
      
      private function _8ddab15170131c09363875a9() : void
      {
         this.buttonYes.y = this.messageField.y + this.messageField.height + this._94a52fbb86f2db99a94fa70a;
         this.buttonNo.y = this.messageField.y + this.messageField.height + this._94a52fbb86f2db99a94fa70a;
         bg.height = this.buttonYes.y + this.buttonYes.height + this._53d7bdc30724ab0f398d3f04;
      }
      
      override public function show() : void
      {
         _0737efdbd5337ba3fbc64b2e.getInstance()._92cc9ac314d6cc94288124bf(this);
      }
      
      public function set textAlign(param1:String) : void
      {
         this.messageField.textAlign = param1;
      }
      
      private function set _a429f54e51da8c67501e1c28(param1:Boolean) : void
      {
         var _loc2_:TextFormat = this.messageField.defaultTextFormat;
         _loc2_.indent = param1 ? -340187725 ^ -1644598644 ^ -1968132301 ^ 0x030F1FE2 : 0x39018E51 ^ 0x082D94AA ^ -1306265684 ^ -2096108201;
         this.messageField.defaultTextFormat = _loc2_;
      }
   }
}

