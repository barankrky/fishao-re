package com.ax3.fishao.locations.objects
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.utils._5f5fc3a6dc1e8f79994a4a9b;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class _16d81cd3752ec17476350b1a
   {
      
      private var _asset:MovieClip;
      
      private var _1b80ad0232e826ecb1f80641:Boolean;
      
      private var _6b3aabd628136df306272ceb:BitmapData;
      
      private var _acbe37991ae416a20e4bf76e:Rectangle;
      
      private var _4389131257734f21bd4b94c1:Number;
      
      private var _8c27114f5ea07e06f0eddc85:Number;
      
      public function _16d81cd3752ec17476350b1a()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = MovieClip(param1);
         var _loc2_:DisplayObject = this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掻換揲掕据挞揩换揫掇揓捂捱揁捕挐捍挰揃捒挩挹换掤掖挹揜挈揼揶","挂掫掭捪揗挨捴揄掻捫捭掤捬捄捙挻"));
         this._acbe37991ae416a20e4bf76e = _loc2_.getBounds(_loc2_);
         this._6b3aabd628136df306272ceb = _5f5fc3a6dc1e8f79994a4a9b._e7dbc3137e062426b65fde1a(_loc2_);
         _loc2_.visible = false;
         this._asset.gotoAndStop(-919663618 ^ 0x7FBD5580 ^ 0x4CFF15EE ^ -93500527);
         this._4389131257734f21bd4b94c1 = this._asset.x + this._acbe37991ae416a20e4bf76e.x;
         this._8c27114f5ea07e06f0eddc85 = this._asset.y + this._acbe37991ae416a20e4bf76e.y;
      }
      
      public function open() : void
      {
         var _loc1_:int = -2024563238 ^ 0x161E7218 ^ -1918493497 ^ 0x34B3C8F8;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-349447896 ^ -1858319372 ^ 0x299175DE ^ 0x7BDEDCFF))
            {
               case 0:
                  if(this._1b80ad0232e826ecb1f80641 == false)
                  {
                     _loc1_ = -331922897 ^ 0x5299D544 ^ 0x0D8A48AC ^ -1686313928;
                  }
                  else
                  {
                     _loc1_ = 0x77E3FE69 ^ -1050820185 ^ 0x0476BDE0 ^ -1701791278;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._1b80ad0232e826ecb1f80641 = true;
                  TweenCube.destroyTweensOf(this,false);
                  TweenCube.to(this,-870710231 ^ -908185301 ^ -743899828 ^ -697513905,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဏဠဩၻ၄ဃူဢဏဦုჍ်ჳဟლှუ","ყဿဌ။ბတဧ჻ႅႇ႒ႳჰჴႸ၎")):this._asset.totalFrames},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဇၙძ႘სးႁ႒ჼမၲჄႉ၄ႇ჋်ဩမတီစ၈ၠჾထမႥ","ဢ႒ဪၞႎჄႊ့ၗညၞႱკჺ၉ၞ")):this._8c710340ca65abda46064fe4});
                  _loc1_ = 0x02BF44C5 ^ -326677586 ^ 0x6D79A120 ^ -1424386633;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _8c710340ca65abda46064fe4() : void
      {
         Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刷劀剡刉劒剮刱劄刪剼副勽劝制刍努劶刀劾勶创劧勷刏剃劘勽剱剚劘刺勾劫勿剮刭刍刏勜劧剚剜剄副","刾勁劋刕力劌刋刽勝剏劐刿勓剉勝勊"));
      }
      
      public function close() : Boolean
      {
         var _loc1_:int = 0x76D5E562 ^ 0x50E54DD5 ^ -375789859 ^ 0x22B63985;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-510503060 ^ 0x2FBA7386 ^ -252557986 ^ -742058405))
            {
               case 0:
                  if(this._1b80ad0232e826ecb1f80641 == true)
                  {
                     _loc1_ = 0x35658A9A ^ 0x1322DE72 ^ -376367481 ^ 0x22C93582;
                  }
                  else
                  {
                     _loc1_ = -1795324990 ^ -1377540247 ^ -1196563872 ^ 0x6CAB7125;
                  }
                  break;
               case 1:
                  return false;
               case 2:
                  this._1b80ad0232e826ecb1f80641 = false;
                  TweenCube.destroyTweensOf(this,false);
                  this._asset.gotoAndStop(0x6D3CAA22 ^ 0x20FCAB0C ^ -225473453 ^ -1085305476);
                  Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刔努剟劮剁剨労勸劆列剶劓勵勏勐勍勣办勜剏剉劜刲劼刭劜刖剩刭劕刐剹勱剦剓劋勶剠劆势勣剒劺劵","刍劏刼勽剜勭刲副則刹努刮劭劇剔勩"));
                  return true;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set frame(param1:int) : void
      {
         var _loc2_:int = 0x6C23B9BD ^ 0x6707AF44 ^ 0x2581A81B ^ -940885259;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x3A527B11 ^ -1291234179 ^ 0x21657031 ^ 0x4170DB4B))
            {
               case 0:
                  return;
               case 1:
                  if(this._asset.currentFrame != param1)
                  {
                     _loc2_ = -70806064 ^ -55304289 ^ -1309555066 ^ 0x5FCCC8DD;
                  }
                  else
                  {
                     _loc2_ = -1571659932 ^ 0x0F7F9209 ^ -713005675 ^ -1847382802;
                  }
                  break;
               case 2:
                  this._asset.gotoAndStop(param1);
                  _loc2_ = -1947871961 ^ -1554777226 ^ -662580380 ^ 0x19797923;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get frame() : int
      {
         return this._asset.currentFrame;
      }
      
      public function _c53f7e20214363e9e2c433e7() : Boolean
      {
         return this._1b80ad0232e826ecb1f80641 && this._asset.currentFrame == this._asset.totalFrames;
      }
      
      public function hitTest(param1:Number, param2:Number) : Boolean
      {
         param1 = param1 - this._4389131257734f21bd4b94c1 + (0x59158EDD ^ -929450333 ^ 0x44D7F2CA ^ -715404610);
         param2 -= this._8c27114f5ea07e06f0eddc85;
         return this._c53f7e20214363e9e2c433e7() == false && this._6b3aabd628136df306272ceb != null && param1 > (0x3589F6C2 ^ -206158001 ^ -1298804995 ^ 0x74AA7F70) && param2 > (0x22571A08 ^ 0x7AB6B75D ^ -533270039 ^ -1193845572) && param1 < this._6b3aabd628136df306272ceb.width && param2 < this._6b3aabd628136df306272ceb.height && this._6b3aabd628136df306272ceb.getPixel32(param1,param2) > (-1990870441 ^ 0x12299022 ^ -1103807512 ^ 0x25B6EE62);
      }
      
      public function destroy() : void
      {
         this._asset = null;
         this._6b3aabd628136df306272ceb.dispose();
         this._6b3aabd628136df306272ceb = null;
         this._acbe37991ae416a20e4bf76e = null;
      }
   }
}

