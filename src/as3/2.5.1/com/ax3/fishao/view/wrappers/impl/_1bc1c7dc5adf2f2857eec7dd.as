package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class _1bc1c7dc5adf2f2857eec7dd implements IAssetWrapper
   {
      
      private var _title:TextField;
      
      private var _da51ceb746eaf59ea647ceea:MovieClip;
      
      private var _d7748ba2d3f98c365cf77144:MovieClip;
      
      private var _9d292c15718714bee3a97c1a:MovieClip;
      
      private var _2484fe62ec363d814789aea7:MovieClip;
      
      private var _d2bb0d12a144d2dc964bf00f:MovieClip;
      
      private const _697d67518f41af9c26434074:int = 514;
      
      private const _9eb9f19babaab7990334475d:int = 249;
      
      private var _e9143982f34ea03e3d42f09e:DisplayObject;
      
      public function _1bc1c7dc5adf2f2857eec7dd()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._e9143982f34ea03e3d42f09e = param1;
         this._title = TextField(DisplayObjectContainer(param1).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劭刢刏勼刎剆剟刑剔劈勷刾刮则刦劥势剶剗劁刕势劊劕動勸","勏剻劚剛勆动剿剁劅切剛刋刢劏劼勣")));
         this._title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剬勰办列剼劫劁剿刐勫判剸剙副勁剉勼劸勘剅刷勠剓副劎利勠劀勹剰创勩","募剛判劇刱勹剾剾勱勊刷勩刚办励劺"));
         this._da51ceb746eaf59ea647ceea = MovieClip(DisplayObjectContainer(param1).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("採掽捤捳掲揫挩揻掇揫揫捍揉挡掦掲","挂捥挱捀揉描掼捂捨挓指掎控掏捿捧")));
         this._d7748ba2d3f98c365cf77144 = MovieClip(DisplayObjectContainer(param1).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("။နၟႜၸၯჼဖႹဿႂဳ჊ე჊၈ჁၨႣეဉပၙႱჃღၢႃ","ီဟဋჃႪဥၾႏႅდვဵ჋ၠျဨ")));
         this._9d292c15718714bee3a97c1a = MovieClip(DisplayObjectContainer(param1).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劜刴刂勝剿刉勷列分刚别列刨勸刭刂劉勀","剰动办刂剿剞到制剱劇勢剽勷判削勨")));
         this._2484fe62ec363d814789aea7 = MovieClip(DisplayObjectContainer(param1).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("န၀ჰဨ჆ჯွၞၼကၔცၠ჉ტცႧဗံჽၮၠႿჱმႢზ၁ဍნ","Ⴚ჈ဝჹၣႬ၈း၆ဲဥ႑သၺლၷ")));
         this._d2bb0d12a144d2dc964bf00f = MovieClip(DisplayObjectContainer(param1).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挮握掏捏捘挐授排挊捑掸捍捥挗掭掀掣揪","掠捇揃排握挟捺捆捰捃揘挴挊揋掱掸")));
         this._title.width = this._title.textWidth + (-489875317 ^ -1921445327 ^ 0x19197CC2 ^ 0x76AD767C);
         var _loc2_:int = int((this._title.width - this._9d292c15718714bee3a97c1a.width) / (-1263615931 ^ -85561593 ^ -1969348906 ^ -992562794));
         this._da51ceb746eaf59ea647ceea.x = 0x5ED8DFD4 ^ -1817230605 ^ 0x570372E6 ^ -1703612479;
         this._d7748ba2d3f98c365cf77144.x = int(this._da51ceb746eaf59ea647ceea.width);
         this._d7748ba2d3f98c365cf77144.width = _loc2_;
         this._9d292c15718714bee3a97c1a.x = int(this._d7748ba2d3f98c365cf77144.x + this._d7748ba2d3f98c365cf77144.width);
         this._2484fe62ec363d814789aea7.x = int(this._9d292c15718714bee3a97c1a.x + this._9d292c15718714bee3a97c1a.width);
         this._2484fe62ec363d814789aea7.width = _loc2_;
         this._d2bb0d12a144d2dc964bf00f.x = int(this._2484fe62ec363d814789aea7.x + this._2484fe62ec363d814789aea7.width);
         param1.x = this._9eb9f19babaab7990334475d + int((this._697d67518f41af9c26434074 - param1.width) / (0x3C6C848E ^ 0x45DA2230 ^ 0x51BEE0A1 ^ 0x2808461D));
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         DisplayObjectContainer(this._e9143982f34ea03e3d42f09e).addChild(param1);
      }
   }
}

