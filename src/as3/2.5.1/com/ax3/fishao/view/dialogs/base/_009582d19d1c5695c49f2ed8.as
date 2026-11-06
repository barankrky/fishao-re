package com.ax3.fishao.view.dialogs.base
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs._8071087ebe26c264282580d0;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._ebeac595a62fba6d6fcea1c2;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class _009582d19d1c5695c49f2ed8 extends _8071087ebe26c264282580d0 implements _988093efdfa36e13bfd6c6cf
   {
      
      private var _8bbd6173a0e6abbdf83849e0:CloseMenuFishaoButtonWrapper;
      
      private var _7b8adcfd91b39a1d0ca33e6d:Boolean;
      
      private var _fa2a6282ff26b497c68dc5a1:Function;
      
      public function _009582d19d1c5695c49f2ed8(param1:String, param2:Boolean = true)
      {
         this._7b8adcfd91b39a1d0ca33e6d = param2;
         var _loc3_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc3_.swfFileName = param1;
         super(_loc3_);
      }
      
      public function get type() : String
      {
         Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揼掶掗捝捰掐揱揾捿捝捋掄挸揣捩掋揧捽揇揸捕揈捹挲捓揮揷挶捣掜捖挟捙揜挶掳挋挬","揋挘掛挀揣捘揽挿揨揌挶捥捵捤揸捂"));
         return null;
      }
      
      public function set callbackClose(param1:Function) : void
      {
         this._fa2a6282ff26b497c68dc5a1 = param1;
      }
      
      protected function _ba7fe333230ac51496d90cb8(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x29072A23 ^ 0x536384EB ^ 0x08D9DC2F ^ 0x611B9A99;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6BB2F24B ^ -204063022 ^ -372645739 ^ 0x620BC472))
            {
               case 0:
                  if(this.isClosing)
                  {
                     _loc2_ = 0x42CC2287 ^ 0x674248A0 ^ 0x2EF5F9D8 ^ 0x18DD7B80;
                  }
                  else
                  {
                     _loc2_ = -2140503463 ^ -1858397184 ^ 0x6A53673E ^ 0x68A4111B;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this.close();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         var _loc1_:int = 0x326BE361 ^ 0x09C57C9D ^ -1885970677 ^ -427424829;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1108866404 ^ -616717110 ^ 0x746428EF ^ 0x400F458C))
            {
               case 0:
                  return;
               case 1:
                  super._935ac2966ddad68dfc449202();
                  if(this._7b8adcfd91b39a1d0ca33e6d)
                  {
                     _loc1_ = -1841645692 ^ -1940287928 ^ -1669622280 ^ -794398973;
                  }
                  else
                  {
                     _loc1_ = 0x64094A2E ^ -1361320164 ^ -898476369 ^ 0x521E38A8;
                  }
                  break;
               case 2:
                  this._8bbd6173a0e6abbdf83849e0 = new CloseMenuFishaoButtonWrapper();
                  this._8bbd6173a0e6abbdf83849e0.process(Debug.assertProperty(_asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("別勺剌剫劀労勜創勈剆剟刢勇剴勦勃副劮刷勋划制劲勢劘剶刱切剸勹","劳勸勬刳募劃劗劲劓删刴刀劐劬剗勗")));
                  this._8bbd6173a0e6abbdf83849e0.handler = this._ba7fe333230ac51496d90cb8;
                  _loc1_ = -1285984934 ^ -1135252190 ^ 0x2025C4B1 ^ 0x7D9707FC;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function update(param1:String) : void
      {
         Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勜剐剡剺判劶勤务刉劓办刼剶劆刧剓剧劝勐刼劣刯劮剷切劚刳劙勹剬勽刽剽刲劰動剢勯","刡切劷剎办劙刵刻剕勵则刖劀劁刎勉"));
      }
      
      public function get view() : _ebeac595a62fba6d6fcea1c2
      {
         return null;
      }
      
      public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         return false;
      }
      
      public function _7ca229f4ec64f1a817fc6ff2(param1:Object, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function _c0c4b50cbb612b709af30032(param1:Object, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function _cb5f48a6e92b5e740d939812(param1:Object, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function _3f01a00fe42ae7d40439e92d(param1:_ebeac595a62fba6d6fcea1c2, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function _1d60bfeebe58296604b7f4bf(param1:_ebeac595a62fba6d6fcea1c2, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function _adef58f9002aa2a71e1a50b0(param1:_ebeac595a62fba6d6fcea1c2, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function _6f13cdf51d77d3ffa790eb14(param1:_ebeac595a62fba6d6fcea1c2, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function _01082a0a47e5c8c237064b36(param1:_ebeac595a62fba6d6fcea1c2, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      override public function close() : void
      {
         var _loc1_:int = 0x68DDFEE8 ^ 0x3E8870CB ^ 0x5561EB8D ^ -1007871453;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-66212454 ^ -623901997 ^ 0x06AD0787 ^ -525740222))
            {
               case 0:
                  super.close();
                  return;
               case 1:
                  if(this._8bbd6173a0e6abbdf83849e0 != null)
                  {
                     _loc1_ = 0x3EBC96C1 ^ 0x3FCC8873 ^ -668935840 ^ 0x1989B85A;
                  }
                  else
                  {
                     _loc1_ = 0x405598DC ^ 0x1597B2D2 ^ -1790192823 ^ 0x5086C8;
                  }
                  break;
               case 2:
                  this._fa2a6282ff26b497c68dc5a1();
                  this._fa2a6282ff26b497c68dc5a1 = null;
                  _loc1_ = 0x7A47FF52 ^ 0x5A7E3C4F ^ 0x7CA54765 ^ -1673135116;
                  break;
               case 3:
                  if(this._fa2a6282ff26b497c68dc5a1 != null)
                  {
                     _loc1_ = 0x702FD9A4 ^ 0x046DE336 ^ 0x700963E9 ^ -997054731;
                  }
                  else
                  {
                     _loc1_ = 0x0B71639B ^ 0x69A9B71B ^ 0x3F6B6164 ^ -1653945752;
                  }
                  break;
               case 4:
                  this._8bbd6173a0e6abbdf83849e0.handler = null;
                  _loc1_ = -1193827613 ^ 0x2E3FA9E6 ^ 0x45946870 ^ 0x13A51CFA;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get isCleanuped() : Boolean
      {
         return false;
      }
      
      public function _90eac9ca552fe54c2ca0299f() : void
      {
         Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挖换揥掰挚推挃捍掜掿捀掀揼挩掆揬揲掙掜捕採捦捔揖换揌捴掞捆捠按捶","捹捨揠掊掃挑捫挰捲掣捪掙揚挔捞排"));
      }
   }
}

