package com.ax3.fishao.view.dialogs.trade.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._1e21f5ea8cd03625232da448;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class _67e27c96dcce91c2931b803e extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _ac8869e7d543c1093de5cc22:DisplayObjectContainer;
      
      private var _3fc91b4683a89ce45fad606e:TextField;
      
      private var _6f908092ff7d7b7ad13147b9:_08db2ef964ef6b51b91cd2be;
      
      private var _dcf3a4efbc51326a384425ba:_1e21f5ea8cd03625232da448;
      
      private var _9a69aec6d2b3170846532788:Array;
      
      private var _e74030c91c88ced4234e5dbb:DisplayObject;
      
      public function _67e27c96dcce91c2931b803e(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._ac8869e7d543c1093de5cc22 = param2;
         super(param1,this._ac8869e7d543c1093de5cc22);
         this.init();
      }
      
      public function set items(param1:Array) : void
      {
         var _loc2_:int = 0x1B6E6B50 ^ 0x6F38DD00 ^ 0x54D01818 ^ 0x57BE750B;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x1595CBE7 ^ 0x792ABF70 ^ -1072491794 ^ -611009222))
            {
               case 0:
                  if(param1 == this._9a69aec6d2b3170846532788)
                  {
                     _loc2_ = -2123573092 ^ -2084397323 ^ -1184516395 ^ -856478722;
                  }
                  else
                  {
                     _loc2_ = -1029355933 ^ 0x13DB6A93 ^ -2136669738 ^ 0x26E3F667;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._9a69aec6d2b3170846532788 = param1;
                  this._dcf3a4efbc51326a384425ba.items = this._9a69aec6d2b3170846532788;
                  this._63b9041bf855ea499da8554e(false);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get viewTradeStatus() : _08db2ef964ef6b51b91cd2be
      {
         return this._6f908092ff7d7b7ad13147b9;
      }
      
      public function set name(param1:String) : void
      {
         this._3fc91b4683a89ce45fad606e.text = param1;
      }
      
      public function get viewContainerItems() : _1e21f5ea8cd03625232da448
      {
         return this._dcf3a4efbc51326a384425ba;
      }
      
      private function init() : void
      {
         this._3fc91b4683a89ce45fad606e = Debug.assertProperty(this._ac8869e7d543c1093de5cc22,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揥捻捸掼揾挹掆揝掇掉揅揮掎揵揲挖挮掹描挣挓挷挓捭掕掫","掂捿捫挻挣挓掹挑揰挢捁挨揲捥持掛"));
         this._6f908092ff7d7b7ad13147b9 = new _08db2ef964ef6b51b91cd2be(controller,Debug.assertProperty(this._ac8869e7d543c1093de5cc22,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挍挕揞揫捖揯掟掑揲挌揳揪掋揍捊挓掽挐挊挴掠掝揜捽挲揠挥挚揣揋揹捠挨捦揭掄探捵","捕挧揲揉捭挳揱掦掆掬挂捤揥损掟捳")));
         this._e74030c91c88ced4234e5dbb = Debug.assertProperty(this._ac8869e7d543c1093de5cc22,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剜劭剀剡勧划剁剮剧勌劥分剄勠劕剸勿努勺剣剦剓副劆助勼刴剕劐划劓勴剩劈制刌剬勰劣勿刪劝剨刏劆劌刨刚削勛","勞剤别勘削勒剉劍判劭刷勘勅剻勐勶"));
         this._dcf3a4efbc51326a384425ba = new _1e21f5ea8cd03625232da448(controller);
         this._dcf3a4efbc51326a384425ba.size = new Point(0x10AB9202 ^ -2053685985 ^ -1955406486 ^ 0x1E4E7274,-1755986317 ^ 0x4E38E417 ^ -1293985914 ^ 0x6BB275E0);
         this._dcf3a4efbc51326a384425ba.offset = new Point(0x5DA6B0 ^ -702559547 ^ 0x21446614 ^ -150599063,-1074669163 ^ 0x521F1D2E ^ -261015118 ^ 0x1D9FFD00);
         this._dcf3a4efbc51326a384425ba.gap = new Point(-1524795714 ^ 0x4E11B075 ^ -1227919031 ^ 0x5DC3B790,0x5EB329C3 ^ -1620538861 ^ 0x7C7B66AD ^ -1113537157);
         this._ac8869e7d543c1093de5cc22.addChild(this._dcf3a4efbc51326a384425ba.source);
         this._9a69aec6d2b3170846532788 = [];
      }
      
      override public function _63b9041bf855ea499da8554e(param1:Boolean) : void
      {
         super._63b9041bf855ea499da8554e(param1);
         this._dcf3a4efbc51326a384425ba.source.x = this._e74030c91c88ced4234e5dbb.x;
         this._dcf3a4efbc51326a384425ba.source.y = this._e74030c91c88ced4234e5dbb.y;
         this._dcf3a4efbc51326a384425ba._63b9041bf855ea499da8554e(param1);
      }
   }
}

