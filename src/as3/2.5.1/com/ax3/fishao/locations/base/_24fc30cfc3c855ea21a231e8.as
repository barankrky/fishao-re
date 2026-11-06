package com.ax3.fishao.locations.base
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.locations.*;
   import com.ax3.fishao.model.info._9f0379c95e97da0c1ff2a833;
   import com.ax3.utils.sound._c5aa52fca149ae6f0be6dc5b;
   import flash.geom.Point;
   
   public class _24fc30cfc3c855ea21a231e8
   {
      
      public static const LOCATION_FOLDER:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掃揃提挄掚挛捤按掸捿掂揹捨捾掿掔掃掗描掋挾挚援掾捆捍捕揢捛揮挨挪揈捎揉挂持捕挐挵捰捙掗掹换指","掳掚掉捴提挽挹挝揘掄挃挜掉揧揈揘");
      
      private static var _f770728f5dc289ec4da762f8:Vector.<_24fc30cfc3c855ea21a231e8> = new Vector.<_24fc30cfc3c855ea21a231e8>();
      
      public static const LOCATION_1_LAKETOWN:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x2993E988 ^ -1551037063 ^ -1970745281 ^ 0x9634CF,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勰勂別刷勞勺勬刞勣剅劚劌刡勆劓刨勢劅劢列勰労劘劵劤制劊刔劭勑刟勊删劓勊勺劶剪剣劷加剑刮刋刪勣","勢勴剛勴勉劾刷勆制剆刋勿划勜剙勇"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_001_AMB_Laketown,_3a8a2602dcf9bf49b62e62af.SFX_017_AMB_Birds]);
      
      public static const LOCATION_2_RIO:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(-923374770 ^ -601855237 ^ -1491898847 ^ -1278906474,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揤捸挲挝掣捻掶揞捁掐挧持捄掉揭揊挣捙掂揅揁挺挹掕捳捠挬揞捑捘挫捘捵捞捩掩","捬掻挂控揩揅捆捳挢捳掝捾挄捑揾揟"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_004_AMB_Rio_Tropical,_3a8a2602dcf9bf49b62e62af.SFX_018_AMB_Birds,_3a8a2602dcf9bf49b62e62af.SFX_019_AMB_Monkey,_3a8a2602dcf9bf49b62e62af.SFX_029_AMB_Walkway_wood],new <_eb33c79ced81d8f5ac0ea91d>[new _eb33c79ced81d8f5ac0ea91d(_3a8a2602dcf9bf49b62e62af.SFX_020_AMB_Campfire,new Point(0x49C1C41D ^ 0x60906FD8 ^ 0x494A6BE4 ^ 0x601BC3B2,0x2B47D162 ^ 0x17263ECF ^ -1436787702 ^ -1774339271),0x0DCBC238 ^ 0x4D4C158C ^ 0x3FB5C860 ^ 0x7F321E20),new _eb33c79ced81d8f5ac0ea91d(_3a8a2602dcf9bf49b62e62af.SFX_031_AMB_Waterfall,new Point(-448657638 ^ 0x1D07E53F ^ -1110519279 ^ 0x458B32DA,-834402823 ^ -260811535 ^ 0x2A5A27FB ^ 0x146A77A7),0x1C8719F1 ^ 0x10BDB159 ^ -1870577468 ^ -1665405520)],null
      ,-2050993178 ^ 0x6A22DFF2 ^ -196528610 ^ -464239152);
      
      public static const LOCATION_3_PINHEIRA_BEACH:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x468DA054 ^ -1471992572 ^ -569751216 ^ 0x30C4C403,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刅剢勑劆劕劫剧剆勨刻則劉勰劷勺剀勉劅劦到勉劥剻刓劓势勑切切刭制労劌刅勐勦勈勋刴勍刯刑勎制刷刭勄务剤办劳勀剋剠剈刐勂勐","劗勯刁劙刷劵刹劰势剟刎剙劫刡劚劔"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_005_AMB_Pinheira_Beach],new <_eb33c79ced81d8f5ac0ea91d>[new _2961e1e6c0eaf071b25e5825(_3a8a2602dcf9bf49b62e62af.SFX_021_AMB_Waves,new Point(0x4FF1A1F1 ^ -1359744729 ^ 0x69A0F5A5 ^ 0x775D5A8C,-1556769186 ^ -824865651 ^ -821494579 ^ -1561795129),0x38A9E5D9 ^ 0x1D54CFEB ^ 0x64C96071 ^ 0x4134481B)],null,-607632294 ^ -778615007 ^ -69320559 ^ 0x0E7EBC0A);
      
      public static const LOCATION_4_COOL_MOUNTAIN:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(-714636963 ^ 0x2940A8F4 ^ -871135618 ^ 0x3034AFD3,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捈捤据捺揓掸掎挓揱掸揘挬挔掳揫挬捦掰持揍挝捚揅捞捇掆揖掰揊挅挞控捊捻掏插掴挄揤提捇揽挩掴推控揹揱挴挷揻捷揢捊挓掖","掦掑掓捐揋挔掆揪揸挿捼捒捪挰揚挝"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_006_AMB_Cool_Mountain,_3a8a2602dcf9bf49b62e62af.SFX_017_AMB_Birds]);
      
      public static const LOCATION_5_MYSTIC_DESERT:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x11D7996B ^ 0x4CC465 ^ 0x34A557B5 ^ 0x253E0ABE,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ိ჆გოၓႳႤၚႦ၌၇ჱံ჏ეႧၯႩၺ၇იჭბၬႏဢხჾ჈ရငხႫႦကၝႌႱცჾႂဋႸჲႛჾၨႂၵ၏ႁიြ႓Ⴔႁ","ၥ၆ဉၟဦၢႵၵႺၱ჏ဤသႤသၷ"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_007_AMB_Mystic_Desert,_3a8a2602dcf9bf49b62e62af.SFX_023_AMB_Sand_gust_SFX],null,null,0x2FE2C314 ^ 0x591A4DAB ^ -1554952245 ^ 0x2A563EAE);
      
      public static const LOCATION_6_SIBIRI_CITY:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(-672899647 ^ 0x3ABFE111 ^ 0x4B82AB80 ^ -1495722154,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捁揸描捶捪掫捱揚挚掤捕掺捺捌掱捉換挔揑揢掻捐捹挜挷掉握掶掛探损捶挱掋掭捯挣挳捘捇授掦授掵揼捏挃挚掔掛挼掴","捬揓捚捏挐捞捛掶揠掖描挶挅捕捴捕"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_008_AMB_Sibiri_city,_3a8a2602dcf9bf49b62e62af.SFX_025_AMB_Snow_gust_SFX],null,new Point(0x1B3B2942 ^ 0x32599489 ^ 0x1F05BADF ^ 0x36670706,0x68591EEF ^ -1629630757 ^ 0x246AC475 ^ 0x2D11EBBA),0x7B439ACA ^ -1482000043 ^ -811001495 ^ 0x1340FAFC);
      
      public static const LOCATION_7_AQUAYAMA:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x430299B7 ^ -1735636869 ^ -2134944904 ^ 0x5B3182B3,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捏揵推揹揖捈捠捒排捠揦掋挚捈揘揍揜挽揄挨揶挏掅捳掭挍揃捷揃挏掁揬掫掱推揬揾捃揙损掽捤挘掚揵捐","掣揂掳捧掊挫挋掗揾揇揷掱捙挹掝揸"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_009_AMB_Aquayama,_3a8a2602dcf9bf49b62e62af.SFX_017_AMB_Birds,_3a8a2602dcf9bf49b62e62af.SFX_028_AMB_Bamboo_gust_SFX],null,null,-812798591 ^ 0xE4512E ^ 0x7B345D67 ^ 0x4BA25E15);
      
      public static const LOCATION_8_SEAGULL_HARBOR:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(-1998799578 ^ 0x35DBBDA4 ^ 0x7DDE6168 ^ -1059495454,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挙揣掻揃捍掆掤揳揝挦捖捁掱捣掭掼握揯揨揃掋捒捎揜挠揩揓捗掤揈掛捥掛捧揬援挔挩捼揂挪掂捬揊揙掂捪挢提換揍揊掹援捛揩掩挵","採掕採掆掩掋揧掹挝提捴挎捻揜掫揘"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_010_AMB_Seagull_Harbor],new <_eb33c79ced81d8f5ac0ea91d>[new _2961e1e6c0eaf071b25e5825(_3a8a2602dcf9bf49b62e62af.SFX_021_AMB_Waves,new Point(-1201406850 ^ -1589251708 ^ 0x6B9EF275 ^ -1924726672,0x3F598F6D ^ 0x310BDBF8 ^ -1510762134 ^ -1415461589),-2001559914 ^ 0x1259D859 ^ 0x6E2D9EA1 ^ -188294602),new _65aedf7e72f9b344befabe90(_3a8a2602dcf9bf49b62e62af.SFX_030_AMB_Buoy,new Point(-255255317 ^ -167129855 ^ 0x4B1FDC07 ^ 0x4DDF0511,0x4EA63F86 ^ 0x44289A53 ^ 0x29015813 ^ 0x238FFF28),0x4A4937EA ^ 0x43345249 ^ 0x5F32D220 ^ 0x564FB46B,(-1589026668 ^ -1075424084 ^ 0x0D0A6B11 ^ 0x13A55F2C) * (0x2B0F9696 ^ -997343134 ^ 0xEAADF4 ^ -278333208),(0x5AADCFB1 ^ -1220052177 ^ 0x44413174 ^ -1448376849) * (-1287197262 ^ -1347388457 ^ 0x5E51DE30 ^ 0x42A749A1))]
      ,new Point(-1830932929 ^ -829377862 ^ 0x486E17C6 ^ 0x14208B4D,-321044900 ^ 0x52C527DD ^ 0x34D9DF95 ^ 0x753E39F5),-781428996 ^ 0x3AB33A8B ^ 0x1CAA2F5D ^ -143310048);
      
      public static const LOCATION_9_THOMBANI_TOWN:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x75F7B9E5 ^ 0x56CA6C2C ^ -1032256244 ^ -515583796,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揬揀掌捫捸挮掴掎捁挌挋揝捃捵挞揪揢掶捹掮捶挠挶揅掙掃捭捳挬揪掶揓掮揯捡挕揎捒捠捪捕揌捷挼掙挂探揾捦捖捼捚揎控捅掺","挔揟捌掤揥捳捄挎挲掺揹揵揷捅掝捆"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_011_AMB_Thombani_Town,_3a8a2602dcf9bf49b62e62af.SFX_018_AMB_Birds],null,new Point(0x40738C58 ^ -17967911 ^ 0x595E271F ^ 0x183F806D,-1052644497 ^ -547528588 ^ 0x21953F64 ^ -1065989243),-368151493 ^ 0x7EDA8576 ^ -567566748 ^ -1258254193);
      
      public static const LOCATION_10_MARSHVILLE:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x23262124 ^ 0x28B75753 ^ -938622324 ^ -1013140239,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捍捈捞挆掚挾捤揇捆掸挋捻揟掶挐採挅捰掑掬挎挏挮掴掂掃揱揌捈援捷掙揚掬掓揕挐挡控指掶掽揞据捾掳揠揋捺揑挮掃","捅揑挌揰损掜掃捐挖捓掜挊挧持掿据"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_012_AMB_Marshville,_3a8a2602dcf9bf49b62e62af.SFX_017_AMB_Birds,_3a8a2602dcf9bf49b62e62af.SFX_032_AMB_Swamp_bubble],null,null,-619442541 ^ 0x42924AC7 ^ 0x3EA7935D ^ 0x58DE28AF);
      
      public static const LOCATION_11_PALM_ISLAND:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(-74360565 ^ 0x1EAB3E60 ^ -1519940009 ^ 0x405DE937,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捛掱挋揋捅掲捪揮挠揶挑援按掓捕捘捠揃挣揄揅掀捆捬挐捇掺挀掭掘捚掠挘掭掯揬揄揖掲捝指揩挄捤揆捆掂掘揬捃掁捇捾揄","捅揊掿挔捝掔挢揟揃掌捲挚捎掔揠揯"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_005_AMB_Pinheira_Beach],new <_eb33c79ced81d8f5ac0ea91d>[new _2961e1e6c0eaf071b25e5825(_3a8a2602dcf9bf49b62e62af.SFX_021_AMB_Waves,new Point(0x4FCC30F1 ^ -1851260096 ^ -2003757051 ^ -1458908085,0x5620DFC6 ^ 0x605DE926 ^ 0x39FF24A6 ^ 0x0F8213D6),0x4AB6971C ^ 0x308FD18B ^ -206617378 ^ -1986657843),new _2961e1e6c0eaf071b25e5825(_3a8a2602dcf9bf49b62e62af.SFX_021_AMB_Waves,new Point(0x4C0F4109 ^ -1403042308 ^ 0x0B93F478 ^ 0x143C0F72,0x535C7C9F ^ 0x3877D5D8 ^ -1001367639 ^ -1350829762),0x07861288 ^ 0x7E079A38 ^ 0x08A4B998 ^ 0x712532AC),new _2961e1e6c0eaf071b25e5825(_3a8a2602dcf9bf49b62e62af.SFX_021_AMB_Waves,new Point(0x790FD86C ^ -999895598 ^ -729799516 ^ 0x69E93036
      ,-1085657871 ^ 0x0E5A76C8 ^ 0x6C97A158 ^ 0x2278049E),0x1840420A ^ -708106601 ^ 0x4080C7F2 ^ -1928617749),new _2961e1e6c0eaf071b25e5825(_3a8a2602dcf9bf49b62e62af.SFX_021_AMB_Waves,new Point(-1150611631 ^ 0x433F2306 ^ -1107051098 ^ 0x465799C5,0x62D013DB ^ 0x0918413C ^ -85298748 ^ 0x6EDDDCDC),0x3C88405E ^ -456330298 ^ 0x143D0A2F ^ -864437709)],new Point(0x11A12F9A ^ -494883687 ^ 0x0C1AE007 ^ 0xC49CFF,0x56B8990F ^ -1565271622 ^ -145700118 ^ -56330784),-15691363 ^ 0x218047AB ^ -948660202 ^ -434392640);
      
      public static const LOCATION_12_LUCKY_RAFT:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x66ABDF33 ^ -263575976 ^ -2017967254 ^ 0x1159BA0D,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捚捜掳插揱捴描捨掦掼挱掎揆推揧揖挞揭捕揙捝捸按捧捹挋捹揵挰掙揱捵揀捓揎接捿排揖挮掱挐挾捠掰捻掶捤捛捩捪授","揚掙掍挏掑掙掁捝挈捆挻揄揊捝排揲"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_010_AMB_Seagull_Harbor],new <_eb33c79ced81d8f5ac0ea91d>[new _2961e1e6c0eaf071b25e5825(_3a8a2602dcf9bf49b62e62af.SFX_021_AMB_Waves,new Point(0x5687885F ^ -1870038162 ^ -643797240 ^ -531536954,0x67AB8247 ^ 0x244F196B ^ 0x108E1DDA ^ 0x536A84AE),-1316385316 ^ -903074620 ^ -31538987 ^ -2051317175),new _2961e1e6c0eaf071b25e5825(_3a8a2602dcf9bf49b62e62af.SFX_021_AMB_Waves,new Point(-753866904 ^ -540505856 ^ -419820915 ^ 0x15DD9B1A,0x28DFC789 ^ 0x2BCAEEFE ^ -1748741483 ^ -1798210383),-2048767887 ^ -628347752 ^ 0x1182D1BA ^ 0x4EECB6D7),new _2961e1e6c0eaf071b25e5825(_3a8a2602dcf9bf49b62e62af.SFX_021_AMB_Waves,new Point(0x0E8D0557 ^ -386567233 ^ 0x1F0B2A80 ^ -109879764
      ,0x3FDE4EC1 ^ -706888480 ^ 0x4B67670A ^ 0x5E9B6AD4),0x3924F021 ^ -656027144 ^ 0x3E72AE49 ^ -541881324),new _2961e1e6c0eaf071b25e5825(_3a8a2602dcf9bf49b62e62af.SFX_021_AMB_Waves,new Point(-419594800 ^ 0x2777B7F6 ^ 0x7FAAAE13 ^ -1105171173,-787855185 ^ -1138180659 ^ 0x07FE0FB8 ^ -1792867035),-2050461692 ^ 0x143405CD ^ 0x333AD2EA ^ -1564040025)],new Point(0x74635B8E ^ -1528928669 ^ 0x32BB91BE ^ -502879149,-1678537482 ^ -945314550 ^ -1945236090 ^ 0x2FA5DBB4),-1859751310 ^ 0x1393504F ^ -1086022145 ^ -1039253470);
      
      public static const SUBLOCATION_1_TROUTFARM:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(-1087461043 ^ 0x74D0FB65 ^ 0x3E5A31BC ^ -173775887,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剟勣勭刄切効功刎剅刊励劑勂功刘分刔劑刌務刦勼剗勃劸刭勲剔剦勀劢勿刔劖剽剮刘勥劬刜动劏削刉劫刎励刃剫勺剚刱制劾劭刖","刂列勐切刋副力労副勞励剧刦刟劝勊"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_001_AMB_Laketown]);
      
      public static const SUBLOCATION_1_BAKER:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x3C541DD1 ^ 0x312E17C4 ^ 0x488970CC ^ 0x45F37ABF,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挚掄揇挸掝挈捫採捊挥挆掩捼揱捐授揞揫挑挞捰捊挩捍揩捓揪捼据挲捱掁掋揎掼挎揳掀揺捲掵捤掍掺控揉","挻挬捻掃挺挻掊掔挖掹揤揱捴揸揾掛"));
      
      public static const SUBLOCATION_1_DECORMARKET:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x3A8173CB ^ -715720705 ^ 0x46B0852C ^ -1452867213,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჾၻၤႢ႞ႃႆ၃ဏၛၯဏ၈კჽၽၒႰမဠၗლဌჶၒၓ၏ၮდჴႆოဥჺ","ႥႺაეჱၟ႒ႴლႴႨႿၻხဴ჎"));
      
      public static const SUBLOCATION_2_LITTLE_RIO:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(-1661439328 ^ 0x51504F08 ^ 0x22297B94 ^ -276740526,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揆掲挹捴捚掤挖揦揚掉捌挎揢挙挢捽捻捉挈捪持揸掂捁捤捘捼掞採挚揯挏揉掟挱揺捄捪挌挆揶揘掙捧揄捡捓捖掿掛掰掦捖挥捪掩","捜掵掭挺接捩掼掴挠掊捘捳探挟捐揞"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_004_AMB_Rio_Tropical,_3a8a2602dcf9bf49b62e62af.SFX_018_AMB_Birds,_3a8a2602dcf9bf49b62e62af.SFX_019_AMB_Monkey,_3a8a2602dcf9bf49b62e62af.SFX_029_AMB_Walkway_wood],null,null,0x33883692 ^ 0x4ACAA217 ^ 0x38ADE513 ^ -1106211252);
      
      public static const SUBLOCATION_3_FISHMARKET:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0xC286BE ^ 0x69D3EE7D ^ -223464606 ^ -1681957941,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揜推挿插揊挧挀捵捿挑掠掣插捰控挍挰掫揠捣掵提捡挝揮挒掆揇挙授捽掇掂捶据捾揰捘掟捅掛挘掤揫捬捙揱揊揶捯捹挈捵掫捗挗","掉掀揶掬捬捞捡揙捇捉揿掐捎捬掟掉"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_027_AMB_Iglo_indoor]);
      
      public static const SUBLOCATION_4_CORAL:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x52BA935D ^ -2124676765 ^ -1426732325 ^ 0x79135882,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劒列剕刻刬剹勪别勀刍刧勁列劮剀劺剅勔勱刽劧劾勛剥劚剝勘剂劏勛剅勥劍剓到劤刣劂制劶劫剘劵劤剋勱","切判加剴剚割剧剩剘劖利剔刭刹勚勫"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_022_AMB_Coral_indoor]);
      
      public static const SUBLOCATION_5_DESERT:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x74EBA662 ^ 0x3D5A6291 ^ 0x05414E77 ^ 0x4CF08AEC,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("აဟၽႶშ၅ႚဈဩၷჹ჻ၰႠ၍ႬჿငၕခჂၼბ჎Ⴔ჎ၱვჴျ჌။ု၊ဝူၢဧ၅ၻၲဌႮ჋ၦးყ၂","ႎဦၜჰထჯႎႧၱჰၫႯဢၘ၎ဉ"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_024_AMB_Pyramid_indoor],null,null,-1099131054 ^ -875839998 ^ -1303155817 ^ 0x381BBD36);
      
      public static const SUBLOCATION_5_FURNITURE_FACTORY:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x11654491 ^ 0x1EAC7BB1 ^ 0x45D174DC ^ 0x4A184B8D,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刕剬劂勶剞勳劓勱劾劰剿劰剴剡剤勎劵刵务刄剼勺劝勳副剉勝勻剷剟別剈刪剰剫刌切劔勮勻刱勫劈務刟剹刳劢刬剨勧剴劽劈切勥劀刭劓勈勾剰劃剋勘劓勼判則剐","初劇剧劏剳力勫勄勄劮功办剦劉刋刖"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_024_AMB_Pyramid_indoor],null,null,-1794871064 ^ -748055235 ^ 0x5425DB36 ^ -306724590);
      
      public static const SUBLOCATION_6_SIBIRI:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x2EFB6439 ^ -1921990984 ^ -2099364794 ^ 0x2155E6AE,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捸揋捣挷揙挱捬挵捆捯捛採掂挃振掔挄揋揝揂捊捏掦捽插捃捈掞掉捐挺挣挸揲挋挆揍挈捭挦捿揔揅挖掃揸揧描","捧挟挴捀挎挥揂捻捼挋捾揿揯挏援捄"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_027_AMB_Iglo_indoor]);
      
      public static const SUBLOCATION_7_LOST_VALLEY:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(-1837005931 ^ -556153278 ^ 0x117D48E7 ^ 0x5D250D5C,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勲劸勇剤剨努刌勗刻剤劌劧刂劽力勭勺剗利刜刜勰動剷剟劶剦剪勂剑劗别努判前刚剡剷刳劗刘勣劳剦剿刕动勠剬剏剰剎刺勋勹勺勽勖","勯努初剈削剩劥刔剬剢勴勼判刧勑刼"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_001_AMB_Laketown,_3a8a2602dcf9bf49b62e62af.SFX_017_AMB_Birds],new <_eb33c79ced81d8f5ac0ea91d>[new _eb33c79ced81d8f5ac0ea91d(_3a8a2602dcf9bf49b62e62af.SFX_031_AMB_Waterfall,new Point(-1004090188 ^ 0x4FDB5E01 ^ -639278650 ^ 0x5218F533,-1002836125 ^ -2110705938 ^ -185367411 ^ -1292155498),-573368325 ^ -560830224 ^ -2021930113 ^ -2076528216),new _eb33c79ced81d8f5ac0ea91d(_3a8a2602dcf9bf49b62e62af.SFX_072_AMB_Dino_eating,new Point(0x79607A49 ^ 0x7C802ADA ^ -1230938699 ^ -1287582486,-1088126250 ^ 0x475D1587 ^ -738357249 ^ 0x2B841900),0x0F835B8A ^ -75035161 ^ 0x594EAE62 ^ -1387595361)],null,0x5663BF5D ^ 0x081A2FEC ^ -2032583468 ^ -660558778);
      
      public static const SUBLOCATION_10_TREE_CAVE:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x03AFE7FA ^ -536380446 ^ -1417739784 ^ 0x48D79D8D,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剹劷劾功刮勌力办刉剜剜刊劅剢勱勦剚勋剁刪劫剙勃刓剗剔劘加剳剙劃刨券剂剈剪劽劐劈刏剖刳勠別刑剆劢劃刌勊刿勽劄刬剒劁","勨劖剷劍劘刱剖劁劀刬刱助勫制剛劚"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_012_AMB_Marshville,_3a8a2602dcf9bf49b62e62af.SFX_017_AMB_Birds,_3a8a2602dcf9bf49b62e62af.SFX_032_AMB_Swamp_bubble]);
      
      public static const SUBLOCATION_11_PIRATE_CAVE:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(-2099282660 ^ 0x4F3B1CB4 ^ 0x1C7518ED ^ -778995414,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ძყ၇။ჩ႟ႁုဴყႹၥ႐ဣၗჾဲဘါႴဋ၃ႯၭႈႎထခာႮၾ჎ႲႫ჎ბၪႺဤႋჲჟ၎჎ဨဨჽႵၕჲႭჄႭၶၵၙၔဃ჊პ","ძგჱၦჂ჌თჅჯႈ၀ႼႽႅყჁ"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_024_AMB_Pyramid_indoor],new <_eb33c79ced81d8f5ac0ea91d>[new _eb33c79ced81d8f5ac0ea91d(_3a8a2602dcf9bf49b62e62af.SFX_076_AMB_Waterfall_small,new Point(0x122CD8B9 ^ 0x03C1B868 ^ 0x3C45D97E ^ 0x2DA8B85B,0x61317FCE ^ -1026166321 ^ 0x44244877 ^ -406796586),0x16BC90E9 ^ -1575968682 ^ -1212199846 ^ 0x03137065)]);
      
      public static const TOURNAMENT_1:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x15C2E60E ^ 0x7D0BA169 ^ 0x1A9D34FC ^ 0x72547352,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჱႮႈၟၜჲ႓Ⴒ၁ძ။ျკႈျဴႱႚခႧႁჾ္ဧဢ၆ၢႄၱჁ႗ႝ","ზეၻჭႳတာცტქဠႦႮჾခႿ"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_034_AMB_Tournament_01],new <_eb33c79ced81d8f5ac0ea91d>[new _eb33c79ced81d8f5ac0ea91d(_3a8a2602dcf9bf49b62e62af.SFX_033_AMB_Boat_tournament,new Point(0x74326CE6 ^ -1092350088 ^ 0x44B052B8 ^ -1905904054,-1273805590 ^ -174516924 ^ 0x133840E6 ^ 0x52B2145C),0x5871004A ^ 0x1F2F57AE ^ -1718986064 ^ -556527940),new _65aedf7e72f9b344befabe90(_3a8a2602dcf9bf49b62e62af.SFX_068_Tournament_boat_horn,new Point(0x688D4300 ^ -1314003286 ^ -681496717 ^ 0x0E418FEE,-1623619891 ^ 0x5743026D ^ 0x6171A858 ^ -1458886630),0x49072B24 ^ 0x6CF0C931 ^ 0x6F0345E0 ^ 0x4AF4A41D,(-1528162475 ^ -58081347 ^ 0x61B9B1B4 ^ 0x39DA1971) * (0x0E4A8D72 ^ -1901004118 ^ -1243078657 ^ 0x35126BCF),(0x35CE344F ^ 0x017F6110 ^ -960243736 ^ -227376607) * (0x5F185EBA ^ -1922830375 ^ -977224649 ^ 0x17BB0EBC))]
      ,null,0x77D07BD3 ^ -1089158896 ^ -1974666499 ^ 0x42884034);
      
      public static const TOURNAMENT_2:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x59B149B6 ^ -2075832059 ^ -236518375 ^ 0x2C131C60,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဏရၴႩငၚნႬၓ჉რႝჩ၉ქვနြျဟ႕ံწၝღ၈ზႁჽჭႊჲ","აၘူ၈ၰ႞၎ၕႲოႆ၌ႾႆဃႡ"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_035_AMB_Tournament_02],null,null,0x2EBAD3D7 ^ -875836252 ^ -1990253433 ^ -1814969344);
      
      public static const TOURNAMENT_3:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x62D7F847 ^ 0x1B50A251 ^ -1347889036 ^ -701529431,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刴刪剢剒勗剪勜劜剠勨利勇劀剕劭则劵刚勈労勍勛剥剷剮勐刭勝刈办勐劌","刅勑勧勥勊励刂助剾刿刦剸刯劜劁劀"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_017_AMB_Birds,_3a8a2602dcf9bf49b62e62af.SFX_036_AMB_Tournament_03],null,null,0x3CB461A5 ^ -1683301812 ^ 0x437BAA55 ^ 0x1B9AEE48);
      
      public static const TOURNAMENT_4:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x79971965 ^ -662648117 ^ -590032150 ^ 0x7DC30188,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("券劀勯刞刽勤劄剛刘剂劇剂则剹勌券剅劉劊勵剹劌勓勎劕券劣刊刄勍励刃刁勇务剼刟删劸勄劢勥勹刑勽剩勇动剻剼剘勫勫勆","刍劕務剣刏刬列刑劔勔动助劈勔劋制"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_005_AMB_Pinheira_Beach],new <_eb33c79ced81d8f5ac0ea91d>[new _2961e1e6c0eaf071b25e5825(_3a8a2602dcf9bf49b62e62af.SFX_021_AMB_Waves,new Point(-457856718 ^ 0x0B158F97 ^ -307668059 ^ -34176257,-296844660 ^ -1127982533 ^ -82245431 ^ -1449930258),-1776593257 ^ 0x605EB938 ^ -1215477222 ^ 0x41C8A631),new _2961e1e6c0eaf071b25e5825(_3a8a2602dcf9bf49b62e62af.SFX_021_AMB_Waves,new Point(-155591701 ^ 0x440BBA9C ^ 0x642AC4D2 ^ 0x29675A5A,0x670EF7DB ^ -1573229147 ^ -486932725 ^ 0x27CD62A5),-547012292 ^ 0x6C01BDB6 ^ -1945079421 ^ 0x3F748E8D),new _2961e1e6c0eaf071b25e5825(_3a8a2602dcf9bf49b62e62af.SFX_021_AMB_Waves,new Point(-1390553660 ^ -1010665558 ^ -1618900819 ^ -245486609,-1446081157 ^ 0x7C7B1E48 ^ 0x0D8DF90F ^ 0x27C795C3)
      ,-438766333 ^ 0x07B90AE3 ^ 0x2A655B74 ^ -939219184),new _2961e1e6c0eaf071b25e5825(_3a8a2602dcf9bf49b62e62af.SFX_021_AMB_Waves,new Point(0x2E37E72A ^ 0x393B0C82 ^ -1981879500 ^ -1630402392,-1262774253 ^ -842489542 ^ -1082502636 ^ 0x39F694C2),0x7404B0FD ^ -1348241060 ^ 0x534C28DF ^ -1997806854)],null,-1820592263 ^ 0x1FB30DEF ^ -507607076 ^ -1836481878);
      
      public static const WORLD_MAP_999:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x5551193E ^ 0x697CF3FE ^ 0x6390C749 ^ 0x5FBD2E6E,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("სမ္ဟ႒ნၥၞ႘ၭႂၿႫფჴჶფႌპႧ။Ⴑ၄ჯჹၞႵႲဝႶ႖გျႊဋ႞Ⴘဒၙჷ႐ႲჵნႍჃႅჾႚნ","ლၦႹႲႪჃႃჯႆၜ႑ႋ၃Ⴔၜၣ"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_031_AMB_Waterfall_WM,_3a8a2602dcf9bf49b62e62af.SFX_017_AMB_Birds_WM]);
      
      public static const PRIVATE_HOUSE:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(-1342214847 ^ 0x49A2A83B ^ 0x16C86DD9 ^ -258627185,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劣勴剕剴勣功勚勏勓剔剃劶利勼劒刑勩劖劌刃劽刌勢劁劓勑剴刼剡刀加劲劄刡","勷务刺剰劆務务勖勡列勮劑剸務励刾"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_001_AMB_Laketown],null,null,0x5F71015E ^ 0x35FFC0B9 ^ -890586202 ^ 0x5F9B85B5);
      
      public static const FRIENDS_PRIVATE_HOUSE:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(-2067074575 ^ -719435733 ^ 0x126ED94C ^ 0x43BA6106,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剨劮劚劀刍剓刔剡刍劎刑剐刢剩刺剥勸劗判前勌勭勞劗制勾勖刏助刓初劜刎勔","劮勔列剶劅勗券劣劂勵勋剭勓勈劋剣"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_001_AMB_Laketown],null,null,0x1BFFEDCB ^ 0x5A5442C6 ^ 0x198B6F01 ^ -1478541320);
      
      public static const CLUB_AREA:_24fc30cfc3c855ea21a231e8 = new _24fc30cfc3c855ea21a231e8(0x38A26B7C ^ 0x08330BD7 ^ 0x6C742D15 ^ 0x5CE54DCE,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剟劏别劏力则创刻劌勣勵労劝劌勏勶剆刍剰刡勦刯剴劸剽剕剽刭","剈劑劉刲剐劉勆剐劲勶剧剞剧刔剄剝"),new <_c5aa52fca149ae6f0be6dc5b>[_3a8a2602dcf9bf49b62e62af.SFX_017_AMB_Birds],null,null,-1320624443 ^ -1442235557 ^ -628050418 ^ 0x3E2EAC64,true);
      
      public var id:int;
      
      public var filename:String;
      
      public var ambientSoundFiles:Vector.<_c5aa52fca149ae6f0be6dc5b>;
      
      public var pointSounds:Vector.<_eb33c79ced81d8f5ac0ea91d>;
      
      public var tooltipPosition:Point;
      
      public var waterColorHueShift:int;
      
      private var _deae062246a9b2dd12f74355:Boolean;
      
      public function _24fc30cfc3c855ea21a231e8(param1:int, param2:String, param3:Vector.<_c5aa52fca149ae6f0be6dc5b> = null, param4:Vector.<_eb33c79ced81d8f5ac0ea91d> = null, param5:Point = null, param6:int = 0, param7:Boolean = false)
      {
         super();
         this._deae062246a9b2dd12f74355 = param7;
         this.id = param1;
         this.filename = param2;
         this.ambientSoundFiles = param3;
         this.pointSounds = param4;
         var _temp_2:*;
         var _temp_1:*;
         this.tooltipPosition = param5 != null ? param5 : (_temp_2 = §§findproperty(Point),_temp_1 = 0x131CB6E3 ^ 0x65FDD5DC ^ 0x112D344B ^ 0x67CC5774,new Point(_temp_1,_temp_1));
         this.waterColorHueShift = param6;
         _f770728f5dc289ec4da762f8.push(this);
      }
      
      public static function _6b751ce98cf8b7017db5d6e6(param1:int) : _24fc30cfc3c855ea21a231e8
      {
         var _loc2_:_24fc30cfc3c855ea21a231e8 = null;
         for each(_loc2_ in _f770728f5dc289ec4da762f8)
         {
            if(param1 == _loc2_.id)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function _0f83820a87caad2efac0bafa() : String
      {
         var _loc1_:String = this._e5b1c7922e34871f787120e0();
         if(this._deae062246a9b2dd12f74355)
         {
            _loc1_ += _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刞勳刿劻剢劣劮劀劑劢劌刅刐刄剽剸刳勖削勱副刼勵劐","勆刺刪创劬剽劗勢刀劥刺劌剻剠努刿");
         }
         return _loc1_ + (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挀掽挼掲按捐掉揢捸掩捈揽捬掲掖挼捸掊揷揲掰掖","挗挹捿挗挱揜揉挈揌掇揊揆捗捶揠掀") + _9f0379c95e97da0c1ff2a833.VERSION);
      }
      
      public function _b7f972bf02490f109a3d3ac5() : String
      {
         if(this.id == (0x5AF778AD ^ -750559435 ^ -1194744863 ^ 0x317D8412))
         {
            return Config.SERVER + LOCATION_FOLDER + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჊ႥသၯჇჺႶჟჹႈჼၳၡၔၚဇဵჸးსၚႦၪၠჭႱႮျჯႧႏႿდჅქႺႷ႞ჴჄლၯ၀ႋကჵၺ჈ငၔ႑შၥჄၯှၨၮႽ჊ႅဏၽႍႬဦႊ၇ဃၥ၀Ⴞ်აႏၙၝჾ჏ါူ၅႟႒ႧႰၧვဓႹ","ညშႊၼჽၞ၃Ⴞၥჺ႒჈ဘႁ႕პ") + _9f0379c95e97da0c1ff2a833.VERSION;
         }
         var _loc1_:String = this._e5b1c7922e34871f787120e0();
         if(!this._deae062246a9b2dd12f74355)
         {
            _loc1_ += _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捬捓挞揕推挘捕捧捷揁","掏掻揃揥挬挤揼捗掤提捚揠控描捼揙");
         }
         return _loc1_ + (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捖捊挫挴掛挮捤掁捅捒捭捹探捗掺捍掾挫捾揌揱掃揌掬揰捭挗捏挘挶掶挬揔捴挶揎揥授","揓捶掘掑掌掷掷揰挤掲挿揚挋掰挥揣") + _9f0379c95e97da0c1ff2a833.VERSION);
      }
      
      public function _e32092f99261d403a00e629a() : String
      {
         var _loc1_:String = this._e5b1c7922e34871f787120e0();
         if(!this._deae062246a9b2dd12f74355)
         {
            _loc1_ += _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဳႜ჻၇ၡအბဤတႀ","ၙိဌပႲၯဝႤჇჲခၾჳჵခၙ");
         }
         return _loc1_ + (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("မჩჃ၁ၿႫပဧၿႺီღၩၲူးႉ႔ო၅ႄဠ჌ვ၎Ⴃႁსဇှဗეဣ჌ၘႯုၪ၃ၠჟဃ჉ხႂႬႠ်","჏Ⴚၻ၈ၣဪႁႂွၩၿ်ၲ၃႗Ⴞ") + _9f0379c95e97da0c1ff2a833.VERSION);
      }
      
      public function _47a8636818020d0a951d17db() : String
      {
         var _loc1_:String = this._e5b1c7922e34871f787120e0();
         if(!this._deae062246a9b2dd12f74355)
         {
            _loc1_ += _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴂ၈ႴႪოႭၑႀႴႝ","၆ႏ၍ვႯႺဝლႰ჌၊ႾჼႴသၲ");
         }
         return _loc1_ + (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("判刈努分剫勦刌劅勲勇务刔劧刣劎劯努勼制剆効勞刌勗刓剎刵劜劋剶勀利勸勖剂劜剘券剁勒","勚劺剰刳労則剫劻勪刕刷刉劄劚勂劁") + _9f0379c95e97da0c1ff2a833.VERSION);
      }
      
      private function _e5b1c7922e34871f787120e0() : String
      {
         return Config.ASSET_2_SERVER + LOCATION_FOLDER + this.filename;
      }
   }
}

