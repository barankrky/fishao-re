package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.core.IMovieListElement;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class _416fb27b36f9690d05dd108a extends Sprite implements IAssetWrapper, IMovieListElement
   {
      
      private var _c3d4d8a1d98c158ec2f7e290:TextField;
      
      private var _cbb9e86be8e2c5394b9d87fe:MovieClip;
      
      private var _5a2f08c666a29319aff4ca40:MovieClip;
      
      public function _416fb27b36f9690d05dd108a()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:int = 0x12133F0C ^ 0x698E7F54 ^ 0x23B59D79 ^ -1503154307;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x04D4CED2 ^ -1230537082 ^ 0x19CF7F4A ^ 0x55F3BD40))
            {
               case 0:
                  this._c3d4d8a1d98c158ec2f7e290 = TextField(DisplayObjectContainer(param1).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劫労励劗割剅刼勊剬剜劻劉办功","勲劀勡勮勌勤勲剄刧励加別刧到剑剩")));
                  this._cbb9e86be8e2c5394b9d87fe = MovieClip(DisplayObjectContainer(param1).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掇掭掊揙掛挒揖挠挫採挣捶揩掯挪掓挻援揭掗","捑捏捹捠授捚揣揗挟揩掌挾挈挹挤掃")));
                  this._5a2f08c666a29319aff4ca40 = MovieClip(DisplayObjectContainer(param1).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掺捁掁挂捚挧探揽损捼捥挂掬揟掺掛揠挼","捾挂掄捃揻掵挝捦挵捯掮挟挣揔挠揆")));
                  this.text = "";
                  return;
               case 1:
                  addChild(param1);
                  _loc2_ = -839385958 ^ 0x76D75874 ^ 0x38D4DBFE ^ 0x7DBB0D4E;
                  break;
               case 2:
                  if(param1.parent == null)
                  {
                     _loc2_ = 0x38C3F292 ^ -838448040 ^ -1601618004 ^ -1476136135;
                  }
                  else
                  {
                     _loc2_ = 0x6D6EA863 ^ 0x67C720C4 ^ 0x7ACE184A ^ -1909923149;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function getCurrentElementIdex() : int
      {
         return -1593453448 ^ -711427039 ^ -1385998735 ^ 0x260101D7;
      }
      
      public function set text(param1:String) : void
      {
         this._c3d4d8a1d98c158ec2f7e290.text = param1;
         this._cbb9e86be8e2c5394b9d87fe.width = int(this._c3d4d8a1d98c158ec2f7e290.textWidth) + (-1033203864 ^ 0x027DC678 ^ 0x377DBBA7 ^ -143985985) > (-446585840 ^ 0x27E1DE67 ^ -2101955162 ^ 0x4036CFE3) ? int(this._c3d4d8a1d98c158ec2f7e290.textWidth) + (0x2D448CC0 ^ 0x4C098453 ^ 0x6315B754 ^ 0x0258BFCF) : -523113830 ^ 0x0FFBC463 ^ -507066423 ^ 0x0EECE902;
         this._c3d4d8a1d98c158ec2f7e290.width = this._cbb9e86be8e2c5394b9d87fe.width;
         this._c3d4d8a1d98c158ec2f7e290.x = this._cbb9e86be8e2c5394b9d87fe.x;
         this._5a2f08c666a29319aff4ca40.x = int(this._cbb9e86be8e2c5394b9d87fe.x + this._cbb9e86be8e2c5394b9d87fe.width) - 1;
      }
      
      public function get text() : String
      {
         return this._c3d4d8a1d98c158ec2f7e290.text;
      }
   }
}

