package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.model.vo._c6fb360a8d529bb15ba382c3;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.utils.ColorMatrix;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class _57f5efc4abaa2249dc78cceb extends Sprite implements IAssetWrapper, _5851c671824f640d4d36d175
   {
      
      private var _asset:DisplayObjectContainer;
      
      private var _e28632c7cd1311f468830c48:MovieClip;
      
      private var _8c0cbc5815b09693396e0f26:Rectangle;
      
      private var _0a0249e530ed754be9c262f5:MovieClip;
      
      private var _5118a40cb6c6cca1bdce2ead:TextField;
      
      private var _21ea7e430c36ab8795a4f7c5:TextField;
      
      private var _fd9268183e7c69750e5815c3:FrameButtonWrapper;
      
      public var buyHandler:Function;
      
      private var _98f37d0d6cc055df717f6be1:_c6fb360a8d529bb15ba382c3;
      
      public function _57f5efc4abaa2249dc78cceb()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         this._e28632c7cd1311f468830c48 = new MovieClip();
         this._e28632c7cd1311f468830c48.x = this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劀划剐剏剘剙勰剢剀勲勔劑剠則劐動勚剆","刄剹勉動勄切刐剭勽剮剢刈劑創剤勭")).x;
         this._e28632c7cd1311f468830c48.y = this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剰剃創刏劣勣剌劾劐劔勩剴剛剑划勘勾刍","劅募劂剧劏剥劕劕勿勰功勜刧刟勶刚")).y;
         this._8c0cbc5815b09693396e0f26 = new Rectangle();
         this._8c0cbc5815b09693396e0f26.width = int(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刖判利劁劾剴劄剠劇刪勇剫刧则助刌劷刘","勰刖勨劰刵劤勹劤刧勠勮刓勡刢刎勩")).width);
         this._8c0cbc5815b09693396e0f26.height = int(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勨勡剛券刼剒劷劄勥勛劜勽劰刀劺剹刘勷","劙勅剠剫劚劅剚刾勶勞前刬刦动劈刿")).height);
         ShiftWrapper.shiftDisplayObject(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挎挫掊揧揉捋捘掉揮损掣揍掔挨挶捁掕损","揜据揕捃挹掌挸揜揰挪捞掵掾揩挂掄")),this._e28632c7cd1311f468830c48);
         this._5118a40cb6c6cca1bdce2ead = TextField(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၰႇၗ჆ႂၸၫဲႣၭწ္჻მკႆဠრႀၧჶჺႭၱ","჎ီႿ჌ါၞသზ၆၊ၩႝჾဈၿ်")));
         this._21ea7e430c36ab8795a4f7c5 = TextField(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剱剽勡剓剫删劒刏劅効劵劸勾剈効勾勥勺刣劈勒剻别努劂刃","劆勾加劣剻務刓务别劺劐剝劰刯剳劶")));
         this._fd9268183e7c69750e5815c3 = new FrameButtonWrapper();
         this._fd9268183e7c69750e5815c3.process(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剦劗功剧勴劶勓剽勪劣剅剔剏剓刂劅劙劁刯刜刃剭切劬刖剽","勃創剓刷则刑刪劉创勿初劼刌刣剩勐")));
         this._fd9268183e7c69750e5815c3.handler = this._a540e63169901b64cd9aea9d;
         this._0a0249e530ed754be9c262f5 = MovieClip(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劰剄刬勼劊势剳募刄劳勈剃","剧劭勌创剬劕力剣剺勁刔剨勒劻刅劥")));
         addChild(this._asset);
      }
      
      private function _a540e63169901b64cd9aea9d(param1:MouseEvent) : void
      {
         var _loc2_:int = -1943898872 ^ 0x3C3D7281 ^ -162067288 ^ -1998729650;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x46DAFA2C ^ -1592696245 ^ -355312571 ^ -1014234804))
            {
               case 0:
                  this.buyHandler(this._98f37d0d6cc055df717f6be1);
                  _loc2_ = -1468829574 ^ -848205579 ^ -1859734213 ^ 0x3AB168D8;
                  break;
               case 1:
                  if(this.buyHandler != null)
                  {
                     _loc2_ = -411815806 ^ 0x61F59C55 ^ 0x125BCFE3 ^ 0x5A4FA65A;
                  }
                  else
                  {
                     _loc2_ = -1739640786 ^ 0x2521FD0C ^ -1220531111 ^ -994368489;
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
      
      public function set data(param1:Object) : void
      {
         var _loc2_:_a4e47350c89a50d87a148c28 = null;
         var _loc3_:Array = null;
         var _loc4_:_cff30366d510ea862540bfef = null;
         var _loc5_:ColorMatrix = null;
         var _loc6_:ColorMatrixFilter = null;
         this._98f37d0d6cc055df717f6be1 = _c6fb360a8d529bb15ba382c3(param1);
         this._21ea7e430c36ab8795a4f7c5.text = String(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刓剴刋勏势勾剡刳別劚剖劵務劣劦劄力剆刕勺刏剬劏剪刟势剠利務剌勦刌勰刧勴劄剒剚剒券動剴刍勵刵刎副刟","劓剙劲劍刱劎勢勢刡剋刄劎剃刚劳刾"))) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၄၆ဃრႅ၃Ⴑဣၑႃ","ჱ၄ႆၭႇၳეႏဘჁဿၜႶဣ၀ဃ");
         this._5118a40cb6c6cca1bdce2ead.text = this._98f37d0d6cc055df717f6be1.title + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刔剧剙刍刁勆劮刁劧劼则刪","剟刳剰刴則剖刞勢勉劭剋労劗劘剷勷") + this._98f37d0d6cc055df717f6be1.amount + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捉揔掕掦排捼掉揊掑掷","挀损挃挈挩捕揨捳挄挭捧捘捰掏揼揎");
         this._fd9268183e7c69750e5815c3.label = String(this._98f37d0d6cc055df717f6be1.worth);
         if(this._98f37d0d6cc055df717f6be1.amount > (0x5F9C30FF ^ -1658730827 ^ 0x33C97598 ^ 0x0E8B7C2D))
         {
            if(this._98f37d0d6cc055df717f6be1.amount == (0x0B021AEE ^ -119234291 ^ 0x4CEBFE7D ^ -1089649250))
            {
               this._fd9268183e7c69750e5815c3.disable();
            }
            else
            {
               this._fd9268183e7c69750e5815c3.enable();
            }
         }
         removeAllChildren(this._e28632c7cd1311f468830c48);
         if(this._98f37d0d6cc055df717f6be1.fishImageUrl != null)
         {
            _loc2_ = new _a4e47350c89a50d87a148c28(null);
            _loc2_.width = this._8c0cbc5815b09693396e0f26.width;
            _loc2_.height = this._8c0cbc5815b09693396e0f26.height;
            app.resourceManager.replaceBitmapDataFromURL(_loc2_,this._98f37d0d6cc055df717f6be1.fishImageUrl);
            if(this._98f37d0d6cc055df717f6be1.type == _67282af25befe9778e5c8dd1.FISH_SHINY.id)
            {
               _loc3_ = [];
               _loc4_ = app.fishDict.get(this._98f37d0d6cc055df717f6be1.id) as _cff30366d510ea862540bfef;
               _loc5_ = new ColorMatrix();
               _loc5_.adjustHue(_loc4_.hueShiftOfShiny);
               _loc6_ = new ColorMatrixFilter(_loc5_.matrix);
               _loc3_.push(_loc6_);
               this._e28632c7cd1311f468830c48.filters = _loc3_;
            }
            this._e28632c7cd1311f468830c48.addChild(_loc2_);
         }
      }
      
      public function get data() : Object
      {
         return this._98f37d0d6cc055df717f6be1;
      }
      
      public function _6d5360dc76898e470b88eb2e() : void
      {
         this.data = this._98f37d0d6cc055df717f6be1;
      }
   }
}

