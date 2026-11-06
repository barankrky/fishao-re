package com.ax3.fishao.locations.privateHouse.interior.controller
{
   import com.ax3.fishao.locations.privateHouse.interior.model._982f2b0d82c7f64c01e267ee;
   import com.ax3.fishao.tutorial._283b592e1b144e604db439f2;
   import com.ax3.fishao.tutorial._9b5482b3978b7abe1547abb8;
   import com.ax3.fishao.tutorial.helpers._48295d9d6d9a3a424d2886ed;
   import com.ax3.fishao.tutorial.helpers._63a1662bfab25759f09f5245;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _3f7831b50d1ca2f67d06a9e9 extends _21338c66f3aee498aad8da98
   {
      
      private var _d310081db6f735e083e8ca0c:_283b592e1b144e604db439f2;
      
      private var _50d41f80f080c21ce41ed5b5:Boolean;
      
      private var _829ddb699775cf740e2c47e9:Boolean;
      
      private var _089e879de30c9009ff4349a4:Boolean;
      
      private var _709883a425cebc798ef21dd2:Boolean;
      
      private var _068ddc0966dd7a36cf67fa7a:Boolean;
      
      public function _3f7831b50d1ca2f67d06a9e9(param1:_982f2b0d82c7f64c01e267ee, param2:_afb131a8b7579a7c44d03bf8)
      {
         super(param1,param2);
         this.init();
      }
      
      override public function set isSelected(param1:Boolean) : void
      {
         super.isSelected = param1;
         if(this._829ddb699775cf740e2c47e9 || this._089e879de30c9009ff4349a4 || this._50d41f80f080c21ce41ed5b5 || this._709883a425cebc798ef21dd2)
         {
            return;
         }
         if(this._068ddc0966dd7a36cf67fa7a && param1)
         {
            this._068ddc0966dd7a36cf67fa7a = false;
            _editorPanel.show();
            this._a3727f3acae13a6d11a63010();
         }
      }
      
      override protected function _b565152cba116e137513dad3(param1:MouseEvent = null) : void
      {
         if(this._829ddb699775cf740e2c47e9 || this._089e879de30c9009ff4349a4 || this._50d41f80f080c21ce41ed5b5 || this._068ddc0966dd7a36cf67fa7a)
         {
            return;
         }
         if(this._709883a425cebc798ef21dd2)
         {
            this._709883a425cebc798ef21dd2 = false;
            super._b565152cba116e137513dad3(param1);
            this._a3727f3acae13a6d11a63010();
         }
         else
         {
            super._b565152cba116e137513dad3(param1);
         }
      }
      
      override public function _5161131d2df96c91201f48c4(param1:Event = null) : void
      {
         if(this._829ddb699775cf740e2c47e9 || this._089e879de30c9009ff4349a4 || this._709883a425cebc798ef21dd2 || this._068ddc0966dd7a36cf67fa7a)
         {
            return;
         }
         if(this._50d41f80f080c21ce41ed5b5)
         {
            this._50d41f80f080c21ce41ed5b5 = false;
            this._a3727f3acae13a6d11a63010();
         }
         super._5161131d2df96c91201f48c4(param1);
      }
      
      override protected function _78e8c6b16ceb4e1108511694(param1:Event) : void
      {
         if(this._829ddb699775cf740e2c47e9 || this._50d41f80f080c21ce41ed5b5 || this._709883a425cebc798ef21dd2 || this._068ddc0966dd7a36cf67fa7a)
         {
            return;
         }
         if(this._089e879de30c9009ff4349a4)
         {
            this._089e879de30c9009ff4349a4 = false;
            super._78e8c6b16ceb4e1108511694(param1);
            if(_bf3eddb6c523e36b17074445(_entity.position))
            {
               this._a3727f3acae13a6d11a63010();
            }
            else
            {
               this._089e879de30c9009ff4349a4 = true;
            }
         }
         else
         {
            super._78e8c6b16ceb4e1108511694(param1);
         }
      }
      
      override protected function _20d2d99a3b1a508ac3c33eb8(param1:Event) : void
      {
         if(this._829ddb699775cf740e2c47e9 || this._50d41f80f080c21ce41ed5b5 || this._709883a425cebc798ef21dd2 || this._068ddc0966dd7a36cf67fa7a)
         {
            return;
         }
         if(this._089e879de30c9009ff4349a4)
         {
            this._089e879de30c9009ff4349a4 = false;
            super._20d2d99a3b1a508ac3c33eb8(param1);
            if(_bf3eddb6c523e36b17074445(_entity.position))
            {
               this._a3727f3acae13a6d11a63010();
            }
            else
            {
               this._089e879de30c9009ff4349a4 = true;
            }
         }
         else
         {
            super._20d2d99a3b1a508ac3c33eb8(param1);
         }
      }
      
      override public function _8f93a00e206a5a43c3a2b5c2(param1:Event = null) : void
      {
         if(this._089e879de30c9009ff4349a4 || this._50d41f80f080c21ce41ed5b5 || this._709883a425cebc798ef21dd2 || this._068ddc0966dd7a36cf67fa7a)
         {
            return;
         }
         if(this._829ddb699775cf740e2c47e9)
         {
            this._829ddb699775cf740e2c47e9 = false;
            this._a3727f3acae13a6d11a63010();
            this._ab2e17a05482a91ef95d5125(true);
         }
         super._8f93a00e206a5a43c3a2b5c2(param1);
      }
      
      private function init() : void
      {
         this._d310081db6f735e083e8ca0c = GameSwf.instance.managerTutorial;
      }
      
      private function _a3727f3acae13a6d11a63010() : void
      {
         var _loc1_:_9b5482b3978b7abe1547abb8 = this._d310081db6f735e083e8ca0c.tutorialInProgress;
         if(_loc1_ != null)
         {
            _loc1_._0e1bc13a989d12a3776df86c();
         }
      }
      
      public function _40376fe6ea46f91fb4004f56() : void
      {
         this._709883a425cebc798ef21dd2 = true;
         var _loc1_:DisplayObject = _view.currentView.iso.source;
         this._d310081db6f735e083e8ca0c.tutorialHelpers.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc1_,new Point(-761458979 ^ -1759784694 ^ 0x49402739 ^ -214366422,-150164674 ^ 0x68D5095B ^ -495560422 ^ 0x7DAFFB7F)),-1850645015 ^ -2119532870 ^ -887985894 ^ 0x24F68DEF);
         super.isSelected = true;
      }
      
      public function _af52217eaf62684aca76d28b() : void
      {
         this._50d41f80f080c21ce41ed5b5 = true;
         this._d310081db6f735e083e8ca0c.tutorialHelpers.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_editorPanel.confirmPlacing,new Point(-517157066 ^ 0x16CAA518 ^ 0x48B11653 ^ -1084785545,0x19C53880 ^ -149298366 ^ -266697438 ^ -516316892)),0x220D71F0 ^ -135335114 ^ -1217389828 ^ 0x6293983A);
         this._d310081db6f735e083e8ca0c.tutorialHelpers.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_editorPanel.confirmPlacing),0x7787F218 ^ 0x56023772 ^ 0x631D3859 ^ 0x4298FD2A);
         _editorPanel.confirmPlacing.enable();
      }
      
      public function _d4950de84f81f61a88ec69fa() : void
      {
         this._829ddb699775cf740e2c47e9 = true;
         this._d310081db6f735e083e8ca0c.tutorialHelpers.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_editorPanel.removeItem,new Point(0x0B716070 ^ -744986837 ^ -90237298 ^ 0x227611DF,0x25D1F2AE ^ -38043329 ^ 0x68B0DF91 ^ 0x4F2553C4)),-820781551 ^ 0x5F07EA0D ^ 0x15291D41 ^ -2059589283);
         this._d310081db6f735e083e8ca0c.tutorialHelpers.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_editorPanel.removeItem),-1406618090 ^ 0x0A0BC209 ^ -1859399780 ^ 0x3708BB9A);
         _editorPanel.removeItem.enable();
      }
      
      public function _056ddc457f9e250971cda5de() : void
      {
         this._089e879de30c9009ff4349a4 = true;
         this._d310081db6f735e083e8ca0c.tutorialHelpers.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_editorPanel.clockwise,new Point(0x3C642219 ^ 0x35ED83F0 ^ -1738971826 ^ 0x6E2F3B5C,-1196576382 ^ 0x6CC02AC0 ^ 0x5C76CF52 ^ 0x77E4ABD4)),-365651092 ^ 0x4C02575F ^ 0x12EF2189 ^ -1260786246);
         this._d310081db6f735e083e8ca0c.tutorialHelpers.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_editorPanel.clockwise),-2119264560 ^ 0x425FEDA0 ^ 0x494E8017 ^ -1967129730);
         this._d310081db6f735e083e8ca0c.tutorialHelpers.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_editorPanel.counterclockwise),0x2B1A5323 ^ 0x65212867 ^ -864517372 ^ -2109474727);
         _editorPanel.clockwise.enable();
         _editorPanel.counterclockwise.enable();
      }
      
      public function _bb9cdcf48845d4be1e610727() : void
      {
         this._068ddc0966dd7a36cf67fa7a = true;
         var _loc1_:DisplayObject = _view.currentView.iso.source;
         this._d310081db6f735e083e8ca0c.tutorialHelpers.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc1_,new Point(_view.currentView.width / (0x59073C26 ^ -220398620 ^ -2004869918 ^ 0x235BDB22),-127149304 ^ -735298169 ^ 0x4C18602A ^ -1616873213)),-1016980693 ^ 0x681297CF ^ -2005160183 ^ 0x230B23ED);
         _editorPanel.hide();
      }
      
      public function _ab2e17a05482a91ef95d5125(param1:Boolean) : void
      {
         var _loc2_:int = 0x273FBBBA ^ -411494122 ^ -1222315353 ^ -144103091;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x035B48C5 ^ 0x1772AE98 ^ 0x349FF806 ^ -1598200047))
            {
               case 0:
                  _editorPanel.confirmPlacing.enable();
                  _loc2_ = -1379310960 ^ -1399477726 ^ 0x0F5F1788 ^ -1912035722;
                  break;
               case 1:
                  _editorPanel.counterclockwise.enable();
                  _loc2_ = -1588087816 ^ -1661579750 ^ -1880820292 ^ 0x324E7116;
                  break;
               case 2:
                  if(param1)
                  {
                     _loc2_ = 0x15124F67 ^ -2086226210 ^ 0x6AE8EB22 ^ 0x7C576BD1;
                  }
                  else
                  {
                     _loc2_ = 0x3D5FD939 ^ 0x0A36B3D1 ^ 0x71A66BE1 ^ -960202678;
                  }
                  break;
               case 3:
                  return;
               case 4:
                  _editorPanel.removeItem.disable();
                  _loc2_ = -626970069 ^ -378446969 ^ -2070478347 ^ 0x374C1110;
                  break;
               case 5:
                  _editorPanel.counterclockwise.disable();
                  _loc2_ = 0x6292B128 ^ 0x0EBC5169 ^ -71038083 ^ 0x17E19274;
                  break;
               case 6:
                  if(param1)
                  {
                     _loc2_ = -101613659 ^ 0x3B3CBE0B ^ 0x3E8C5FD6 ^ 0x7C4AE739;
                  }
                  else
                  {
                     _loc2_ = 0x547DECBA ^ 0x3DABF666 ^ -1997817303 ^ 0x6136D9BB;
                  }
                  break;
               case 7:
                  _editorPanel.clockwise.enable();
                  _loc2_ = 0x2C6818F3 ^ 0x467237FD ^ 0x6609A0FF ^ -1944521037;
                  break;
               case 8:
                  if(param1)
                  {
                     _loc2_ = 0x4630E967 ^ -777050001 ^ -2089817184 ^ -1795468317;
                  }
                  else
                  {
                     _loc2_ = 0x7798A934 ^ 0x522985C1 ^ 0x066F878B ^ -1546268111;
                  }
                  break;
               case 9:
                  _editorPanel.confirmPlacing.disable();
                  _loc2_ = 0x4B22A1DE ^ 0x2A85B877 ^ 0x7B474DF2 ^ -1695863529;
                  break;
               case 10:
                  _editorPanel.clockwise.disable();
                  _loc2_ = 0x2E2DEF9A ^ 0x31A89C45 ^ -1821894385 ^ 0x0CE61392;
                  break;
               case 11:
                  _editorPanel.removeItem.enable();
                  _loc2_ = -421705683 ^ 0x444A8E4B ^ 0x70876E76 ^ 0x521BD159;
                  break;
               case 12:
                  if(param1)
                  {
                     _loc2_ = 0x1C5649DB ^ 0x5342F4A4 ^ 0x1D413A9A ^ -765526360;
                  }
                  else
                  {
                     _loc2_ = -1236442984 ^ -795594838 ^ -1472687930 ^ 0x4EEAA6B4;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

