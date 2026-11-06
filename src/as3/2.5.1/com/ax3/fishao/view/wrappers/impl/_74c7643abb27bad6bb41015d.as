package com.ax3.fishao.view.wrappers.impl
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   
   public class _74c7643abb27bad6bb41015d extends ShiftWrapper implements IAssetWrapper
   {
      
      private var _0acb1a6dea211392794a2feb:Function;
      
      private var _b0f46610f874cbca0f67f499:Vector.<MovieClip> = new Vector.<MovieClip>();
      
      private var _3afd2ed4952081512be4af90:Vector.<MovieClip> = new Vector.<MovieClip>();
      
      private var _bcfc78ddd6fb82eb4a49fa2b:int = -1;
      
      public function _74c7643abb27bad6bb41015d()
      {
         super();
      }
      
      public function _ac7114ce339c765b824e462f(param1:Vector.<MovieClip>, param2:Vector.<TextField> = null) : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0x0D367604 ^ 0x6DFCBD59 ^ 0x3F5DF050 ^ 0x5F973B0D;
         _loc3_ = null;
         _loc4_ = 0x30F61947 ^ 0x0A6C46D8 ^ -844229029 ^ -147568188;
         this._b0f46610f874cbca0f67f499 = param1;
         if(this._b0f46610f874cbca0f67f499 != null)
         {
            _loc4_ = -153300171 ^ -706621598 ^ -198124833 ^ -686963064;
            while(_loc4_ < this._b0f46610f874cbca0f67f499.length)
            {
               this._b0f46610f874cbca0f67f499[_loc4_].addEventListener(MouseEvent.ROLL_OVER,this._7936624f371923b316a2eb93);
               this._b0f46610f874cbca0f67f499[_loc4_].gotoAndStop(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႨၫႲထ႖ဲဃ჈အႩၠႬ၉ႌၗტၔ႔კါშჽჽზဲဧ჏်","ჺြဍဨ႙ဦၱჍဝბႴႡ႟ဠည၈"));
               this._b0f46610f874cbca0f67f499[_loc4_].mouseChildren = false;
               this._b0f46610f874cbca0f67f499[_loc4_].buttonMode = true;
               if(param2 != null && param2.length > _loc4_ && param2[_loc4_] != null)
               {
                  _loc3_ = new MovieClip();
                  if(param2[_loc4_].type != TextFieldType.INPUT)
                  {
                     _loc3_.buttonMode = true;
                     _loc3_.mouseChildren = false;
                     _loc3_.addEventListener(MouseEvent.ROLL_OVER,this._beed5475bf6d563998a4a2ab);
                  }
                  else
                  {
                     param2[_loc4_].addEventListener(MouseEvent.CLICK,this._ecc962f48d12aa01b4a17de8);
                  }
                  param2[_loc4_].parent.addChild(_loc3_);
                  _loc3_.x = param2[_loc4_].x;
                  _loc3_.y = param2[_loc4_].y;
                  _loc3_.addChild(param2[_loc4_]);
                  param2[_loc4_].x = 0x0312C91D ^ 0x7E832A80 ^ 0x796ED4C7 ^ 0x04FF375A;
                  param2[_loc4_].y = -606545391 ^ -2111045152 ^ -2100145591 ^ -618231368;
                  param2[_loc4_].height = param2[_loc4_].textHeight + (0x6EAC823F ^ -1700355892 ^ 0x0D6F41D0 ^ -110796000);
                  this._3afd2ed4952081512be4af90[_loc4_] = _loc3_;
               }
               _loc4_++;
            }
         }
      }
      
      private function _ecc962f48d12aa01b4a17de8(param1:MouseEvent) : void
      {
         this.selected = this._3afd2ed4952081512be4af90.indexOf(TextField(param1.target).parent);
      }
      
      public function set changeHandler(param1:Function) : void
      {
         this._0acb1a6dea211392794a2feb = param1;
      }
      
      public function get selected() : int
      {
         return this._bcfc78ddd6fb82eb4a49fa2b;
      }
      
      public function set selected(param1:int) : void
      {
         var _loc2_:int = -1299910385 ^ -1752612669 ^ -873800828 ^ -286823864;
         var _loc3_:int = 0x3A1EEA0F ^ 0x671E7562 ^ -1923061322 ^ 0x3A10FAE6;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1323516629 ^ 0x7D22ADFD ^ 0x3EF825CC ^ 0x18B63920))
            {
               case 0:
                  return;
               case 1:
                  this._b0f46610f874cbca0f67f499[_loc2_].gotoAndStop(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勠刕刈刨勴勚勷刼剘劄努則別刌劋勏剞劝勵刂勝刎剼勾劭劸劚劚","勮剈劐励劤剗刐刲剰刘剃剶創劫剫刾"));
                  _loc3_ = -891963543 ^ 0x2CD9C982 ^ 0x6A01813D ^ 0x667DF3EE;
                  break;
               case 2:
                  _loc2_++;
                  _loc3_ = 0x77919B4E ^ -1042670942 ^ -69537016 ^ -1478394152;
                  break;
               case 3:
                  this._0acb1a6dea211392794a2feb(null);
                  _loc3_ = -894140476 ^ -954049560 ^ -1163525078 ^ 0x5D402C3C;
                  break;
               case 4:
                  if(this._0acb1a6dea211392794a2feb != null)
                  {
                     _loc3_ = 0x40F5F4EC ^ -1505098857 ^ 0x60F226B0 ^ 0x6C3DDDF2;
                  }
                  else
                  {
                     _loc3_ = -1283910383 ^ 0x03A847B6 ^ 0x0206FAFF ^ 0x58A7A462;
                  }
                  break;
               case 5:
                  if(_loc2_ == this._bcfc78ddd6fb82eb4a49fa2b)
                  {
                     _loc3_ = -1385874755 ^ -832756611 ^ -355103055 ^ 0x639D9C43;
                  }
                  else
                  {
                     _loc3_ = -855208874 ^ 0x374095E9 ^ -1138740488 ^ -1407834244;
                  }
                  break;
               case 6:
                  if(_loc2_ >= this._b0f46610f874cbca0f67f499.length)
                  {
                     _loc3_ = -1318485932 ^ 0x771B1DAA ^ -1935723717 ^ -1600281861;
                  }
                  else
                  {
                     _loc3_ = -2086084962 ^ -657197989 ^ -1457985732 ^ 0x1813C1C6;
                  }
                  break;
               case 7:
                  this._bcfc78ddd6fb82eb4a49fa2b = param1;
                  _loc2_ = -605319085 ^ -46280871 ^ -364757134 ^ -862691208;
                  _loc3_ = -54013825 ^ -953908918 ^ 0x2BF453C5 ^ -93909300;
                  break;
               case 8:
                  this._b0f46610f874cbca0f67f499[_loc2_].gotoAndStop(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ც၃ၹჼ჌Ⴤქ႘ဠးဨးၧဍღჭ႘႔Ⴋဵဒ၀ၖ჎","ၣმ჻ჽ჋ဲმႏရၣၱ႟ჵႵီဘ"));
                  _loc3_ = -930301575 ^ -1754565121 ^ 0x5B4694E4 ^ -288271270;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _beed5475bf6d563998a4a2ab(param1:MouseEvent) : void
      {
         param1.target.removeEventListener(MouseEvent.ROLL_OVER,this._beed5475bf6d563998a4a2ab);
         param1.target.addEventListener(MouseEvent.ROLL_OUT,this._0c202c0146bf5461e31cd062);
         param1.target.addEventListener(MouseEvent.CLICK,this._198898bf68728450baa84593);
      }
      
      private function _0c202c0146bf5461e31cd062(param1:MouseEvent) : void
      {
         param1.target.addEventListener(MouseEvent.ROLL_OVER,this._beed5475bf6d563998a4a2ab);
         param1.target.removeEventListener(MouseEvent.ROLL_OUT,this._0c202c0146bf5461e31cd062);
         param1.target.removeEventListener(MouseEvent.CLICK,this._198898bf68728450baa84593);
      }
      
      private function _198898bf68728450baa84593(param1:MouseEvent) : void
      {
         this.selected = this._3afd2ed4952081512be4af90.indexOf(param1.target);
      }
      
      private function _7936624f371923b316a2eb93(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop((param1.target as MovieClip).currentFrame + (-2038658729 ^ 0x5AF72892 ^ -1402155196 ^ 0x70E76E80));
         (param1.target as MovieClip).removeEventListener(MouseEvent.ROLL_OVER,this._7936624f371923b316a2eb93);
         (param1.target as MovieClip).addEventListener(MouseEvent.CLICK,this._c2ba54a25c786c8de6a1e2d1);
         (param1.target as MovieClip).addEventListener(MouseEvent.ROLL_OUT,this._bf3b96891db8aef519b3aa81);
      }
      
      private function _bf3b96891db8aef519b3aa81(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop((param1.target as MovieClip).currentFrame - 1);
         (param1.target as MovieClip).addEventListener(MouseEvent.ROLL_OVER,this._7936624f371923b316a2eb93);
         (param1.target as MovieClip).removeEventListener(MouseEvent.CLICK,this._c2ba54a25c786c8de6a1e2d1);
         (param1.target as MovieClip).removeEventListener(MouseEvent.ROLL_OUT,this._bf3b96891db8aef519b3aa81);
      }
      
      private function _c2ba54a25c786c8de6a1e2d1(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x0F546AB8 ^ -903058618 ^ 0x7EF50FA0 ^ -1148383650;
         var _loc3_:int = 0x2BBBBF77 ^ 0x3EA64ADF ^ 0x74A5F14C ^ 0x0ABC3C3C;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x4DB7AABC ^ -803766933 ^ -513870454 ^ 0x17FA1A87))
            {
               case 0:
                  if(this._0acb1a6dea211392794a2feb != null)
                  {
                     _loc3_ = -579339593 ^ 0x7A4E8D2F ^ 0x716175D3 ^ -1118029168;
                  }
                  else
                  {
                     _loc3_ = -1411542462 ^ -1179060483 ^ 0x22FB19D6 ^ 0x5B9A45BB;
                  }
                  break;
               case 1:
                  this._0acb1a6dea211392794a2feb(param1);
                  _loc3_ = -1330650460 ^ 0x6DACC0F8 ^ 0x1E099AE3 ^ -1475444627;
                  break;
               case 2:
                  _loc2_ = -1948913463 ^ 0x19F3240F ^ -1510992574 ^ 0x37D6C184;
                  _loc3_ = -1243121322 ^ -1897534717 ^ -1748095063 ^ -943160029;
                  break;
               case 3:
                  _loc2_++;
                  _loc3_ = -1188546000 ^ -914076192 ^ 0x4E81A290 ^ 0x5529ED9F;
                  break;
               case 4:
                  this._b0f46610f874cbca0f67f499[_loc2_].gotoAndStop(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剆劔删劶剼勚勗劫劥刟副刲刁刡勺刘刚劃剝刐勌勮劉创劻剼劥劏刴刭勫勒勩勻","务剝劑剶削勒劑剋利勺剺劂劾勐刅刾"));
                  this._bcfc78ddd6fb82eb4a49fa2b = _loc2_;
                  _loc3_ = 0x67C84B01 ^ 0x0CD976B7 ^ 0x7AF121FC ^ 0x7AE42493;
                  break;
               case 5:
                  if(_loc2_ >= this._b0f46610f874cbca0f67f499.length)
                  {
                     _loc3_ = -812908839 ^ 0x69F8132A ^ -811052818 ^ 0x02DF85C7;
                  }
                  else
                  {
                     _loc3_ = 0x7899C5FE ^ -205354050 ^ -1126503992 ^ 0x5C859F54;
                  }
                  break;
               case 6:
                  if(param1.target == this._b0f46610f874cbca0f67f499[_loc2_])
                  {
                     _loc3_ = -595390825 ^ -1051895759 ^ 0x29E10749 ^ 0x5F2B6931;
                  }
                  else
                  {
                     _loc3_ = -1970115318 ^ 0x7CBB15E8 ^ 0x5EBF7966 ^ -1013827239;
                  }
                  break;
               case 7:
                  this._b0f46610f874cbca0f67f499[_loc2_].gotoAndStop(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჼဉဓဩဒှ၁ုယၘၒႆ၂။ძျ႖Ⴙ႟ႃႯၺညჟႽတჱႩ","჉ၑეီႈჲႋႮႷႻဥ႑ႄ႙Ⴤၜ"));
                  _loc3_ = 0x4F33D59E ^ 0x115FE822 ^ 0x1C815C07 ^ 0x29E95962;
                  break;
               case 8:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

