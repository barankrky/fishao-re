package com.ax3.fishao.locations.objects
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class _a0122b99577546c514d5fb28 extends Sprite
   {
      
      private var _asset:DisplayObjectContainer;
      
      private var _3d135b6a42ec404a9c1809da:DisplayObject;
      
      private var _386c466791086a21c31157a8:DisplayObject;
      
      public function _a0122b99577546c514d5fb28(param1:DisplayObject)
      {
         super();
         this._asset = DisplayObjectContainer(param1);
         this._3d135b6a42ec404a9c1809da = this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劣刂刦剝励刑力劄别剉劢勾勵分","刺勐刟刏刃劗刃勜劈刊到刜勾剋劰刹"));
         this._386c466791086a21c31157a8 = this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挧掻挅揁按揤捗挏挕揶援挗掗掷","挹捍揙掺掬挪捀掩捺揋掹挾揜揳挶揌"));
      }
      
      public function get top() : DisplayObject
      {
         return this._3d135b6a42ec404a9c1809da;
      }
      
      public function get iso() : DisplayObject
      {
         return this._386c466791086a21c31157a8;
      }
      
      public function get asset() : DisplayObject
      {
         return this._asset;
      }
      
      override public function set filters(param1:Array) : void
      {
         var _loc2_:int = -2003983543 ^ -473007465 ^ 0x7ABFEBF4 ^ -942874669;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-421664005 ^ 0x0506FBEE ^ 0x316989BE ^ 0x04827556))
            {
               case 0:
                  this._3d135b6a42ec404a9c1809da.filters = param1;
                  _loc2_ = -930353144 ^ -1854564291 ^ 0x2FC38B03 ^ -1609756984;
                  break;
               case 1:
                  return;
               case 2:
                  this._386c466791086a21c31157a8.filters = param1;
                  _loc2_ = 0x7F334A50 ^ 0x2CF03A68 ^ 0x63F268AF ^ -436079253;
                  break;
               case 3:
                  if(this._386c466791086a21c31157a8 != null)
                  {
                     _loc2_ = 0x3D71392B ^ -996887344 ^ -1892948533 ^ -1593932337;
                  }
                  else
                  {
                     _loc2_ = 0x642AC7F5 ^ -1769800618 ^ -374255422 ^ -852916579;
                  }
                  break;
               case 4:
                  this._asset.filters = param1;
                  if(this._3d135b6a42ec404a9c1809da != null)
                  {
                     _loc2_ = 0x3AE5CC09 ^ 0x7E0CD72E ^ -1859491954 ^ 0x03F39154;
                  }
                  else
                  {
                     _loc2_ = 0x073C198D ^ 0x5FD132B6 ^ -1997494253 ^ 0x062D6ED6;
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

