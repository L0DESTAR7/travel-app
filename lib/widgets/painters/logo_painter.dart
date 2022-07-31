import 'package:flutter/material.dart';
import 'dart:ui' as ui;





class Logo extends StatelessWidget {

  final double width = 0;
  const Logo({Key? key,required double width}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return CustomPaint(
        size: Size(width, (width*1).toDouble()),
        painter: LocalCustomPainter(
          
        ));
  }
}






class LocalCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(0,size.height*0.01400060);
    path_0.cubicTo(size.width*0.1256014,size.height*-0.004580791,size.width*0.2494256,size.height*-0.001211067,size.width*0.3752814,size.height*0.004553814);
    path_0.cubicTo(size.width*0.4016698,size.height*0.001072514,size.width*0.4361791,size.height*-0.00001346649,size.width*0.4672907,size.height*0.009051023);
    path_0.cubicTo(size.width*0.4637605,size.height*0.09539349,size.width*0.4370442,size.height*0.1800863,size.width*0.4461186,size.height*0.2669791);
    path_0.cubicTo(size.width*0.4536791,size.height*0.3005256,size.width*0.4602326,size.height*0.3340721,size.width*0.4723302,size.height*0.3659698);
    path_0.cubicTo(size.width*0.4862721,size.height*0.3716372,size.width*0.5011000,size.height*0.3727744,size.width*0.5160953,size.height*0.3727163);
    path_0.cubicTo(size.width*0.5381651,size.height*0.3726326,size.width*0.5570000,size.height*0.3875791,size.width*0.5599907,size.height*0.4094465);
    path_0.cubicTo(size.width*0.5743721,size.height*0.5146233,size.width*0.5693302,size.height*0.6216698,size.width*0.5711326,size.height*0.7278395);
    path_0.cubicTo(size.width*0.5691163,size.height*0.7817349,size.width*0.5837349,size.height*0.8334302,size.width*0.5902884,size.height*0.8862256);
    path_0.cubicTo(size.width*0.5671000,size.height*0.8862256,size.width*0.5439116,size.height*0.8862256,size.width*0.5212279,size.height*0.8840256);
    path_0.cubicTo(size.width*0.4874535,size.height*0.8801767,size.width*0.4551907,size.height*0.8653279,size.width*0.4209140,size.height*0.8653279);
    path_0.cubicTo(size.width*0.4153698,size.height*0.8345302,size.width*0.3967163,size.height*0.8103326,size.width*0.3800814,size.height*0.7855837);
    path_0.cubicTo(size.width*0.3720163,size.height*0.7520372,size.width*0.3957093,size.height*0.7239884,size.width*0.4113372,size.height*0.6975907);
    path_0.cubicTo(size.width*0.4234349,size.height*0.6810930,size.width*0.4199047,size.height*0.6590953,size.width*0.4204093,size.height*0.6398465);
    path_0.cubicTo(size.width*0.4188977,size.height*0.6101488,size.width*0.4163767,size.height*0.5788023,size.width*0.4022628,size.height*0.5529535);
    path_0.cubicTo(size.width*0.3821000,size.height*0.5221558,size.width*0.3468116,size.height*0.5128070,size.width*0.3185837,size.height*0.4935605);
    path_0.cubicTo(size.width*0.2878349,size.height*0.4765116,size.width*0.2606140,size.height*0.4484628,size.width*0.2263356,size.height*0.4396651);
    path_0.cubicTo(size.width*0.2046598,size.height*0.4578116,size.width*0.1925616,size.height*0.4853093,size.width*0.1744147,size.height*0.5067581);
    path_0.cubicTo(size.width*0.1527388,size.height*0.5331558,size.width*0.1335835,size.height*0.5617535,size.width*0.1129158,size.height*0.5881512);
    path_0.cubicTo(size.width*0.09779302,size.height*0.6079488,size.width*0.08771140,size.height*0.6348977,size.width*0.09325628,size.height*0.6607442);
    path_0.cubicTo(size.width*0.1013216,size.height*0.6860419,size.width*0.1214853,size.height*0.7030907,size.width*0.1376160,size.height*0.7217907);
    path_0.cubicTo(size.width*0.1441693,size.height*0.7586372,size.width*0.1119077,size.height*0.7817349,size.width*0.1038421,size.height*0.8147326);
    path_0.cubicTo(size.width*0.09829721,size.height*0.8510279,size.width*0.1063626,size.height*0.8878744,size.width*0.1068667,size.height*0.9247209);
    path_0.cubicTo(size.width*0.07662140,size.height*0.9285721,size.width*0.04688023,size.height*0.9340721,size.width*0.01663491,size.height*0.9362721);
    path_0.cubicTo(size.width*0.01461856,size.height*0.8873256,size.width*0.01058586,size.height*0.8378302,size.width*0.01159402,size.height*0.7883349);
    path_0.cubicTo(size.width*0.01159402,size.height*0.6986907,size.width*0.007057233,size.height*0.6085000,size.width*0.007561326,size.height*0.5188581);
    path_0.cubicTo(size.width*0.007561326,size.height*0.3505721,0,size.height*0.1822860,0,size.height*0.01400060);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff572027).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width*0.4672744,size.height*0.009052558);
    path_1.cubicTo(size.width*0.5595233,size.height*0.004103000,size.width*0.6522744,size.height*0.007402698,size.width*0.7440186,size.height*0.02115153);
    path_1.cubicTo(size.width*0.7883791,size.height*0.02555116,size.width*0.8327395,size.height*0.03655023,size.width*0.8770977,size.height*0.04149977);
    path_1.cubicTo(size.width*0.8886930,size.height*0.1300421,size.width*0.8942372,size.height*0.2196844,size.width*0.8897000,size.height*0.3093256);
    path_1.cubicTo(size.width*0.8680256,size.height*0.2911791,size.width*0.8463488,size.height*0.2730302,size.width*0.8246744,size.height*0.2554302);
    path_1.cubicTo(size.width*0.8125744,size.height*0.2460814,size.width*0.8004767,size.height*0.2361837,size.width*0.7853558,size.height*0.2345326);
    path_1.cubicTo(size.width*0.7561186,size.height*0.2323333,size.width*0.7263767,size.height*0.2361837,size.width*0.6971395,size.height*0.2317835);
    path_1.cubicTo(size.width*0.7152860,size.height*0.2174847,size.width*0.7374674,size.height*0.2114351,size.width*0.7576302,size.height*0.2026358);
    path_1.cubicTo(size.width*0.7641837,size.height*0.1855874,size.width*0.7707372,size.height*0.1668891,size.width*0.7838419,size.height*0.1542400);
    path_1.cubicTo(size.width*0.7989651,size.height*0.1388414,size.width*0.8100558,size.height*0.1201430,size.width*0.8196326,size.height*0.1003447);
    path_1.cubicTo(size.width*0.7903953,size.height*0.08714581,size.width*0.7571256,size.height*0.07999651,size.width*0.7258721,size.height*0.08439605);
    path_1.cubicTo(size.width*0.7082302,size.height*0.09869488,size.width*0.6931070,size.height*0.1151935,size.width*0.6764721,size.height*0.1305921);
    path_1.cubicTo(size.width*0.6583233,size.height*0.1454409,size.width*0.6603419,size.height*0.1734884,size.width*0.6553000,size.height*0.1954865);
    path_1.cubicTo(size.width*0.6437047,size.height*0.1723886,size.width*0.6437047,size.height*0.1399414,size.width*0.6195093,size.height*0.1272923);
    path_1.cubicTo(size.width*0.6074116,size.height*0.1190430,size.width*0.5943047,size.height*0.1102440,size.width*0.5791814,size.height*0.1113437);
    path_1.cubicTo(size.width*0.5667558,size.height*0.1113437,size.width*0.5543279,size.height*0.1118742,size.width*0.5419419,size.height*0.1129812);
    path_1.cubicTo(size.width*0.5087256,size.height*0.1159500,size.width*0.4932512,size.height*0.1572898,size.width*0.5187047,size.height*0.1788386);
    path_1.cubicTo(size.width*0.5192000,size.height*0.1792595,size.width*0.5197000,size.height*0.1796760,size.width*0.5202047,size.height*0.1800879);
    path_1.cubicTo(size.width*0.5509535,size.height*0.1828377,size.width*0.5781744,size.height*0.1987863,size.width*0.6043860,size.height*0.2152849);
    path_1.cubicTo(size.width*0.6230372,size.height*0.2273837,size.width*0.6306000,size.height*0.2515814,size.width*0.6391698,size.height*0.2724791);
    path_1.cubicTo(size.width*0.6264837,size.height*0.2700837,size.width*0.6158047,size.height*0.2635674,size.width*0.6063326,size.height*0.2551721);
    path_1.cubicTo(size.width*0.5869907,size.height*0.2380279,size.width*0.5641419,size.height*0.2230937,size.width*0.5382953,size.height*0.2232286);
    path_1.cubicTo(size.width*0.5323837,size.height*0.2232595,size.width*0.5266372,size.height*0.2251944,size.width*0.5219372,size.height*0.2287830);
    path_1.cubicTo(size.width*0.5157465,size.height*0.2335093,size.width*0.5098302,size.height*0.2387558,size.width*0.5040256,size.height*0.2442023);
    path_1.cubicTo(size.width*0.4861395,size.height*0.2609814,size.width*0.4838698,size.height*0.2893186,size.width*0.4990581,size.height*0.3085744);
    path_1.cubicTo(size.width*0.5045767,size.height*0.3155674,size.width*0.5101209,size.height*0.3225814,size.width*0.5156674,size.height*0.3296744);
    path_1.cubicTo(size.width*0.5307907,size.height*0.3373744,size.width*0.5499442,size.height*0.3439744,size.width*0.5660767,size.height*0.3340744);
    path_1.cubicTo(size.width*0.5788721,size.height*0.3281349,size.width*0.5921093,size.height*0.3234767,size.width*0.6055512,size.height*0.3202767);
    path_1.cubicTo(size.width*0.6244326,size.height*0.3157791,size.width*0.6411372,size.height*0.3309651,size.width*0.6398930,size.height*0.3503372);
    path_1.cubicTo(size.width*0.6391651,size.height*0.3616442,size.width*0.6299953,size.height*0.3705047,size.width*0.6186744,size.height*0.3709605);
    path_1.cubicTo(size.width*0.5972605,size.height*0.3718256,size.width*0.5756186,size.height*0.3716000,size.width*0.5539791,size.height*0.3720209);
    path_1.cubicTo(size.width*0.5267581,size.height*0.3714721,size.width*0.4980233,size.height*0.3764209,size.width*0.4723163,size.height*0.3659721);
    path_1.cubicTo(size.width*0.4602186,size.height*0.3340744,size.width*0.4536651,size.height*0.3005279,size.width*0.4461023,size.height*0.2669814);
    path_1.cubicTo(size.width*0.4370302,size.height*0.1800879,size.width*0.4637465,size.height*0.09539512,size.width*0.4672744,size.height*0.009052558);
    path_1.close();

    Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
    paint_1_fill.color = const Color(0xff31605D).withOpacity(1.0);
    canvas.drawPath(path_1,paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width*0.6698791,size.height*0.3646116);
    path_2.cubicTo(size.width*0.6718814,size.height*0.3362628,size.width*0.6972279,size.height*0.3265279,size.width*0.7208512,size.height*0.3423256);
    path_2.cubicTo(size.width*0.7536163,size.height*0.3522256,size.width*0.7828535,size.height*0.3181279,size.width*0.8156186,size.height*0.3269256);
    path_2.cubicTo(size.width*0.8378000,size.height*0.3313256,size.width*0.8604837,size.height*0.3324256,size.width*0.8831674,size.height*0.3329767);
    path_2.cubicTo(size.width*0.8882093,size.height*0.4776140,size.width*0.8720767,size.height*0.6222512,size.width*0.8801419,size.height*0.7668884);
    path_2.cubicTo(size.width*0.8826628,size.height*0.7965860,size.width*0.8846791,size.height*0.8262837,size.width*0.8856884,size.height*0.8559814);
    path_2.cubicTo(size.width*0.8372953,size.height*0.8537814,size.width*0.7929349,size.height*0.8284837,size.width*0.7450465,size.height*0.8273837);
    path_2.cubicTo(size.width*0.7001837,size.height*0.8273837,size.width*0.6623767,size.height*0.8570814,size.width*0.6205372,size.height*0.8713791);
    path_2.cubicTo(size.width*0.6286023,size.height*0.7498395,size.width*0.6432209,size.height*0.6294000,size.width*0.6497744,size.height*0.5073116);
    path_2.cubicTo(size.width*0.6512860,size.height*0.4737651,size.width*0.6648977,size.height*0.4424163,size.width*0.6669140,size.height*0.4088698);
    path_2.cubicTo(size.width*0.6680233,size.height*0.3941000,size.width*0.6688395,size.height*0.3793326,size.width*0.6698791,size.height*0.3646116);
    path_2.close();

    Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
    paint_2_fill.color = const Color(0xff313131).withOpacity(1.0);
    canvas.drawPath(path_2,paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width*0.5497233,size.height*0.9011326);
    path_3.cubicTo(size.width*0.5053628,size.height*0.8978326,size.width*0.4635233,size.height*0.8796837,size.width*0.4201721,size.height*0.8736349);
    path_3.cubicTo(size.width*0.3874605,size.height*0.8662558,size.width*0.3085419,size.height*0.8733977,size.width*0.2583581,size.height*0.9148814);
    path_3.cubicTo(size.width*0.2543256,size.height*0.9374302,size.width*0.2563419,size.height*0.9610767,size.width*0.2558395,size.height*0.9841767);
    path_3.cubicTo(size.width*0.3057442,size.height*0.9671279,size.width*0.3556488,size.height*0.9478791,size.width*0.4085767,size.height*0.9489791);
    path_3.cubicTo(size.width*0.4625140,size.height*0.9511791,size.width*0.5154442,size.height*0.9676767,size.width*0.5698860,size.height*0.9693279);
    path_3.cubicTo(size.width*0.6298721,size.height*0.9654767,size.width*0.6858256,size.height*0.9368791,size.width*0.7458116,size.height*0.9319302);
    path_3.cubicTo(size.width*0.8027744,size.height*0.9264302,size.width*0.8562070,size.height*0.9539279,size.width*0.9126651,size.height*0.9539279);
    path_3.cubicTo(size.width*0.9343419,size.height*0.9550279,size.width*0.9560163,size.height*0.9489791,size.width*0.9766860,size.height*0.9429302);
    path_3.cubicTo(size.width*0.9779674,size.height*0.9280279,size.width*0.9797628,size.height*0.8953349,size.width*0.9766860,size.height*0.8837628);
    path_3.cubicTo(size.width*0.9652837,size.height*0.8835116,size.width*0.9490791,size.height*0.8826279,size.width*0.9320721,size.height*0.8812233);
    path_3.cubicTo(size.width*0.8817628,size.height*0.8770721,size.width*0.8333419,size.height*0.8612767,size.width*0.7848605,size.height*0.8472093);
    path_3.cubicTo(size.width*0.7739326,size.height*0.8440395,size.width*0.7628419,size.height*0.8417023,size.width*0.7513581,size.height*0.8411884);
    path_3.cubicTo(size.width*0.6792721,size.height*0.8389884,size.width*0.6223116,size.height*0.9066326,size.width*0.5497233,size.height*0.9011326);
    path_3.close();

    Paint paint_3_fill = Paint()..style=PaintingStyle.fill;
    paint_3_fill.color = const Color(0xff243855).withOpacity(1.0);
    canvas.drawPath(path_3,paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(0,size.height*0.01400060);
    path_4.cubicTo(size.width*0.1256014,size.height*-0.004580791,size.width*0.2494256,size.height*-0.001211067,size.width*0.3752814,size.height*0.004553814);
    path_4.cubicTo(size.width*0.4016698,size.height*0.001072514,size.width*0.4361791,size.height*-0.00001346649,size.width*0.4672907,size.height*0.009051023);
    path_4.cubicTo(size.width*0.4637605,size.height*0.09539349,size.width*0.4370442,size.height*0.1800863,size.width*0.4461186,size.height*0.2669791);
    path_4.cubicTo(size.width*0.4536791,size.height*0.3005256,size.width*0.4602326,size.height*0.3340721,size.width*0.4723302,size.height*0.3659698);
    path_4.cubicTo(size.width*0.4862721,size.height*0.3716372,size.width*0.5011000,size.height*0.3727744,size.width*0.5160953,size.height*0.3727163);
    path_4.cubicTo(size.width*0.5381651,size.height*0.3726326,size.width*0.5570000,size.height*0.3875791,size.width*0.5599907,size.height*0.4094465);
    path_4.cubicTo(size.width*0.5743721,size.height*0.5146233,size.width*0.5693302,size.height*0.6216698,size.width*0.5711326,size.height*0.7278395);
    path_4.cubicTo(size.width*0.5691163,size.height*0.7817349,size.width*0.5837349,size.height*0.8334302,size.width*0.5902884,size.height*0.8862256);
    path_4.cubicTo(size.width*0.5671000,size.height*0.8862256,size.width*0.5439116,size.height*0.8862256,size.width*0.5212279,size.height*0.8840256);
    path_4.cubicTo(size.width*0.4874535,size.height*0.8801767,size.width*0.4551907,size.height*0.8653279,size.width*0.4209140,size.height*0.8653279);
    path_4.cubicTo(size.width*0.4153698,size.height*0.8345302,size.width*0.3967163,size.height*0.8103326,size.width*0.3800814,size.height*0.7855837);
    path_4.cubicTo(size.width*0.3720163,size.height*0.7520372,size.width*0.3957093,size.height*0.7239884,size.width*0.4113372,size.height*0.6975907);
    path_4.cubicTo(size.width*0.4234349,size.height*0.6810930,size.width*0.4199047,size.height*0.6590953,size.width*0.4204093,size.height*0.6398465);
    path_4.cubicTo(size.width*0.4188977,size.height*0.6101488,size.width*0.4163767,size.height*0.5788023,size.width*0.4022628,size.height*0.5529535);
    path_4.cubicTo(size.width*0.3821000,size.height*0.5221558,size.width*0.3468116,size.height*0.5128070,size.width*0.3185837,size.height*0.4935605);
    path_4.cubicTo(size.width*0.2878349,size.height*0.4765116,size.width*0.2606140,size.height*0.4484628,size.width*0.2263356,size.height*0.4396651);
    path_4.cubicTo(size.width*0.2046598,size.height*0.4578116,size.width*0.1925616,size.height*0.4853093,size.width*0.1744147,size.height*0.5067581);
    path_4.cubicTo(size.width*0.1527388,size.height*0.5331558,size.width*0.1335835,size.height*0.5617535,size.width*0.1129158,size.height*0.5881512);
    path_4.cubicTo(size.width*0.09779302,size.height*0.6079488,size.width*0.08771140,size.height*0.6348977,size.width*0.09325628,size.height*0.6607442);
    path_4.cubicTo(size.width*0.1013216,size.height*0.6860419,size.width*0.1214853,size.height*0.7030907,size.width*0.1376160,size.height*0.7217907);
    path_4.cubicTo(size.width*0.1441693,size.height*0.7586372,size.width*0.1119077,size.height*0.7817349,size.width*0.1038421,size.height*0.8147326);
    path_4.cubicTo(size.width*0.09829721,size.height*0.8510279,size.width*0.1063626,size.height*0.8878744,size.width*0.1068667,size.height*0.9247209);
    path_4.cubicTo(size.width*0.07662140,size.height*0.9285721,size.width*0.04688023,size.height*0.9340721,size.width*0.01663491,size.height*0.9362721);
    path_4.cubicTo(size.width*0.01461856,size.height*0.8873256,size.width*0.01058586,size.height*0.8378302,size.width*0.01159402,size.height*0.7883349);
    path_4.cubicTo(size.width*0.01159402,size.height*0.6986907,size.width*0.007057233,size.height*0.6085000,size.width*0.007561326,size.height*0.5188581);
    path_4.cubicTo(size.width*0.007561326,size.height*0.3505721,0,size.height*0.1822860,0,size.height*0.01400060);
    path_4.close();

    Paint paint_4_fill = Paint()..style=PaintingStyle.fill;
    paint_4_fill.shader = ui.Gradient.linear(Offset(size.width*0.2951442,0), Offset(size.width*0.2951442,size.height*0.9362721), [const Color(0xffF06778).withOpacity(1),const Color(0xffE6D478).withOpacity(1)], [0,1]);
    canvas.drawPath(path_4,paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width*0.4672744,size.height*0.009052558);
    path_5.cubicTo(size.width*0.5595233,size.height*0.004103000,size.width*0.6522744,size.height*0.007402698,size.width*0.7440186,size.height*0.02115153);
    path_5.cubicTo(size.width*0.7883791,size.height*0.02555116,size.width*0.8327395,size.height*0.03655023,size.width*0.8770977,size.height*0.04149977);
    path_5.cubicTo(size.width*0.8886930,size.height*0.1300421,size.width*0.8942372,size.height*0.2196844,size.width*0.8897000,size.height*0.3093256);
    path_5.cubicTo(size.width*0.8680256,size.height*0.2911791,size.width*0.8463488,size.height*0.2730302,size.width*0.8246744,size.height*0.2554302);
    path_5.cubicTo(size.width*0.8125744,size.height*0.2460814,size.width*0.8004767,size.height*0.2361837,size.width*0.7853558,size.height*0.2345326);
    path_5.cubicTo(size.width*0.7561186,size.height*0.2323333,size.width*0.7263767,size.height*0.2361837,size.width*0.6971395,size.height*0.2317835);
    path_5.cubicTo(size.width*0.7152860,size.height*0.2174847,size.width*0.7374674,size.height*0.2114351,size.width*0.7576302,size.height*0.2026358);
    path_5.cubicTo(size.width*0.7641837,size.height*0.1855874,size.width*0.7707372,size.height*0.1668891,size.width*0.7838419,size.height*0.1542400);
    path_5.cubicTo(size.width*0.7989651,size.height*0.1388414,size.width*0.8100558,size.height*0.1201430,size.width*0.8196326,size.height*0.1003447);
    path_5.cubicTo(size.width*0.7903953,size.height*0.08714581,size.width*0.7571256,size.height*0.07999651,size.width*0.7258721,size.height*0.08439605);
    path_5.cubicTo(size.width*0.7082302,size.height*0.09869488,size.width*0.6931070,size.height*0.1151935,size.width*0.6764721,size.height*0.1305921);
    path_5.cubicTo(size.width*0.6583233,size.height*0.1454409,size.width*0.6603419,size.height*0.1734884,size.width*0.6553000,size.height*0.1954865);
    path_5.cubicTo(size.width*0.6437047,size.height*0.1723886,size.width*0.6437047,size.height*0.1399414,size.width*0.6195093,size.height*0.1272923);
    path_5.cubicTo(size.width*0.6074116,size.height*0.1190430,size.width*0.5943047,size.height*0.1102440,size.width*0.5791814,size.height*0.1113437);
    path_5.cubicTo(size.width*0.5667558,size.height*0.1113437,size.width*0.5543279,size.height*0.1118742,size.width*0.5419419,size.height*0.1129812);
    path_5.cubicTo(size.width*0.5087256,size.height*0.1159500,size.width*0.4932512,size.height*0.1572898,size.width*0.5187047,size.height*0.1788386);
    path_5.cubicTo(size.width*0.5192000,size.height*0.1792595,size.width*0.5197000,size.height*0.1796760,size.width*0.5202047,size.height*0.1800879);
    path_5.cubicTo(size.width*0.5509535,size.height*0.1828377,size.width*0.5781744,size.height*0.1987863,size.width*0.6043860,size.height*0.2152849);
    path_5.cubicTo(size.width*0.6230372,size.height*0.2273837,size.width*0.6306000,size.height*0.2515814,size.width*0.6391698,size.height*0.2724791);
    path_5.cubicTo(size.width*0.6264837,size.height*0.2700837,size.width*0.6158047,size.height*0.2635674,size.width*0.6063326,size.height*0.2551721);
    path_5.cubicTo(size.width*0.5869907,size.height*0.2380279,size.width*0.5641419,size.height*0.2230937,size.width*0.5382953,size.height*0.2232286);
    path_5.cubicTo(size.width*0.5323837,size.height*0.2232595,size.width*0.5266372,size.height*0.2251944,size.width*0.5219372,size.height*0.2287830);
    path_5.cubicTo(size.width*0.5157465,size.height*0.2335093,size.width*0.5098302,size.height*0.2387558,size.width*0.5040256,size.height*0.2442023);
    path_5.cubicTo(size.width*0.4861395,size.height*0.2609814,size.width*0.4838698,size.height*0.2893186,size.width*0.4990581,size.height*0.3085744);
    path_5.cubicTo(size.width*0.5045767,size.height*0.3155674,size.width*0.5101209,size.height*0.3225814,size.width*0.5156674,size.height*0.3296744);
    path_5.cubicTo(size.width*0.5307907,size.height*0.3373744,size.width*0.5499442,size.height*0.3439744,size.width*0.5660767,size.height*0.3340744);
    path_5.cubicTo(size.width*0.5788721,size.height*0.3281349,size.width*0.5921093,size.height*0.3234767,size.width*0.6055512,size.height*0.3202767);
    path_5.cubicTo(size.width*0.6244326,size.height*0.3157791,size.width*0.6411372,size.height*0.3309651,size.width*0.6398930,size.height*0.3503372);
    path_5.cubicTo(size.width*0.6391651,size.height*0.3616442,size.width*0.6299953,size.height*0.3705047,size.width*0.6186744,size.height*0.3709605);
    path_5.cubicTo(size.width*0.5972605,size.height*0.3718256,size.width*0.5756186,size.height*0.3716000,size.width*0.5539791,size.height*0.3720209);
    path_5.cubicTo(size.width*0.5267581,size.height*0.3714721,size.width*0.4980233,size.height*0.3764209,size.width*0.4723163,size.height*0.3659721);
    path_5.cubicTo(size.width*0.4602186,size.height*0.3340744,size.width*0.4536651,size.height*0.3005279,size.width*0.4461023,size.height*0.2669814);
    path_5.cubicTo(size.width*0.4370302,size.height*0.1800879,size.width*0.4637465,size.height*0.09539512,size.width*0.4672744,size.height*0.009052558);
    path_5.close();

    Paint paint_5_fill = Paint()..style=PaintingStyle.fill;
    paint_5_fill.color = const Color(0xff31605D).withOpacity(1.0);
    canvas.drawPath(path_5,paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(size.width*0.4672744,size.height*0.009052558);
    path_6.cubicTo(size.width*0.5595233,size.height*0.004103000,size.width*0.6522744,size.height*0.007402698,size.width*0.7440186,size.height*0.02115153);
    path_6.cubicTo(size.width*0.7883791,size.height*0.02555116,size.width*0.8327395,size.height*0.03655023,size.width*0.8770977,size.height*0.04149977);
    path_6.cubicTo(size.width*0.8886930,size.height*0.1300421,size.width*0.8942372,size.height*0.2196844,size.width*0.8897000,size.height*0.3093256);
    path_6.cubicTo(size.width*0.8680256,size.height*0.2911791,size.width*0.8463488,size.height*0.2730302,size.width*0.8246744,size.height*0.2554302);
    path_6.cubicTo(size.width*0.8125744,size.height*0.2460814,size.width*0.8004767,size.height*0.2361837,size.width*0.7853558,size.height*0.2345326);
    path_6.cubicTo(size.width*0.7561186,size.height*0.2323333,size.width*0.7263767,size.height*0.2361837,size.width*0.6971395,size.height*0.2317835);
    path_6.cubicTo(size.width*0.7152860,size.height*0.2174847,size.width*0.7374674,size.height*0.2114351,size.width*0.7576302,size.height*0.2026358);
    path_6.cubicTo(size.width*0.7641837,size.height*0.1855874,size.width*0.7707372,size.height*0.1668891,size.width*0.7838419,size.height*0.1542400);
    path_6.cubicTo(size.width*0.7989651,size.height*0.1388414,size.width*0.8100558,size.height*0.1201430,size.width*0.8196326,size.height*0.1003447);
    path_6.cubicTo(size.width*0.7903953,size.height*0.08714581,size.width*0.7571256,size.height*0.07999651,size.width*0.7258721,size.height*0.08439605);
    path_6.cubicTo(size.width*0.7082302,size.height*0.09869488,size.width*0.6931070,size.height*0.1151935,size.width*0.6764721,size.height*0.1305921);
    path_6.cubicTo(size.width*0.6583233,size.height*0.1454409,size.width*0.6603419,size.height*0.1734884,size.width*0.6553000,size.height*0.1954865);
    path_6.cubicTo(size.width*0.6437047,size.height*0.1723886,size.width*0.6437047,size.height*0.1399414,size.width*0.6195093,size.height*0.1272923);
    path_6.cubicTo(size.width*0.6074116,size.height*0.1190430,size.width*0.5943047,size.height*0.1102440,size.width*0.5791814,size.height*0.1113437);
    path_6.cubicTo(size.width*0.5667558,size.height*0.1113437,size.width*0.5543279,size.height*0.1118742,size.width*0.5419419,size.height*0.1129812);
    path_6.cubicTo(size.width*0.5087256,size.height*0.1159500,size.width*0.4932512,size.height*0.1572898,size.width*0.5187047,size.height*0.1788386);
    path_6.cubicTo(size.width*0.5192000,size.height*0.1792595,size.width*0.5197000,size.height*0.1796760,size.width*0.5202047,size.height*0.1800879);
    path_6.cubicTo(size.width*0.5509535,size.height*0.1828377,size.width*0.5781744,size.height*0.1987863,size.width*0.6043860,size.height*0.2152849);
    path_6.cubicTo(size.width*0.6230372,size.height*0.2273837,size.width*0.6306000,size.height*0.2515814,size.width*0.6391698,size.height*0.2724791);
    path_6.cubicTo(size.width*0.6264837,size.height*0.2700837,size.width*0.6158047,size.height*0.2635674,size.width*0.6063326,size.height*0.2551721);
    path_6.cubicTo(size.width*0.5869907,size.height*0.2380279,size.width*0.5641419,size.height*0.2230937,size.width*0.5382953,size.height*0.2232286);
    path_6.cubicTo(size.width*0.5323837,size.height*0.2232595,size.width*0.5266372,size.height*0.2251944,size.width*0.5219372,size.height*0.2287830);
    path_6.cubicTo(size.width*0.5157465,size.height*0.2335093,size.width*0.5098302,size.height*0.2387558,size.width*0.5040256,size.height*0.2442023);
    path_6.cubicTo(size.width*0.4861395,size.height*0.2609814,size.width*0.4838698,size.height*0.2893186,size.width*0.4990581,size.height*0.3085744);
    path_6.cubicTo(size.width*0.5045767,size.height*0.3155674,size.width*0.5101209,size.height*0.3225814,size.width*0.5156674,size.height*0.3296744);
    path_6.cubicTo(size.width*0.5307907,size.height*0.3373744,size.width*0.5499442,size.height*0.3439744,size.width*0.5660767,size.height*0.3340744);
    path_6.cubicTo(size.width*0.5788721,size.height*0.3281349,size.width*0.5921093,size.height*0.3234767,size.width*0.6055512,size.height*0.3202767);
    path_6.cubicTo(size.width*0.6244326,size.height*0.3157791,size.width*0.6411372,size.height*0.3309651,size.width*0.6398930,size.height*0.3503372);
    path_6.cubicTo(size.width*0.6391651,size.height*0.3616442,size.width*0.6299953,size.height*0.3705047,size.width*0.6186744,size.height*0.3709605);
    path_6.cubicTo(size.width*0.5972605,size.height*0.3718256,size.width*0.5756186,size.height*0.3716000,size.width*0.5539791,size.height*0.3720209);
    path_6.cubicTo(size.width*0.5267581,size.height*0.3714721,size.width*0.4980233,size.height*0.3764209,size.width*0.4723163,size.height*0.3659721);
    path_6.cubicTo(size.width*0.4602186,size.height*0.3340744,size.width*0.4536651,size.height*0.3005279,size.width*0.4461023,size.height*0.2669814);
    path_6.cubicTo(size.width*0.4370302,size.height*0.1800879,size.width*0.4637465,size.height*0.09539512,size.width*0.4672744,size.height*0.009052558);
    path_6.close();

    Paint paint_6_fill = Paint()..style=PaintingStyle.fill;
    paint_6_fill.shader = ui.Gradient.linear(Offset(size.width*0.6677581,size.height*0.6881349), Offset(size.width*0.6677581,size.height*0.3727209), [const Color(0xff0793BF).withOpacity(1),const Color(0xff00D695).withOpacity(1)], [0,1]);
    canvas.drawPath(path_6,paint_6_fill);

    Path path_7 = Path();
    path_7.moveTo(size.width*0.6698791,size.height*0.3646116);
    path_7.cubicTo(size.width*0.6718814,size.height*0.3362628,size.width*0.6972279,size.height*0.3265279,size.width*0.7208512,size.height*0.3423256);
    path_7.cubicTo(size.width*0.7536163,size.height*0.3522256,size.width*0.7828535,size.height*0.3181279,size.width*0.8156186,size.height*0.3269256);
    path_7.cubicTo(size.width*0.8378000,size.height*0.3313256,size.width*0.8604837,size.height*0.3324256,size.width*0.8831674,size.height*0.3329767);
    path_7.cubicTo(size.width*0.8882093,size.height*0.4776140,size.width*0.8720767,size.height*0.6222512,size.width*0.8801419,size.height*0.7668884);
    path_7.cubicTo(size.width*0.8826628,size.height*0.7965860,size.width*0.8846791,size.height*0.8262837,size.width*0.8856884,size.height*0.8559814);
    path_7.cubicTo(size.width*0.8372953,size.height*0.8537814,size.width*0.7929349,size.height*0.8284837,size.width*0.7450465,size.height*0.8273837);
    path_7.cubicTo(size.width*0.7001837,size.height*0.8273837,size.width*0.6623767,size.height*0.8570814,size.width*0.6205372,size.height*0.8713791);
    path_7.cubicTo(size.width*0.6286023,size.height*0.7498395,size.width*0.6432209,size.height*0.6294000,size.width*0.6497744,size.height*0.5073116);
    path_7.cubicTo(size.width*0.6512860,size.height*0.4737651,size.width*0.6648977,size.height*0.4424163,size.width*0.6669140,size.height*0.4088698);
    path_7.cubicTo(size.width*0.6680233,size.height*0.3941000,size.width*0.6688395,size.height*0.3793326,size.width*0.6698791,size.height*0.3646116);
    path_7.close();

    Paint paint_7_fill = Paint()..style=PaintingStyle.fill;
    paint_7_fill.shader = ui.Gradient.linear(Offset(size.width*0.7531116,size.height*0.3087791), Offset(size.width*0.7531116,size.height*0.8713791), [const Color(0xff00D695).withOpacity(1),const Color(0xff0793BF).withOpacity(1)], [0,1]);
    canvas.drawPath(path_7,paint_7_fill);

    Path path_8 = Path();
    path_8.moveTo(size.width*0.5497233,size.height*0.9011326);
    path_8.cubicTo(size.width*0.5053628,size.height*0.8978326,size.width*0.4635233,size.height*0.8796837,size.width*0.4201721,size.height*0.8736349);
    path_8.cubicTo(size.width*0.3874605,size.height*0.8662558,size.width*0.3085419,size.height*0.8733977,size.width*0.2583581,size.height*0.9148814);
    path_8.cubicTo(size.width*0.2543256,size.height*0.9374302,size.width*0.2563419,size.height*0.9610767,size.width*0.2558395,size.height*0.9841767);
    path_8.cubicTo(size.width*0.3057442,size.height*0.9671279,size.width*0.3556488,size.height*0.9478791,size.width*0.4085767,size.height*0.9489791);
    path_8.cubicTo(size.width*0.4625140,size.height*0.9511791,size.width*0.5154442,size.height*0.9676767,size.width*0.5698860,size.height*0.9693279);
    path_8.cubicTo(size.width*0.6298721,size.height*0.9654767,size.width*0.6858256,size.height*0.9368791,size.width*0.7458116,size.height*0.9319302);
    path_8.cubicTo(size.width*0.8027744,size.height*0.9264302,size.width*0.8562070,size.height*0.9539279,size.width*0.9126651,size.height*0.9539279);
    path_8.cubicTo(size.width*0.9343419,size.height*0.9550279,size.width*0.9560163,size.height*0.9489791,size.width*0.9766860,size.height*0.9429302);
    path_8.cubicTo(size.width*0.9779674,size.height*0.9280279,size.width*0.9797628,size.height*0.8953349,size.width*0.9766860,size.height*0.8837628);
    path_8.cubicTo(size.width*0.9652837,size.height*0.8835116,size.width*0.9490791,size.height*0.8826279,size.width*0.9320721,size.height*0.8812233);
    path_8.cubicTo(size.width*0.8817628,size.height*0.8770721,size.width*0.8333419,size.height*0.8612767,size.width*0.7848605,size.height*0.8472093);
    path_8.cubicTo(size.width*0.7739326,size.height*0.8440395,size.width*0.7628419,size.height*0.8417023,size.width*0.7513581,size.height*0.8411884);
    path_8.cubicTo(size.width*0.6792721,size.height*0.8389884,size.width*0.6223116,size.height*0.9066326,size.width*0.5497233,size.height*0.9011326);
    path_8.close();

    Paint paint_8_fill = Paint()..style=PaintingStyle.fill;
    paint_8_fill.color = const Color(0xff2BC3F3).withOpacity(1.0);
    canvas.drawPath(path_8,paint_8_fill);

    Path path_9 = Path();
    path_9.moveTo(size.width*0.3185744,size.height*0.4935581);
    path_9.cubicTo(size.width*0.2878256,size.height*0.4765093,size.width*0.2606047,size.height*0.4484628,size.width*0.2263263,size.height*0.4396628);
    path_9.cubicTo(size.width*0.2046505,size.height*0.4578116,size.width*0.1925523,size.height*0.4853093,size.width*0.1744051,size.height*0.5067581);
    path_9.cubicTo(size.width*0.1527293,size.height*0.5331558,size.width*0.1335740,size.height*0.5617535,size.width*0.1129063,size.height*0.5881512);
    path_9.cubicTo(size.width*0.09778372,size.height*0.6079488,size.width*0.08770186,size.height*0.6348953,size.width*0.09324698,size.height*0.6607442);
    path_9.cubicTo(size.width*0.1013123,size.height*0.6860419,size.width*0.1214758,size.height*0.7030907,size.width*0.1376067,size.height*0.7217884);
    path_9.cubicTo(size.width*0.1411353,size.height*0.7311372,size.width*0.1400247,size.height*0.7398884,size.width*0.1354877,size.height*0.7497884);
    path_9.cubicTo(size.width*0.1259100,size.height*0.7772860,size.width*0.1023205,size.height*0.7993326,size.width*0.1023205,size.height*0.8320140);
    path_9.cubicTo(size.width*0.1012328,size.height*0.8609256,size.width*0.1035165,size.height*0.8989884,size.width*0.1073226,size.height*0.9248698);
    path_9.cubicTo(size.width*0.1194207,size.height*0.9298186,size.width*0.1513079,size.height*0.9197512,size.width*0.1644142,size.height*0.9203023);
    path_9.cubicTo(size.width*0.1634060,size.height*0.8796047,size.width*0.1578100,size.height*0.8392023,size.width*0.1568019,size.height*0.7985070);
    path_9.cubicTo(size.width*0.1552895,size.height*0.7715581,size.width*0.1771486,size.height*0.7501767,size.width*0.1842058,size.height*0.7254279);
    path_9.cubicTo(size.width*0.1796691,size.height*0.6913326,size.width*0.1562774,size.height*0.6692791,size.width*0.1537570,size.height*0.6340814);
    path_9.cubicTo(size.width*0.1517407,size.height*0.6186837,size.width*0.1441793,size.height*0.6037651,size.width*0.1537570,size.height*0.5922163);
    path_9.cubicTo(size.width*0.1734165,size.height*0.5746163,size.width*0.1900319,size.height*0.5573535,size.width*0.2086830,size.height*0.5397535);
    path_9.cubicTo(size.width*0.2278386,size.height*0.5249070,size.width*0.2490093,size.height*0.5029070,size.width*0.2737116,size.height*0.5117070);
    path_9.cubicTo(size.width*0.3044605,size.height*0.5232558,size.width*0.3352093,size.height*0.5414047,size.width*0.3518442,size.height*0.5727512);
    path_9.cubicTo(size.width*0.3654535,size.height*0.5986000,size.width*0.3755372,size.height*0.6304977,size.width*0.3649512,size.height*0.6596442);
    path_9.cubicTo(size.width*0.3578930,size.height*0.6893419,size.width*0.3251279,size.height*0.7091395,size.width*0.3306721,size.height*0.7426860);
    path_9.cubicTo(size.width*0.3402512,size.height*0.7828326,size.width*0.3538605,size.height*0.8218814,size.width*0.3619256,size.height*0.8625767);
    path_9.cubicTo(size.width*0.3737814,size.height*0.8584163,size.width*0.4061837,size.height*0.8626767,size.width*0.4209047,size.height*0.8653256);
    path_9.cubicTo(size.width*0.4153605,size.height*0.8345302,size.width*0.3967070,size.height*0.8103302,size.width*0.3800721,size.height*0.7855837);
    path_9.cubicTo(size.width*0.3720070,size.height*0.7520372,size.width*0.3957000,size.height*0.7239884,size.width*0.4113256,size.height*0.6975907);
    path_9.cubicTo(size.width*0.4234256,size.height*0.6810930,size.width*0.4198953,size.height*0.6590953,size.width*0.4204000,size.height*0.6398465);
    path_9.cubicTo(size.width*0.4188884,size.height*0.6101488,size.width*0.4163674,size.height*0.5788023,size.width*0.4022535,size.height*0.5529535);
    path_9.cubicTo(size.width*0.3820884,size.height*0.5221558,size.width*0.3468023,size.height*0.5128070,size.width*0.3185744,size.height*0.4935581);
    path_9.close();

    Paint paint_9_fill = Paint()..style=PaintingStyle.fill;
    paint_9_fill.color = const Color(0xffE0E0E0).withOpacity(1.0);
    canvas.drawPath(path_9,paint_9_fill);

    Path path_10 = Path();
    path_10.moveTo(size.width*0.2086919,size.height*0.5397581);
    path_10.cubicTo(size.width*0.2278472,size.height*0.5249093,size.width*0.2490186,size.height*0.5029116,size.width*0.2737186,size.height*0.5117116);
    path_10.cubicTo(size.width*0.3044698,size.height*0.5232605,size.width*0.3352186,size.height*0.5414093,size.width*0.3518535,size.height*0.5727558);
    path_10.cubicTo(size.width*0.3654628,size.height*0.5986047,size.width*0.3755442,size.height*0.6305023,size.width*0.3649581,size.height*0.6596488);
    path_10.cubicTo(size.width*0.3579023,size.height*0.6893465,size.width*0.3251372,size.height*0.7091442,size.width*0.3306814,size.height*0.7426907);
    path_10.cubicTo(size.width*0.3402581,size.height*0.7828372,size.width*0.3538698,size.height*0.8218837,size.width*0.3619349,size.height*0.8625814);
    path_10.cubicTo(size.width*0.3311860,size.height*0.8724814,size.width*0.2989233,size.height*0.8774302,size.width*0.2696860,size.height*0.8911791);
    path_10.cubicTo(size.width*0.2570837,size.height*0.8955791,size.width*0.2545628,size.height*0.9120767,size.width*0.2444814,size.height*0.9197767);
    path_10.cubicTo(size.width*0.2177653,size.height*0.9230767,size.width*0.1905447,size.height*0.9208767,size.width*0.1638279,size.height*0.9208767);
    path_10.cubicTo(size.width*0.1582830,size.height*0.8801791,size.width*0.1522340,size.height*0.8400326,size.width*0.1527381,size.height*0.7987860);
    path_10.cubicTo(size.width*0.1522340,size.height*0.7701884,size.width*0.1744140,size.height*0.7492907,size.width*0.1779426,size.height*0.7223442);
    path_10.cubicTo(size.width*0.1754221,size.height*0.6992442,size.width*0.1582830,size.height*0.6827465,size.width*0.1502177,size.height*0.6623977);
    path_10.cubicTo(size.width*0.1386237,size.height*0.6398512,size.width*0.1426563,size.height*0.6134535,size.width*0.1492095,size.height*0.5903558);
    path_10.cubicTo(size.width*0.1688688,size.height*0.5727558,size.width*0.1900407,size.height*0.5573581,size.width*0.2086919,size.height*0.5397581);
    path_10.close();

    Paint paint_10_fill = Paint()..style=PaintingStyle.fill;
    paint_10_fill.shader = ui.Gradient.linear(Offset(size.width*0.2561163,size.height*0.5096977), Offset(size.width*0.2561163,size.height*0.9215953), [const Color(0xffDC804D).withOpacity(1),const Color(0xffD1AC27).withOpacity(1)], [0,1]);
    canvas.drawPath(path_10,paint_10_fill);
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}