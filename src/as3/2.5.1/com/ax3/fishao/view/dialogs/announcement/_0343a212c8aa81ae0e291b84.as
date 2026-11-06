package com.ax3.fishao.view.dialogs.announcement
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.text.TextDisplayMode;
   import flash.text.TextRenderer;
   import protocol.api.announcements.init.AnnouncementInfo;
   
   public class _0343a212c8aa81ae0e291b84 extends _b4d0e7fa95d91a1aa644e1b2
   {
      
      private var _a39d24f9f734c0d1e4167ad3:AnnouncementInfo;
      
      public function _0343a212c8aa81ae0e291b84()
      {
         super();
      }
      
      public function set entity(param1:AnnouncementInfo) : void
      {
         var _loc2_:int = 0x33BE224C ^ -1328675062 ^ -1542241630 ^ -520881255;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x56C90608 ^ -320692405 ^ 0x3DAB63F4 ^ 0x401066CB))
            {
               case 0:
                  this._a39d24f9f734c0d1e4167ad3 = param1;
                  return;
               case 1:
                  if(this._a39d24f9f734c0d1e4167ad3 == param1)
                  {
                     _loc2_ = -2045638102 ^ -1315196056 ^ -602693335 ^ 0x2C0A8415;
                  }
                  else
                  {
                     _loc2_ = 0x1EA34892 ^ 0x50CA858B ^ 0x4FCDA16B ^ -969609202;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function get type() : String
      {
         return _22437dfd77f65dbf9dbc4281.EDT_ANNOUNCEMENTS;
      }
      
      override protected function _ba7fe333230ac51496d90cb8(param1:MouseEvent) : void
      {
         super._ba7fe333230ac51496d90cb8(param1);
         GameSwf.instance.managerAnnouncements._13ab1346478fd6c3c7bfa7fc();
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         TextRenderer.displayMode = TextDisplayMode.LCD;
         Debug.assertNotEqual(this._a39d24f9f734c0d1e4167ad3,null,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捶掀揜捶掞掱掁排揖挾捤掩揼捧掶揣捇挷揽捱振捔挆掩捨掬掸挰捿按揇捬掐捎捾挧捝挫挮掛掁挞揫揑挣掛捊掣挢掏捊挲掤换掽掑揉揞捉捹掤挾揋挊捶揉","挭掃揇揰捫掞掝挦揊揩揥挌揮掦握揺"));
         buttonOk.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_ANNOUNCEMENT_BOARD_BUTTON_OK);
         buttonOk.handler = this._ba7fe333230ac51496d90cb8;
         _viewTextTitle.text = _c2ad9d37d7be0097d6d2e977.get(this._a39d24f9f734c0d1e4167ad3.title);
         _viewTextDescription.text = _c2ad9d37d7be0097d6d2e977.get(this._a39d24f9f734c0d1e4167ad3.description);
         var _loc1_:Bitmap = new Bitmap();
         app.resourceManager.replaceBitmapDataFromURL(_loc1_,this._a39d24f9f734c0d1e4167ad3.urlImage);
         viewImage.addChild(_loc1_);
         labelTime.text = _c2ad9d37d7be0097d6d2e977._8b1d7fc46fc7ed5e413daf7a(this._a39d24f9f734c0d1e4167ad3.timeDiff,true);
      }
   }
}

