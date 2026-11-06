package com.ax3.fishao.view.dialogs.club.pages.management.item
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   
   public class _2fa2703e7ed1a4442a2b40f0 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _1a3aa4f632df5073caeb97d5:gViewClubsItemManagement = new gViewClubsItemManagement();
      
      private var _8bef5029d06857ae0f189da6:FrameButtonWrapper;
      
      private var _f6c779999f54384b3a94c740:FrameButtonWrapper;
      
      private var _76a3799076264cb91e834d12:_73899a4de8f83c8d2c26f545;
      
      private var _630d802d0e579527bb58017b:_73899a4de8f83c8d2c26f545;
      
      private var _1bcd23fdc246f448a3598388:_04cce4e240ff9bea66c1b7f7;
      
      public function _2fa2703e7ed1a4442a2b40f0(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._1a3aa4f632df5073caeb97d5);
         this.init();
      }
      
      public function get buttonAccept() : FrameButtonWrapper
      {
         return this._8bef5029d06857ae0f189da6;
      }
      
      public function get buttonDecline() : FrameButtonWrapper
      {
         return this._f6c779999f54384b3a94c740;
      }
      
      public function set name(param1:String) : void
      {
         this._76a3799076264cb91e834d12.text = param1;
      }
      
      public function set level(param1:int) : void
      {
         this._630d802d0e579527bb58017b.text = param1.toString();
      }
      
      public function get viewHitArea() : _04cce4e240ff9bea66c1b7f7
      {
         return this._1bcd23fdc246f448a3598388;
      }
      
      private function init() : void
      {
         this._8bef5029d06857ae0f189da6 = _092050566a3adcf2725382ab(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刂刲剣助勔刯勻勭劲剰勅到刦劕刃勤劔刭剈剌剼动勰势劏劢刐勲剣剱勦務","剚前劔労剎勏助劤勊勛劆剜勼剦剰刻"));
         this._f6c779999f54384b3a94c740 = _092050566a3adcf2725382ab(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ხၸჇ႕შႭგရႹက႑Ⴔၱၺ၎ၳ႐჆჉လဂჁႪშ႕ၺჀၤၨဵဳၯჾတ","ၗჽჶၜ჌းႍც႑ჹၭჸဝါၺၪ"));
         this._76a3799076264cb91e834d12 = _4bba52ae9618ef515b6267ea(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剉勘功剌劦助剏勃勧勝刞勻刯则劏剶劸勻剗剀勃勅勯割則劷","勃剗剳券刄刞則劷利前剴刓刟剏劧勅"),null);
         this._630d802d0e579527bb58017b = _4bba52ae9618ef515b6267ea(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刦剆劂刼劘剫利勼剦勿剢前刺助劊剜刐刪劇勳券剔則刾刱務剑刮","剕劢刌劎劣創剭刢勰刣勤刁剥勧勾刣"),null);
         this._1bcd23fdc246f448a3598388 = new _04cce4e240ff9bea66c1b7f7(controller,Debug.assertProperty(this.source,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("划刾削勽剾剀勜勐勈劋劌剔办劋劒勽劼删勳勤劒劮剅剘刍勁励切劮创","剱办剔刹劓功勂劌勠勎勽剄刦劢刈刿")));
         this._1bcd23fdc246f448a3598388._fc17178734ae7cc816dbcc2f(true);
         this._1bcd23fdc246f448a3598388.source.alpha = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掯挼捉揭捍挝掌掇挆排挧挿揣措捸挩掇掉掋挧捲揹推援","排掞掹掔捒揰挞挝掄捎捑揞捤掊捘挥");
      }
   }
}

