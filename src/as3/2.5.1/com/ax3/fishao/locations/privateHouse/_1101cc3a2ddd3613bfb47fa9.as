package com.ax3.fishao.locations.privateHouse
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class _1101cc3a2ddd3613bfb47fa9
   {
      
      private var _21ae04d77dc1d56989c014f3:DisplayObject;
      
      private var _a15ef44d7643a4036055f261:MovieClip;
      
      private var _6b5d2a14835c31dbf56b3fd2:MovieClip;
      
      private var _7e592e6de8c4e20e29cb94fa:MovieClip;
      
      private var _90b3ec0511e38ea6fe5575b0:Boolean;
      
      public function _1101cc3a2ddd3613bfb47fa9(param1:DisplayObject)
      {
         super();
         this._21ae04d77dc1d56989c014f3 = Debug.assertNotEqual(param1,null);
         this._a15ef44d7643a4036055f261 = Debug.assertProperty(this._21ae04d77dc1d56989c014f3,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剗刵勎剿勰劣副劾刑刾剨刓勆刜劰効务勝劸判判劤勝勤刻剎刵判","刷劾剈勖劍刘剾勈勍剃劖劜剰勚剞劖"),MovieClip);
         this._6b5d2a14835c31dbf56b3fd2 = Debug.assertProperty(this._21ae04d77dc1d56989c014f3,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捦掷捤揬掫挟损掩挆挨揆掹揗捔揍握捋挥捻揣损揓揥挖捧捋挓掸","掩捫掞揍挘挨捑推掴接插捜挊揑揅揂"),MovieClip);
         this._7e592e6de8c4e20e29cb94fa = Debug.assertProperty(this._21ae04d77dc1d56989c014f3,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勞刨刖刖刉剛剮刹勒勰剮剃列剎刳劯劂剱勿剼勉刺刑前劫勺","劯制勆勲助加勲剂剎劍剢劒劬劧剻剌"),MovieClip);
         this.level = 0x5764D3F5 ^ -1407282404 ^ 0x6840BDCC ^ -1824850652;
         this.init();
      }
      
      public function get source() : DisplayObject
      {
         return this._21ae04d77dc1d56989c014f3;
      }
      
      public function set level(param1:uint) : void
      {
         this._7e592e6de8c4e20e29cb94fa.gotoAndStop(param1);
         this._6b5d2a14835c31dbf56b3fd2.gotoAndStop(param1);
         this._a15ef44d7643a4036055f261.gotoAndStop(param1);
      }
      
      public function get viewLeaves() : DisplayObject
      {
         return this._a15ef44d7643a4036055f261;
      }
      
      public function get viewShadow() : DisplayObject
      {
         return this._6b5d2a14835c31dbf56b3fd2;
      }
      
      public function get viewTrunk() : DisplayObject
      {
         return this._7e592e6de8c4e20e29cb94fa;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         var _loc2_:int = -1902376663 ^ 0x0AF3617A ^ 0x0BD56079 ^ -1003789455;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-758486800 ^ -1779361286 ^ 0x6804339D ^ 0x64AE29CE))
            {
               case 0:
                  this._90b3ec0511e38ea6fe5575b0 = param1;
                  this._a15ef44d7643a4036055f261.buttonMode = this._90b3ec0511e38ea6fe5575b0;
                  this._7e592e6de8c4e20e29cb94fa.buttonMode = this._90b3ec0511e38ea6fe5575b0;
                  return;
               case 1:
                  return;
               case 2:
                  if(param1 == this._90b3ec0511e38ea6fe5575b0)
                  {
                     _loc2_ = -1325751557 ^ 0x0A6492EF ^ -1657820784 ^ 0x6C20F2DC;
                  }
                  else
                  {
                     _loc2_ = -604727141 ^ 0x49CA76DC ^ 0x6578A1DD ^ -1126751037;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _b2b4b5bf9a4f610490f34d2d(param1:Event) : void
      {
         var _loc2_:int = 0x16C3DFC8 ^ -1221468882 ^ -1752302434 ^ 0x7ABE2FA4;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1526610305 ^ -584314645 ^ -364231467 ^ -559529059))
            {
               case 0:
                  param1.stopImmediatePropagation();
                  if(!this._90b3ec0511e38ea6fe5575b0)
                  {
                     _loc2_ = 0x5B431549 ^ 0x7976DBFE ^ -326737970 ^ -2106441564;
                  }
                  else
                  {
                     _loc2_ = 0x23C154BC ^ -1701864840 ^ 0x4E656102 ^ -1142260200;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  GameSwf.currentLocationDialog._05e9bcfb5be4f623caf15f1d();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         this._a15ef44d7643a4036055f261.addEventListener(MouseEvent.CLICK,this._b2b4b5bf9a4f610490f34d2d,false,-25376502 ^ -1312773440 ^ -2023763277 ^ -924601991,true);
         this._a15ef44d7643a4036055f261.stop();
         this._6b5d2a14835c31dbf56b3fd2.stop();
         this._6b5d2a14835c31dbf56b3fd2.mouseEnabled = false;
         this._6b5d2a14835c31dbf56b3fd2.mouseChildren = false;
         this._7e592e6de8c4e20e29cb94fa.addEventListener(MouseEvent.CLICK,this._b2b4b5bf9a4f610490f34d2d,false,0x02DFC0DB ^ 0x2071FD5A ^ -2061208215 ^ -1484109592,true);
         this._7e592e6de8c4e20e29cb94fa.stop();
      }
      
      public function show() : void
      {
         this._7e592e6de8c4e20e29cb94fa.visible = true;
         this._6b5d2a14835c31dbf56b3fd2.visible = true;
         this._a15ef44d7643a4036055f261.visible = true;
      }
      
      public function hide() : void
      {
         this._7e592e6de8c4e20e29cb94fa.visible = false;
         this._6b5d2a14835c31dbf56b3fd2.visible = false;
         this._a15ef44d7643a4036055f261.visible = false;
      }
      
      public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._7e592e6de8c4e20e29cb94fa.removeEventListener(MouseEvent.CLICK,this._b2b4b5bf9a4f610490f34d2d);
         this._a15ef44d7643a4036055f261.removeEventListener(MouseEvent.CLICK,this._b2b4b5bf9a4f610490f34d2d);
      }
   }
}

