package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.view.buttons.FishaoBaseButton;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class _5af8e4f295f27d17ff5d7de4 extends ShiftWrapper implements IAssetWrapper
   {
      
      protected var _button:FishaoBaseButton;
      
      private var _18ae867d162fdab7f79a988c:Function;
      
      private var _9185e75f260fd51104abe78f:_89027603939c39853027fd04 = null;
      
      public function _5af8e4f295f27d17ff5d7de4()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         addChild(_child);
         buttonMode = true;
         mouseChildren = false;
         this.state = _89027603939c39853027fd04.UNSELECTED;
         addEventListener(MouseEvent.ROLL_OVER,this._b6a3ac4bbbab6399d59d34d4);
         addEventListener(MouseEvent.ROLL_OUT,this._23705588f93dfc4ab9922a21);
         addEventListener(MouseEvent.CLICK,this._6afbb99fa3141263e5da3879);
      }
      
      public function set state(param1:_89027603939c39853027fd04) : void
      {
         var _loc2_:int = 0x5C891D52 ^ -1145833915 ^ -898808247 ^ -606816927;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1828807092 ^ 0x1BAD0150 ^ 0x60206CA8 ^ 0x1FF0EB89))
            {
               case 0:
                  this._9185e75f260fd51104abe78f = param1;
                  this._0d07a8ba2361c7f3ace01f25();
                  _loc2_ = -874039908 ^ -392832306 ^ -1274148298 ^ 0x61FFFD58;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._9185e75f260fd51104abe78f != param1)
                  {
                     _loc2_ = -297814175 ^ -215433281 ^ 0x51C14C2E ^ -1168810803;
                  }
                  else
                  {
                     _loc2_ = 0x1F44A36C ^ -241781328 ^ -766549806 ^ -903975374;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _0d07a8ba2361c7f3ace01f25() : void
      {
         (_child as MovieClip).gotoAndStop(this._9185e75f260fd51104abe78f.name);
      }
      
      public function set changeHandler(param1:Function) : void
      {
         this._18ae867d162fdab7f79a988c = param1;
      }
      
      private function _b6a3ac4bbbab6399d59d34d4(param1:MouseEvent) : void
      {
         var _loc2_:int = -2078530195 ^ 0x3D2F3221 ^ -365981447 ^ 0x39EBFA1E;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1154463771 ^ -1498457546 ^ -841134640 ^ -1162531414))
            {
               case 0:
                  return;
               case 1:
                  if(this._9185e75f260fd51104abe78f.isSelected)
                  {
                     _loc2_ = 0x237B5332 ^ -281006846 ^ 0x03B53A9F ^ -1518782206;
                  }
                  else
                  {
                     _loc2_ = 0x4ABA837C ^ 0x7B59BA49 ^ -1778210643 ^ -854135758;
                  }
                  break;
               case 2:
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_041_UI_Hover_button);
                  if(this._9185e75f260fd51104abe78f.isEnabled)
                  {
                     _loc2_ = 0x75BA4705 ^ -631264856 ^ 0x22120C10 ^ -419389675;
                  }
                  else
                  {
                     _loc2_ = 0x4206973C ^ 0x1AC465C7 ^ 0x1F1754F6 ^ 0x2D22DBA4;
                  }
                  break;
               case 3:
                  this.state = _89027603939c39853027fd04.UNSELECTED_OVER;
                  _loc2_ = 0x07C46DDD ^ 0x6907B25D ^ 0x1F13330F ^ 0x1B279126;
                  break;
               case 4:
                  this.state = _89027603939c39853027fd04.SELECTED_OVER;
                  _loc2_ = -1624671405 ^ -1663190735 ^ 0x6259C674 ^ 0x0B5A79BF;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _23705588f93dfc4ab9922a21(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x09374C7E ^ -1485554056 ^ -1193585213 ^ 0x3EBB70F8;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-940476228 ^ -860421470 ^ -1118277041 ^ -1640145041))
            {
               case 0:
                  return;
               case 1:
                  this.state = _89027603939c39853027fd04.SELECTED;
                  _loc2_ = 0x7F049440 ^ -1625339427 ^ 0x4BFF5405 ^ -2084053338;
                  break;
               case 2:
                  if(this._9185e75f260fd51104abe78f.isSelected)
                  {
                     _loc2_ = -1167559710 ^ 0x110F6EB6 ^ 0x39834576 ^ -1161359587;
                  }
                  else
                  {
                     _loc2_ = -1356024761 ^ -322004260 ^ 0x50D59CAB ^ 0x3B14E50A;
                  }
                  break;
               case 3:
                  if(this._9185e75f260fd51104abe78f.isEnabled)
                  {
                     _loc2_ = 0x4A14652D ^ 0x45A4536D ^ -2034316008 ^ -1590842268;
                  }
                  else
                  {
                     _loc2_ = 0x08E4B87B ^ 0x678D6BD5 ^ 0x7BA89764 ^ 0x3CE213F4;
                  }
                  break;
               case 4:
                  this.state = _89027603939c39853027fd04.UNSELECTED;
                  _loc2_ = -2077572181 ^ 0x670016CF ^ -1285491360 ^ 0x7869773A;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _6afbb99fa3141263e5da3879(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x704BCB91 ^ 0x1A4E1E3B ^ -2009173885 ^ 0x05C7D03A;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-2087877654 ^ 0x7C5B7ED5 ^ 0x0C468CB2 ^ 0x146C049C))
            {
               case 0:
                  return;
               case 1:
                  if(this._18ae867d162fdab7f79a988c != null)
                  {
                     _loc2_ = -486900312 ^ 0x363538B8 ^ -558394884 ^ -310074887;
                  }
                  else
                  {
                     _loc2_ = 0x3561E59B ^ 0x3C604685 ^ -1516984394 ^ 0x4B6971B9;
                  }
                  break;
               case 2:
                  if(this._9185e75f260fd51104abe78f.isEnabled)
                  {
                     _loc2_ = 0x7E352516 ^ 0x4F593979 ^ 0x10CD4FE5 ^ -966973795;
                  }
                  else
                  {
                     _loc2_ = -1461960792 ^ 0x3E7204AA ^ 0x2348854E ^ 0x521ACB5D;
                  }
                  break;
               case 3:
                  this.state = _89027603939c39853027fd04.SELECTED_OVER;
                  _loc2_ = -477177090 ^ 0x5364C961 ^ 0x08564E52 ^ 0x5F4028DD;
                  break;
               case 4:
                  this._18ae867d162fdab7f79a988c(param1);
                  _loc2_ = 0x07F78236 ^ -1521218517 ^ -1208952582 ^ -223403018;
                  break;
               case 5:
                  this.state = _89027603939c39853027fd04.UNSELECTED_OVER;
                  _loc2_ = -1925201252 ^ 0x50F5D16E ^ 0x35B00416 ^ 0x0F8662F4;
                  break;
               case 6:
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_050_UI_Select_item);
                  if(this._9185e75f260fd51104abe78f.isSelected)
                  {
                     _loc2_ = -1891048517 ^ -994157263 ^ 0x41A4E453 ^ -307351603;
                  }
                  else
                  {
                     _loc2_ = 0x7670FD70 ^ 0x5EF55F2B ^ -2021739953 ^ 0x48076506;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get isSelected() : Boolean
      {
         return this._9185e75f260fd51104abe78f.isSelected;
      }
      
      public function get isEnabled() : Boolean
      {
         return this._9185e75f260fd51104abe78f.isEnabled;
      }
   }
}

