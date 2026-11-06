package com.ax3.fishao.locations.privateHouse.interior.view
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.locations.privateHouse.interior.controller._33aca7ac1e49b5f2d10a6bbc;
   import com.ax3.fishao.locations.privateHouse.interior.model._2486fa5f7cd2f56ad6f3cb62;
   import com.ax3.fishao.locations.privateHouse.interior.model._61273d3106d0e511b3de3353;
   import com.ax3.fishao.utils._d05691e68e00eacb6c602986;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   
   public class _ca860c9b8294f76380913c65 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _6d5baa1e6c56067a150909e6:String;
      
      private var _b4fec007aaa6b5b5afb721dc:_04cce4e240ff9bea66c1b7f7;
      
      private var _c9481493bdbb6e4402543aac:_04cce4e240ff9bea66c1b7f7;
      
      private var _e456072c73fa05d46291e9f6:_04cce4e240ff9bea66c1b7f7;
      
      private var _46d10b0c32d2584d0d9ca9c3:Sprite;
      
      private var _75828d751bd9ad5549ffa98e:_33aca7ac1e49b5f2d10a6bbc;
      
      public function _ca860c9b8294f76380913c65(param1:_988093efdfa36e13bfd6c6cf, param2:String)
      {
         this._6d5baa1e6c56067a150909e6 = param2;
         super(param1,new Sprite());
         this.init();
      }
      
      private static function _cf0c53330c0af2cf288d8224() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:GlowFilter = new GlowFilter();
         _loc2_.strength = 0x17E63E93 ^ 0x6B1BA6EA ^ -691819554 ^ -1438764124;
         _loc2_.alpha = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勫劬切削劲勹务剦剞劊劫剑制勮刂劇剠勭勿刾刑勊勶刿","刌劏加前勘勈刼勇勁剞劑劜劻劚劰勻");
         _loc2_.blurX = 0x5C94B0F6 ^ -573223182 ^ 0x6A781C6A ^ -348528006;
         _loc2_.blurY = -1630931510 ^ 0x14CC2179 ^ -954408323 ^ 0x4D1936DA;
         _loc2_.color = 0x7FFF0B5A ^ -594950996 ^ -1470169465 ^ 0x0BD7CE42;
         _loc1_.push(_loc2_);
         return _loc1_;
      }
      
      private static function red() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         var _temp_3:* = _loc2_;
         var _temp_2:* = -1179597374 ^ -961806379 ^ 0x4300AD9C ^ 0x3C1B978A;
         var _temp_1:* = 0x2EF9E3C3 ^ 0x4A7FC7A5 ^ -1094082429 ^ -632322843;
         _loc2_ = _temp_3.concat([_temp_2,_temp_1,_temp_1,_temp_1,0x097E7A2A ^ 0x75F212A3 ^ -760489281 ^ -1373130186]);
         var _temp_6:* = _loc2_;
         var _temp_4:* = 0x3AFCE911 ^ 0x7479C6D5 ^ -1797578092 ^ -631370416;
         var _temp_5:* = -2110964141 ^ 0x073EC3D3 ^ 0x2E76A354 ^ -1419419948;
         _loc2_ = _temp_6.concat([_temp_4,_temp_4,_temp_4,_temp_5,_temp_5]);
         var _temp_9:* = _loc2_;
         var _temp_7:* = -80508543 ^ 0x352CE81E ^ 0x64BE9090 ^ -1432227569;
         var _temp_8:* = -746401372 ^ 0x7788D1C8 ^ -498689278 ^ 0x464C9B6E;
         _loc2_ = _temp_9.concat([_temp_7,_temp_7,_temp_7,_temp_8,_temp_8]);
         var _temp_11:* = _loc2_;
         var _temp_10:* = -1067126435 ^ 0x5090916E ^ 0x5D4DB8CA ^ -843458311;
         _loc2_ = _temp_11.concat([_temp_10,_temp_10,_temp_10,0x781E7EC1 ^ 0x1DC88783 ^ 0x532AEAEE ^ 0x36FC13AD,-1691397066 ^ -1932791925 ^ -712816485 ^ -1033374938]);
         var _loc3_:ColorMatrixFilter = new ColorMatrixFilter(_loc2_);
         _loc1_.push(_loc3_);
         return _loc1_;
      }
      
      public function get iso() : _04cce4e240ff9bea66c1b7f7
      {
         return this._b4fec007aaa6b5b5afb721dc;
      }
      
      public function set handleClick(param1:Boolean) : void
      {
         (this._b4fec007aaa6b5b5afb721dc.source as Sprite).buttonMode = param1;
         this._b4fec007aaa6b5b5afb721dc._fc17178734ae7cc816dbcc2f(param1);
      }
      
      public function set handleMouseUp(param1:Boolean) : void
      {
         if(param1 == this._b4fec007aaa6b5b5afb721dc.source.hasEventListener(MouseEvent.MOUSE_UP))
         {
            return;
         }
         var _loc2_:Boolean = this._b4fec007aaa6b5b5afb721dc.source.hasEventListener(MouseEvent.CLICK);
         var _loc3_:Boolean = this._b4fec007aaa6b5b5afb721dc.source.hasEventListener(MouseEvent.MOUSE_MOVE);
         var _loc4_:Boolean = this._b4fec007aaa6b5b5afb721dc.source.hasEventListener(MouseEvent.MOUSE_DOWN);
         this._b4fec007aaa6b5b5afb721dc._fc17178734ae7cc816dbcc2f(_loc2_,_loc3_,param1,param1,_loc4_);
      }
      
      public function set handleMouseDown(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         _loc2_ = this._b4fec007aaa6b5b5afb721dc.source.hasEventListener(MouseEvent.CLICK);
         _loc3_ = this._b4fec007aaa6b5b5afb721dc.source.hasEventListener(MouseEvent.MOUSE_MOVE);
         _loc4_ = this._b4fec007aaa6b5b5afb721dc.source.hasEventListener(MouseEvent.MOUSE_UP);
         (this._b4fec007aaa6b5b5afb721dc.source as Sprite).buttonMode = param1;
         this._b4fec007aaa6b5b5afb721dc._fc17178734ae7cc816dbcc2f(_loc2_,_loc3_,_loc4_,_loc4_,param1);
      }
      
      public function set filter(param1:String) : void
      {
         switch(param1)
         {
            case _61273d3106d0e511b3de3353.EIIFT_GLOW:
               §§push(0x632B764E ^ 0x60922ECB ^ 0x1034D1DD ^ 0x138D8958);
               break;
            case _61273d3106d0e511b3de3353.EIIFT_NONE:
               §§push(-1647161744 ^ 0x5355AB85 ^ 0x6826F21D ^ -1499392023);
               break;
            case _61273d3106d0e511b3de3353.EIIFT_RED:
               §§push(-281839304 ^ 0x698596C8 ^ 0x60F1969A ^ -431523480);
               break;
            default:
               §§push(0x48D3B64A ^ -1997373147 ^ 0x0BA329B0 ^ -880664868);
         }
         switch(§§pop())
         {
            case 0:
               this._b4fec007aaa6b5b5afb721dc.source.filters = _cf0c53330c0af2cf288d8224();
               break;
            case 1:
               this._b4fec007aaa6b5b5afb721dc.source.filters = null;
               break;
            case 2:
               this._b4fec007aaa6b5b5afb721dc.source.filters = red();
         }
      }
      
      public function set isMouseEnabled(param1:Boolean) : void
      {
         (this._b4fec007aaa6b5b5afb721dc.source as Sprite).mouseChildren = param1;
         (this._b4fec007aaa6b5b5afb721dc.source as Sprite).mouseEnabled = param1;
      }
      
      public function get width() : Number
      {
         return this._b4fec007aaa6b5b5afb721dc.source.width;
      }
      
      public function get x() : Number
      {
         return this._b4fec007aaa6b5b5afb721dc.source.x;
      }
      
      public function get y() : Number
      {
         return this._b4fec007aaa6b5b5afb721dc.source.y;
      }
      
      public function set x(param1:Number) : void
      {
         this._b4fec007aaa6b5b5afb721dc.source.x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this._b4fec007aaa6b5b5afb721dc.source.y = param1;
      }
      
      public function set isOnDrag(param1:Boolean) : void
      {
         this._c9481493bdbb6e4402543aac.source.visible = !param1;
      }
      
      private function init() : void
      {
         this._75828d751bd9ad5549ffa98e = controller as _33aca7ac1e49b5f2d10a6bbc;
         this._b4fec007aaa6b5b5afb721dc = new _04cce4e240ff9bea66c1b7f7(controller,new Sprite());
         this._c9481493bdbb6e4402543aac = new _04cce4e240ff9bea66c1b7f7(controller,new Sprite());
         this._e456072c73fa05d46291e9f6 = new _04cce4e240ff9bea66c1b7f7(controller,new Sprite());
         this._46d10b0c32d2584d0d9ca9c3 = new Sprite();
      }
      
      public function load() : void
      {
         this._75828d751bd9ad5549ffa98e.load(this._46d10b0c32d2584d0d9ca9c3,this._6d5baa1e6c56067a150909e6,_2486fa5f7cd2f56ad6f3cb62.EIIAT_ISO);
         this._75828d751bd9ad5549ffa98e.load(this._c9481493bdbb6e4402543aac.source as DisplayObjectContainer,this._6d5baa1e6c56067a150909e6,_2486fa5f7cd2f56ad6f3cb62.EIIAT_SHADOW);
         this._75828d751bd9ad5549ffa98e.load(this._e456072c73fa05d46291e9f6.source as DisplayObjectContainer,this._6d5baa1e6c56067a150909e6,_2486fa5f7cd2f56ad6f3cb62.EIIAT_OBSTACLE);
      }
      
      public function _0ad9c1fdb902a66dc9200334(param1:DisplayObjectContainer) : void
      {
         param1.addChild(this._b4fec007aaa6b5b5afb721dc.source);
         param1.addChild(this._c9481493bdbb6e4402543aac.source);
         param1.addChild(this._e456072c73fa05d46291e9f6.source);
         this._b4fec007aaa6b5b5afb721dc.hide();
         this._c9481493bdbb6e4402543aac.hide();
         this._e456072c73fa05d46291e9f6.hide();
      }
      
      override public function show(param1:Number = 0, param2:Function = null) : void
      {
         this._b4fec007aaa6b5b5afb721dc.show();
         this._c9481493bdbb6e4402543aac.show();
      }
      
      override public function hide(param1:Number = 0, param2:Function = null) : void
      {
         this._b4fec007aaa6b5b5afb721dc.hide();
         this._c9481493bdbb6e4402543aac.hide();
      }
      
      public function _2470e86c95bcc4626cc127cf(param1:DisplayObjectContainer) : void
      {
         var _loc2_:int = 0x7794F030 ^ -1760500757 ^ 0x48AF2467 ^ 0x59A791C4;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x2BEC2ECB ^ -1332996507 ^ -1334830981 ^ -627276114))
            {
               case 0:
                  if(this._e456072c73fa05d46291e9f6.source.parent == param1)
                  {
                     _loc2_ = 0x5D2E9813 ^ -1305145942 ^ 0x76E92BF3 ^ 0x687E1830;
                  }
                  else
                  {
                     _loc2_ = 0x24C6D731 ^ -708483736 ^ -1649807855 ^ -1658389962;
                  }
                  break;
               case 1:
                  param1.removeChild(this._e456072c73fa05d46291e9f6.source);
                  _loc2_ = -367067695 ^ -1780866783 ^ 0x380F03A5 ^ -1236829909;
                  break;
               case 2:
                  if(this._c9481493bdbb6e4402543aac.source.parent == param1)
                  {
                     _loc2_ = 0x6457A94C ^ 0x3E9BD38C ^ 0x5C12DE9B ^ -145620442;
                  }
                  else
                  {
                     _loc2_ = 0x3F031201 ^ -1154519910 ^ -1229838830 ^ -1022165262;
                  }
                  break;
               case 3:
                  if(this._b4fec007aaa6b5b5afb721dc.source.parent == param1)
                  {
                     _loc2_ = -1604574040 ^ 0x0C7D4786 ^ -2034594215 ^ -619230456;
                  }
                  else
                  {
                     _loc2_ = -1865437720 ^ 0x6AD7A917 ^ 0x5D2F5145 ^ 0x56BBF3C3;
                  }
                  break;
               case 4:
                  param1.removeChild(this._b4fec007aaa6b5b5afb721dc.source);
                  _loc2_ = 0x755C8748 ^ -1008360745 ^ -85468415 ^ -1110288153;
                  break;
               case 5:
                  return;
               case 6:
                  param1.removeChild(this._c9481493bdbb6e4402543aac.source);
                  _loc2_ = -522563348 ^ -838299645 ^ 0x2204EC2A ^ -44397890;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function setPosition(param1:String, param2:Point, param3:int) : void
      {
         var _loc4_:DisplayObject = null;
         switch(param1)
         {
            case _2486fa5f7cd2f56ad6f3cb62.EIIAT_ISO:
               §§push(0x26BF87B6 ^ -805109821 ^ -689728622 ^ 0x205EEBE7);
               break;
            case _2486fa5f7cd2f56ad6f3cb62.EIIAT_OBSTACLE:
               §§push(0x5D1D5899 ^ -1835394909 ^ 0x5D96DCD1 ^ -1844339478);
               break;
            case _2486fa5f7cd2f56ad6f3cb62.EIIAT_SHADOW:
               §§push(-1211388156 ^ 0x14B4296D ^ -1342031164 ^ 0x137DBCAF);
               break;
            default:
               §§push(0x16DE4FF2 ^ 0x63EC12F7 ^ -1946127081 ^ -114153455);
         }
         switch(§§pop())
         {
            case 0:
               _loc4_ = this._b4fec007aaa6b5b5afb721dc.source;
               break;
            case 1:
               _loc4_ = this._e456072c73fa05d46291e9f6.source;
               break;
            case 2:
               _loc4_ = this._c9481493bdbb6e4402543aac.source;
         }
         _loc4_.x = (-499302774 ^ -234354132 ^ -145639814 ^ -412843282) * param2.x;
         _loc4_.y = (-928554805 ^ -1662197962 ^ -116722515 ^ -1388230544) + (0x5098CB0C ^ -172348064 ^ 0x28EF26C0 ^ -1915895650) * param2.y + param3;
      }
      
      public function _9fc09ec9cd14fd5e825e7028(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Bitmap = (this._e456072c73fa05d46291e9f6.source as DisplayObjectContainer).getChildAt(0x64138EA5 ^ -749649961 ^ -1415003889 ^ 0x1CEA707D) as Bitmap;
         param1 -= this._e456072c73fa05d46291e9f6.source.x + _loc4_.x;
         param2 -= this._e456072c73fa05d46291e9f6.source.y + _loc4_.y;
         return _loc4_.bitmapData != null && _loc4_.bitmapData.getPixel32(param1,param2) > (0x469D0D3C ^ 0x2054388D ^ 0x487CB019 ^ 0x3E4A7A57);
      }
      
      public function _0f22b0ff67cf444454e16c17() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:Sprite = null;
         _loc1_ = null;
         _loc2_ = null;
         _loc1_ = this._46d10b0c32d2584d0d9ca9c3.getChildAt(0x12EA88C3 ^ -1377353754 ^ 0x78D2D654 ^ -941661839) as Bitmap;
         _loc2_ = _d05691e68e00eacb6c602986._00f63d3b0895f2a8039d6ae9(_loc1_);
         _loc2_.x = _loc1_.x;
         _loc2_.y = _loc1_.y;
         _loc2_.cacheAsBitmap = true;
         (this._b4fec007aaa6b5b5afb721dc.source as DisplayObjectContainer).addChild(_loc2_);
      }
   }
}

