package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.fishao.Config;
   import com.greensock.TweenMax;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class _362c42688cdfa09f126bf962 extends Sprite implements IPopupGroup
   {
      
      private var _b28b59d220517062b740fd44:int;
      
      public function _362c42688cdfa09f126bf962(param1:int)
      {
         super();
         this._b28b59d220517062b740fd44 = param1;
      }
      
      public function show(param1:IBaseDialog) : void
      {
         param1.activate();
         var _temp_2:* = param1;
         var _temp_1:* = 0x302CF6BB ^ 0x025CF63F ^ -106600513 ^ -875206853;
         _temp_2.centerToRect(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         this._4fed36652e3befd148bc249c(param1);
         addChild(DisplayObject(param1));
         this._0583eea38ef2dfeb9624b03e(param1);
      }
      
      private function _4fed36652e3befd148bc249c(param1:IBaseDialog) : void
      {
         var _temp_2:* = param1;
         var _temp_1:* = -91099593 ^ -2080232211 ^ 0x51BBE32C ^ 0x2F2821F6;
         _temp_2.centerToRect(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
      }
      
      private function _0512afccbb1ad67d0b51d71c(param1:IScreenCenter) : void
      {
         var _temp_2:* = param1;
         var _temp_1:* = -680181029 ^ 0x265CECBF ^ 0x2892C148 ^ -642027732;
         _temp_2.centerToRect(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
      }
      
      public function close(param1:IBaseDialog) : void
      {
         param1.deactivate();
         this._95b01fc89b8428e512f4637a(param1);
      }
      
      protected function _95b01fc89b8428e512f4637a(param1:IBaseDialog) : void
      {
         param1.visible = true;
         TweenMax.to(param1,-1109431093 ^ 0x66E17133 ^ -801925809 ^ 0x0B0D88B6,{
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刭勸剘剾剭初勞剤劔剗剓列办勝剼剑剠剻","刏勨剀刺勇勸劶剷刉剖勴刌勪加劇劼")):0x0E3964FD ^ -1202130117 ^ 0x2C043EF1 ^ -1704613577,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剿刹剐剘勞划劭剒刁刓削則剭劒剮剔刚剅刴募努劙助劆刿劵劥劺","勅刧劂勤刹剿劭勑划剕刐剘勀刮刿劆")):this._51bdde60a0d111769511032b,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挾挅捐捻捍探捠揦挗挔掚捫捃捻挮掫挧揓排揔揽掮掋掴捍掶捐捗损掭掵捖捿揭捨掸掊掰捆捩","捇捰揃掀掄挴揦捒捎揚捍挀挋揻掮捶")):[param1]
         });
         param1.onCloseStart();
      }
      
      protected function _0583eea38ef2dfeb9624b03e(param1:IBaseDialog) : void
      {
         param1.visible = true;
         (param1 as DisplayObject).alpha = -177951373 ^ 0x2A7E4535 ^ -687555795 ^ 0x081E536B;
         TweenMax.to(param1,-439338457 ^ 0x3B4CF0AF ^ 0x3B1C49A3 ^ -444562646,{
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၮ့ၣၡსლჴာၢဩვლဘၷယღႨ၇","ၖၱၠၑၰႴႿ်დၿတ်ၮფცၤ")):_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掛揊挧揜揤捌掮掸掛捝捩挲揱掰掫挪揗掟捓換捓捙捃掱","揁掭換揉揳揾捋掬掅握揌揢揄挶捋捰"),
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剴划剕創刹勗劂劓剗劷勢勗勫劉劘加剙剛勏勡劆剖勋剐刏募勤勎","勍勅勽刭勒刻剒剨勹勹剈劚刓勴剝剐")):this._77584df98cc666b85f9e267d,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挓掄捐掁捏揋挐揀捪揗捂掘掐持捊挢揭描挊掦挅掤掯挥挾挿挹掞揩挑揔据挖掷掖揬换揾揖掰","揝挪掕换掿探捱捛捉揱挀挈挕掎挥挔")):[param1]
         });
         param1.onShowStart();
      }
      
      protected function _77584df98cc666b85f9e267d(param1:IBaseDialog) : void
      {
         var dialog:IBaseDialog = param1;
         try
         {
            dialog.onShowComplete();
         }
         catch(error:Error)
         {
            Cc.error(error.toString());
            Cc.error(error.getStackTrace());
         }
      }
      
      protected function _51bdde60a0d111769511032b(param1:IBaseDialog) : void
      {
         var dialog:IBaseDialog = param1;
         if(contains(DisplayObject(dialog)))
         {
            removeChild(DisplayObject(dialog));
         }
         try
         {
            dialog.onCloseComplete();
         }
         catch(error:Error)
         {
            Cc.error(error.toString());
            Cc.error(error.getStackTrace());
         }
      }
      
      public function _3d35206e41147b98a9825d65() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = numChildren;
         var _loc3_:int = -145761894 ^ -26672023 ^ 0x2513B516 ^ 0x2C3568E5;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = getChildAt(_loc3_);
            if(_loc1_ is IBaseDialog)
            {
               this._4fed36652e3befd148bc249c(IBaseDialog(_loc1_));
            }
            else if(_loc1_ is IScreenCenter)
            {
               this._0512afccbb1ad67d0b51d71c(_loc1_ as IScreenCenter);
            }
            _loc3_++;
         }
      }
      
      public function layerIndex() : int
      {
         return this._b28b59d220517062b740fd44;
      }
      
      public function _bbe5c1fabbede1c6f2b4112d() : IBaseDialog
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = numChildren;
         var _loc3_:int = -1987212709 ^ -328535256 ^ 0x5945B696 ^ 0x3CA2CFE5;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = getChildAt(_loc3_);
            if(_loc1_ is IBaseDialog)
            {
               return IBaseDialog(_loc1_);
            }
            _loc3_++;
         }
         return null;
      }
      
      public function _e1d2c58a3c57547feb11522f() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = numChildren;
         var _loc3_:int = -1907262172 ^ 0x172A1EC6 ^ -1376789927 ^ 0x3494B9BB;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = getChildAt(_loc3_);
            if(_loc1_ is IBaseDialog)
            {
               this.close(IBaseDialog(_loc1_));
            }
            _loc3_++;
         }
      }
      
      override public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
      {
         var _loc3_:int = -1490161045 ^ -864196308 ^ -2129269164 ^ 0x21257A1E;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1477383214 ^ -98463844 ^ -1417581975 ^ 0x3D30012A))
            {
               case 0:
                  if(param1 is IScreenCenter)
                  {
                     _loc3_ = 0x585BEDDD ^ -1024145472 ^ -1487466300 ^ -157796906;
                  }
                  else
                  {
                     _loc3_ = 0x5BCD75A9 ^ 0x378D0AD1 ^ -860734516 ^ 0x6B924BB8;
                  }
                  break;
               case 1:
                  return super.addChildAt(param1,param2);
               case 2:
                  var _temp_2:* = IScreenCenter(param1);
                  var _temp_1:* = 0x2D5C6351 ^ 0x39D21A93 ^ -1739978581 ^ -1933282967;
                  _temp_2.centerToRect(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
                  _loc3_ = 0x0BDAFAB0 ^ 0x199FA3C7 ^ 0x4C9B87A7 ^ -1782656548;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

