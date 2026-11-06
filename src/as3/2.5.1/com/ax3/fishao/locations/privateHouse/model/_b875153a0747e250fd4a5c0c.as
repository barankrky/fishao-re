package com.ax3.fishao.locations.privateHouse.model
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import flash.display.Shape;
   import flash.display.Sprite;
   
   public class _b875153a0747e250fd4a5c0c extends Sprite
   {
      
      private var red:Shape;
      
      private var green:Shape;
      
      private var _3c3e437b61dee5ef21762c36:Boolean = false;
      
      public function _b875153a0747e250fd4a5c0c()
      {
         super();
         this.x = 0x23CFCC19 ^ -1791798290 ^ -462760739 ^ 0x52964B2A;
         this.y = -731501782 ^ -1088612692 ^ 0x55119880 ^ 0x3E6AA506;
         this.red = new Shape();
         this.red.graphics.beginFill(0x6FB89363 ^ -1161288713 ^ 0x40B939FE ^ -1791587990,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勖勃勉剔加剌劧刜劯初勶剪勜刁劇勽勝副券劤勘劢剝勵","勧劕剓动剎別助劦勻剁剖劒劉勻刕刑"));
         var _temp_3:* = this.red.graphics;
         var _temp_1:* = -778781447 ^ -811500256 ^ 0x0A350DA5 ^ 0x1400CC7C;
         var _temp_2:* = 0x19E462D6 ^ -1171025975 ^ -1899335371 ^ 0x2D1D9C4E;
         _temp_3.drawRect(_temp_1,_temp_1,_temp_2,_temp_2);
         this.red.graphics.endFill();
         this.red.x = -546032308 ^ 0x3AA4D96D ^ 0x83CF86 ^ -447536273;
         this.red.y = (0x1520F76B ^ -708391689 ^ -1882539285 ^ 0x4F2C8257) + (0x3CE2A39D ^ 0x3FAE338C ^ 0x34528B6F ^ 0x371E1B4C) * (0x68F47277 ^ -1398983695 ^ 0x43CDA79E ^ -2019236325);
         this.red.width = -1874982776 ^ 0x24AC68A8 ^ -935998205 ^ 0x7CA7AC0F;
         this.green = new Shape();
         this.green.graphics.beginFill(-642650233 ^ -236550620 ^ 0x0244E53B ^ 0x2A137398,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剐刓划劚劀劐劮势剼刕割勩剘勬剦剐劺刳勳刔剫刜勢勗","剀剣剺剽劧剡劁剎劁動剆助勻刘刁勐"));
         var _temp_6:* = this.green.graphics;
         var _temp_4:* = -1349384561 ^ 0x5E91D9F3 ^ 0x6B386582 ^ -1707361538;
         var _temp_5:* = 0x333906A1 ^ 0x7C4AE4D5 ^ -1038065341 ^ -1923906733;
         _temp_6.drawRect(_temp_4,_temp_4,_temp_5,_temp_5);
         this.green.graphics.endFill();
         this.green.x = -1458719904 ^ -393617787 ^ 0x4F403300 ^ 0x0EC45E2D;
         this.green.y = (-286912554 ^ -1288699669 ^ 0x6306098A ^ 0x3ED00597) + (-280394610 ^ 0x417045D1 ^ 0x607FB46A ^ -834243321) * (0x2AACF8EC ^ -864667027 ^ 0x76AA0EF1 ^ -1871655821);
         addChild(this.red);
         addChild(this.green);
      }
      
      public function hide() : void
      {
         this.red.visible = false;
         this.green.visible = false;
      }
      
      public function show() : void
      {
         var _loc1_:int = -1698519802 ^ 0x23519FA7 ^ -579565255 ^ 0x3A8C3DB6;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-594317183 ^ 0x76403E1C ^ -336914762 ^ 0x1F53D607))
            {
               case 0:
                  this.red.visible = true;
                  _loc1_ = 0x27B44758 ^ 0x70B5DE44 ^ 0x4079CE25 ^ 0x4913D914;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._3c3e437b61dee5ef21762c36)
                  {
                     _loc1_ = 0x0C196172 ^ 0x182249FE ^ -685107369 ^ -1652903433;
                  }
                  else
                  {
                     _loc1_ = 0x603286CE ^ 0x1E59A22B ^ -189110171 ^ -725957969;
                  }
                  break;
               case 3:
                  this.green.visible = true;
                  _loc1_ = -138011317 ^ -1004327678 ^ -91458047 ^ -1761425307;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get isRed() : Boolean
      {
         return this._3c3e437b61dee5ef21762c36;
      }
      
      public function _1eed798b856d9ebe2204505b() : void
      {
         this._3c3e437b61dee5ef21762c36 = true;
         this.hide();
         this.show();
      }
      
      public function _92352776a862376dfd140cb6() : void
      {
         this._3c3e437b61dee5ef21762c36 = false;
         this.hide();
         this.show();
      }
      
      public function _8cef8bd0fb9d52ec62080dda(param1:int, param2:int) : void
      {
         if(param1 < (0x7CB1354E ^ 0x175B2C3B ^ -441299237 ^ -1906813009) || param1 > (-179257106 ^ 0x75DF8336 ^ -454793840 ^ 0x646B2643) || param2 < (-1727172207 ^ -528690639 ^ 0x38840A48 ^ 0x41F5A9E9) || param2 > (-809676430 ^ 0x2042BBCC ^ 0x2C7EA975 ^ -1014938688))
         {
            return;
         }
         this.red.width = this.green.width = param1 * (-1635483334 ^ -1076015246 ^ -262937447 ^ -787862813);
         this.red.height = this.green.height = param2 * (-558640198 ^ -109244608 ^ 0x7E0612E1 ^ 0x59C8CE29);
      }
      
      public function moveTo(param1:int, param2:int) : void
      {
         if(param1 < (0x6F0C97CA ^ 0x1CEB4DBC ^ -1520267490 ^ -695904920) || param1 > (0x6B7495E3 ^ 0x2E78926A ^ -330720879 ^ -1455055341) || param2 < (0x57A5A9B8 ^ 0x304DC414 ^ -1572916042 ^ -975742694) || param2 > (0x6598539D ^ 0x1ED1846B ^ 0x15846642 ^ 0x6ECDB1BF))
         {
            return;
         }
         this.red.x = this.green.x = param1 * (0x6F14D965 ^ 0x3CC153EC ^ -490471671 ^ -1323928142);
         this.red.y = this.green.y = param2 * (-873016624 ^ -1047761569 ^ 0x6F475D58 ^ 0x653DE2E5) + (0x0DB40AFE ^ -1566045139 ^ 0x53DE6B53 ^ -54366560);
      }
   }
}

