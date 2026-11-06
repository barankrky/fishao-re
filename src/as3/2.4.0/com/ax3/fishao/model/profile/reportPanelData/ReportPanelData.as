package com.ax3.fishao.model.profile.reportPanelData
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.model.profile.ProfilePanelData;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   
   public class ReportPanelData extends ProfilePanelData
   {
      
      public var doingList:Vector.<String> = new <String>[I18n.getUpper("abuse"),I18n.getUpper("spam"),I18n.getUpper("foulPlay"),I18n.getUpper("somethingElse")];
      
      public function ReportPanelData()
      {
         super();
      }
      
      public function sendReport(param1:String, param2:String, param3:String, param4:Function) : void
      {
         super.load(param1,param4);
         FishaoFscModelManager.profileExtension.sendProfileReportInfo(param1,param2,param3,Preloader.waitForResponse(param4));
      }
   }
}

