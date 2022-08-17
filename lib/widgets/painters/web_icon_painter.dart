import 'package:flutter/material.dart';


class WebIcon extends StatelessWidget {


  final double width;
  const WebIcon({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, (width*0.918918918918919).toDouble()),
      painter: LocalCustomPainter(),
    );
  }
}






class LocalCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.6147838,size.height*0.8467618);
    path_0.cubicTo(size.width*0.5865081,size.height*0.8808471,size.width*0.5539378,size.height*0.9146765,size.width*0.5170703,size.height*0.9482500);
    path_0.cubicTo(size.width*0.5270676,size.height*0.9468059,size.width*0.5370676,size.height*0.9450206,size.width*0.5468297,size.height*0.9429794);
    path_0.cubicTo(size.width*0.5735432,size.height*0.9371147,size.width*0.5992405,size.height*0.9285294,size.width*0.6240784,size.height*0.9168000);
    path_0.cubicTo(size.width*0.6304838,size.height*0.9138265,size.width*0.6367324,size.height*0.9106824,size.width*0.6429027,size.height*0.9074500);
    path_0.cubicTo(size.width*0.6475108,size.height*0.9139118,size.width*0.6526649,size.height*0.9195206,size.width*0.6582108,size.height*0.9242824);
    path_0.cubicTo(size.width*0.6642243,size.height*0.9294647,size.width*0.6706297,size.height*0.9335471,size.width*0.6773459,size.height*0.9366059);
    path_0.cubicTo(size.width*0.6650054,size.height*0.9438294,size.width*0.6523514,size.height*0.9503765,size.width*0.6393865,size.height*0.9564941);
    path_0.cubicTo(size.width*0.6118162,size.height*0.9694147,size.width*0.5834622,size.height*0.9788500,size.width*0.5542486,size.height*0.9853088);
    path_0.cubicTo(size.width*0.5250378,size.height*0.9917706,size.width*0.4948108,size.height*0.9950000,size.width*0.4637243,size.height*0.9950000);
    path_0.cubicTo(size.width*0.4326378,size.height*0.9950000,size.width*0.4026432,size.height*0.9917706,size.width*0.3731973,size.height*0.9853088);
    path_0.cubicTo(size.width*0.3442973,size.height*0.9791059,size.width*0.3164919,size.height*0.9697559,size.width*0.2891541,size.height*0.9570912);
    path_0.cubicTo(size.width*0.2889189,size.height*0.9570912,size.width*0.2883730,size.height*0.9568353,size.width*0.2880595,size.height*0.9564941);
    path_0.cubicTo(size.width*0.2610354,size.height*0.9438294,size.width*0.2353381,size.height*0.9285294,size.width*0.2113592,size.height*0.9111912);
    path_0.cubicTo(size.width*0.1873022,size.height*0.8938500,size.width*0.1651197,size.height*0.8738765,size.width*0.1448900,size.height*0.8517765);
    path_0.cubicTo(size.width*0.1243476,size.height*0.8297618,size.width*0.1062268,size.height*0.8056235,size.width*0.09029297,size.height*0.7794412);
    path_0.cubicTo(size.width*0.07404676,size.height*0.7532618,size.width*0.06029973,size.height*0.7252971,size.width*0.04866189,size.height*0.6959735);
    path_0.cubicTo(size.width*0.03678946,size.height*0.6659676,size.width*0.02811946,size.height*0.6351147,size.width*0.02218341,size.height*0.6033235);
    path_0.cubicTo(size.width*0.01648159,size.height*0.5716206,size.width*0.01351351,size.height*0.5386412,size.width*0.01351351,size.height*0.5048118);
    path_0.cubicTo(size.width*0.01351351,size.height*0.4709794,size.width*0.01648159,size.height*0.4383412,size.width*0.02241773,size.height*0.4062971);
    path_0.cubicTo(size.width*0.02811946,size.height*0.3748471,size.width*0.03671135,size.height*0.3445882,size.width*0.04834946,size.height*0.3148382);
    path_0.cubicTo(size.width*0.04834946,size.height*0.3145824,size.width*0.04858378,size.height*0.3139882,size.width*0.04889622,size.height*0.3136471);
    path_0.cubicTo(size.width*0.06053405,size.height*0.2839829,size.width*0.07459324,size.height*0.2562732,size.width*0.09052730,size.height*0.2301785);
    path_0.cubicTo(size.width*0.1064611,size.height*0.2039988,size.width*0.1248162,size.height*0.1798591,size.width*0.1451243,size.height*0.1578444);
    path_0.cubicTo(size.width*0.1653541,size.height*0.1354894,size.width*0.1875365,size.height*0.1157697,size.width*0.2115935,size.height*0.09843000);
    path_0.cubicTo(size.width*0.2356505,size.height*0.08075029,size.width*0.2612697,size.height*0.06579029,size.width*0.2882946,size.height*0.05312559);
    path_0.cubicTo(size.width*0.3158676,size.height*0.04020559,size.width*0.3442189,size.height*0.03077059,size.width*0.3734324,size.height*0.02431076);
    path_0.cubicTo(size.width*0.4025649,size.height*0.01793585,size.width*0.4328703,size.height*0.01470588,size.width*0.4638811,size.height*0.01470588);
    path_0.cubicTo(size.width*0.4949676,size.height*0.01470588,size.width*0.5249595,size.height*0.01793585,size.width*0.5544054,size.height*0.02439576);
    path_0.cubicTo(size.width*0.5833054,size.height*0.03060059,size.width*0.6111108,size.height*0.03995059,size.width*0.6384486,size.height*0.05261559);
    path_0.cubicTo(size.width*0.6386838,size.height*0.05261559,size.width*0.6392297,size.height*0.05287059,size.width*0.6395432,size.height*0.05321059);
    path_0.cubicTo(size.width*0.6665676,size.height*0.06587529,size.width*0.6922649,size.height*0.08117500,size.width*0.7162432,size.height*0.09851500);
    path_0.cubicTo(size.width*0.7403027,size.height*0.1158547,size.width*0.7624838,size.height*0.1358294,size.width*0.7827135,size.height*0.1579294);
    path_0.cubicTo(size.width*0.8032568,size.height*0.1799441,size.width*0.8213757,size.height*0.2040838,size.width*0.8373108,size.height*0.2302635);
    path_0.cubicTo(size.width*0.8535568,size.height*0.2564432,size.width*0.8673027,size.height*0.2844079,size.width*0.8789405,size.height*0.3137324);
    path_0.cubicTo(size.width*0.8908135,size.height*0.3437382,size.width*0.8994838,size.height*0.3745912,size.width*0.9054189,size.height*0.4063824);
    path_0.cubicTo(size.width*0.9087784,size.height*0.4244000,size.width*0.9112000,size.height*0.4427618,size.width*0.9126838,size.height*0.4614618);
    path_0.lineTo(size.width*0.8718351,size.height*0.4496471);
    path_0.cubicTo(size.width*0.8705838,size.height*0.4379176,size.width*0.8689432,size.height*0.4263559,size.width*0.8668351,size.height*0.4148824);
    path_0.cubicTo(size.width*0.8614459,size.height*0.3858118,size.width*0.8535568,size.height*0.3578471,size.width*0.8427784,size.height*0.3308176);
    path_0.cubicTo(size.width*0.8360622,size.height*0.3134765,size.width*0.8284838,size.height*0.2969882,size.width*0.8200486,size.height*0.2810929);
    path_0.lineTo(size.width*0.6882027,size.height*0.2810929);
    path_0.cubicTo(size.width*0.7116351,size.height*0.3246971,size.width*0.7285081,size.height*0.3680471,size.width*0.7387405,size.height*0.4113118);
    path_0.lineTo(size.width*0.6943730,size.height*0.3984765);
    path_0.cubicTo(size.width*0.6828135,size.height*0.3597176,size.width*0.6653973,size.height*0.3206176,size.width*0.6419649,size.height*0.2810929);
    path_0.lineTo(size.width*0.4836405,size.height*0.2810929);
    path_0.lineTo(size.width*0.4836405,size.height*0.3609059);
    path_0.cubicTo(size.width*0.4808297,size.height*0.3626912,size.width*0.4780162,size.height*0.3648176,size.width*0.4752838,size.height*0.3671971);
    path_0.cubicTo(size.width*0.4730973,size.height*0.3690676,size.width*0.4709865,size.height*0.3711059,size.width*0.4690351,size.height*0.3732324);
    path_0.cubicTo(size.width*0.4663784,size.height*0.3762059,size.width*0.4638811,size.height*0.3793529,size.width*0.4617703,size.height*0.3827529);
    path_0.cubicTo(size.width*0.4583351,size.height*0.3881912,size.width*0.4556000,size.height*0.3942265,size.width*0.4534919,size.height*0.4006853);
    path_0.cubicTo(size.width*0.4513838,size.height*0.4072324,size.width*0.4501324,size.height*0.4137765,size.width*0.4496649,size.height*0.4201500);
    path_0.cubicTo(size.width*0.4492730,size.height*0.4255912,size.width*0.4494297,size.height*0.4312000,size.width*0.4502108,size.height*0.4367265);
    path_0.cubicTo(size.width*0.4508351,size.height*0.4413176,size.width*0.4517730,size.height*0.4458206,size.width*0.4531784,size.height*0.4502412);
    path_0.lineTo(size.width*0.4535703,size.height*0.4514324);
    path_0.cubicTo(size.width*0.4538811,size.height*0.4523647,size.width*0.4541946,size.height*0.4533000,size.width*0.4545081,size.height*0.4541500);
    path_0.cubicTo(size.width*0.4549757,size.height*0.4555971,size.width*0.4553649,size.height*0.4564471,size.width*0.4555216,size.height*0.4568706);
    path_0.lineTo(size.width*0.4556784,size.height*0.4567853);
    path_0.lineTo(size.width*0.4840324,size.height*0.5262294);
    path_0.lineTo(size.width*0.4835622,size.height*0.5262294);
    path_0.lineTo(size.width*0.4835622,size.height*0.7285294);
    path_0.lineTo(size.width*0.5665135,size.height*0.7285294);
    path_0.lineTo(size.width*0.5840081,size.height*0.7714529);
    path_0.lineTo(size.width*0.4836405,size.height*0.7714529);
    path_0.lineTo(size.width*0.4836405,size.height*0.9225794);
    path_0.cubicTo(size.width*0.5277703,size.height*0.8831412,size.width*0.5656541,size.height*0.8433618,size.width*0.5972081,size.height*0.8034971);
    path_0.lineTo(size.width*0.6147838,size.height*0.8467618);
    path_0.close();
    path_0.moveTo(size.width*0.9128405,size.height*0.8474412);
    path_0.cubicTo(size.width*0.9101838,size.height*0.8503324,size.width*0.9070595,size.height*0.8525412,size.width*0.9037811,size.height*0.8541559);
    path_0.cubicTo(size.width*0.9003432,size.height*0.8558559,size.width*0.8966730,size.height*0.8568765,size.width*0.8930000,size.height*0.8572176);
    path_0.cubicTo(size.width*0.8890189,size.height*0.8575559,size.width*0.8849568,size.height*0.8571324,size.width*0.8810514,size.height*0.8557706);
    path_0.cubicTo(size.width*0.8773027,size.height*0.8544971,size.width*0.8737081,size.height*0.8523706,size.width*0.8705054,size.height*0.8494824);
    path_0.lineTo(size.width*0.7838865,size.height*0.7694971);
    path_0.lineTo(size.width*0.7541270,size.height*0.8489706);
    path_0.cubicTo(size.width*0.7516270,size.height*0.8556029,size.width*0.7486595,size.height*0.8617206,size.width*0.7453000,size.height*0.8672471);
    path_0.cubicTo(size.width*0.7418649,size.height*0.8728559,size.width*0.7380351,size.height*0.8777000,size.width*0.7340541,size.height*0.8815265);
    path_0.cubicTo(size.width*0.7308514,size.height*0.8845853,size.width*0.7273351,size.height*0.8872206,size.width*0.7236649,size.height*0.8891765);
    path_0.cubicTo(size.width*0.7199946,size.height*0.8911324,size.width*0.7162432,size.height*0.8924059,size.width*0.7123378,size.height*0.8930000);
    path_0.cubicTo(size.width*0.7078081,size.height*0.8936824,size.width*0.7032784,size.height*0.8933412,size.width*0.6989054,size.height*0.8919824);
    path_0.cubicTo(size.width*0.6946865,size.height*0.8906206,size.width*0.6906243,size.height*0.8884118,size.width*0.6867189,size.height*0.8850971);
    path_0.cubicTo(size.width*0.6835946,size.height*0.8824618,size.width*0.6807054,size.height*0.8790618,size.width*0.6779730,size.height*0.8749824);
    path_0.cubicTo(size.width*0.6754730,size.height*0.8712412,size.width*0.6732081,size.height*0.8668206,size.width*0.6710973,size.height*0.8617206);
    path_0.cubicTo(size.width*0.6147054,size.height*0.7234294,size.width*0.5474541,size.height*0.5745941,size.width*0.4971541,size.height*0.4353676);
    path_0.cubicTo(size.width*0.4965297,size.height*0.4334971,size.width*0.4960595,size.height*0.4316265,size.width*0.4958270,size.height*0.4296706);
    path_0.cubicTo(size.width*0.4955919,size.height*0.4277176,size.width*0.4955135,size.height*0.4257618,size.width*0.4956703,size.height*0.4238059);
    path_0.cubicTo(size.width*0.4958270,size.height*0.4215118,size.width*0.4962946,size.height*0.4193000,size.width*0.4969973,size.height*0.4170912);
    path_0.cubicTo(size.width*0.4977000,size.height*0.4149676,size.width*0.4986378,size.height*0.4128412,size.width*0.4998081,size.height*0.4109706);
    path_0.cubicTo(size.width*0.5004351,size.height*0.4100353,size.width*0.5010595,size.height*0.4091029,size.width*0.5018405,size.height*0.4083353);
    path_0.cubicTo(size.width*0.5024649,size.height*0.4076559,size.width*0.5031676,size.height*0.4069765,size.width*0.5039486,size.height*0.4063824);
    path_0.cubicTo(size.width*0.5053541,size.height*0.4051912,size.width*0.5068378,size.height*0.4041706,size.width*0.5084000,size.height*0.4033206);
    path_0.lineTo(size.width*0.5087919,size.height*0.4031529);
    path_0.cubicTo(size.width*0.5102757,size.height*0.4023853,size.width*0.5118378,size.height*0.4017912,size.width*0.5133216,size.height*0.4014529);
    path_0.lineTo(size.width*0.5140243,size.height*0.4012824);
    path_0.cubicTo(size.width*0.5154297,size.height*0.4009412,size.width*0.5168378,size.height*0.4007706,size.width*0.5182432,size.height*0.4006853);
    path_0.cubicTo(size.width*0.5198838,size.height*0.4006029,size.width*0.5214459,size.height*0.4007706,size.width*0.5230081,size.height*0.4010265);
    path_0.cubicTo(size.width*0.5235541,size.height*0.4011118,size.width*0.5241000,size.height*0.4011971,size.width*0.5246486,size.height*0.4012824);
    path_0.cubicTo(size.width*0.6624297,size.height*0.4385118,size.width*0.8009919,size.height*0.4810118,size.width*0.9384595,size.height*0.5207059);
    path_0.cubicTo(size.width*0.9433811,size.height*0.5221500,size.width*0.9477541,size.height*0.5239353,size.width*0.9515811,size.height*0.5259765);
    path_0.cubicTo(size.width*0.9557216,size.height*0.5282706,size.width*0.9592351,size.height*0.5308206,size.width*0.9621270,size.height*0.5337088);
    path_0.cubicTo(size.width*0.9657189,size.height*0.5372794,size.width*0.9684514,size.height*0.5413588,size.width*0.9703270,size.height*0.5456941);
    path_0.cubicTo(size.width*0.9722811,size.height*0.5502000,size.width*0.9732946,size.height*0.5550441,size.width*0.9733730,size.height*0.5600588);
    path_0.lineTo(size.width*0.9733730,size.height*0.5601441);
    path_0.cubicTo(size.width*0.9734514,size.height*0.5643941,size.width*0.9729054,size.height*0.5686441,size.width*0.9717324,size.height*0.5728941);
    path_0.cubicTo(size.width*0.9705622,size.height*0.5771441,size.width*0.9687649,size.height*0.5812235,size.width*0.9664216,size.height*0.5852206);
    path_0.cubicTo(size.width*0.9635324,size.height*0.5901500,size.width*0.9597838,size.height*0.5950794,size.width*0.9552514,size.height*0.5995853);
    path_0.cubicTo(size.width*0.9508784,size.height*0.6040029,size.width*0.9457243,size.height*0.6081706,size.width*0.9400216,size.height*0.6119941);
    path_0.cubicTo(size.width*0.9174486,size.height*0.6264441,size.width*0.8949541,size.height*0.6417441,size.width*0.8725378,size.height*0.6565324);
    path_0.lineTo(size.width*0.9588459,size.height*0.7370294);
    path_0.cubicTo(size.width*0.9619703,size.height*0.7400029,size.width*0.9644703,size.height*0.7434882,size.width*0.9661865,size.height*0.7473118);
    path_0.lineTo(size.width*0.9664216,size.height*0.7479941);
    path_0.cubicTo(size.width*0.9680622,size.height*0.7518176,size.width*0.9690784,size.height*0.7558118,size.width*0.9693892,size.height*0.7599765);
    path_0.cubicTo(size.width*0.9697027,size.height*0.7641441,size.width*0.9693108,size.height*0.7684765,size.width*0.9681405,size.height*0.7727265);
    path_0.cubicTo(size.width*0.9670459,size.height*0.7767235,size.width*0.9652514,size.height*0.7806324,size.width*0.9627514,size.height*0.7841176);
    path_0.cubicTo(size.width*0.9495514,size.height*0.8017971,size.width*0.9274459,size.height*0.8327382,size.width*0.9128405,size.height*0.8474412);
    path_0.close();
    path_0.moveTo(size.width*0.8901892,size.height*0.8165882);
    path_0.lineTo(size.width*0.9319757,size.height*0.7632088);
    path_0.lineTo(size.width*0.8304378,size.height*0.6685176);
    path_0.lineTo(size.width*0.8298892,size.height*0.6679235);
    path_0.cubicTo(size.width*0.8294216,size.height*0.6674147,size.width*0.8288757,size.height*0.6668176,size.width*0.8284838,size.height*0.6663088);
    path_0.cubicTo(size.width*0.8278595,size.height*0.6655441,size.width*0.8273135,size.height*0.6646941,size.width*0.8268432,size.height*0.6637588);
    path_0.cubicTo(size.width*0.8242676,size.height*0.6591676,size.width*0.8237189,size.height*0.6539000,size.width*0.8248135,size.height*0.6490529);
    path_0.cubicTo(size.width*0.8259081,size.height*0.6442088,size.width*0.8287189,size.height*0.6397882,size.width*0.8329378,size.height*0.6370676);
    path_0.cubicTo(size.width*0.8623054,size.height*0.6194735,size.width*0.8926108,size.height*0.5974588,size.width*0.9215892,size.height*0.5785059);
    path_0.cubicTo(size.width*0.9249459,size.height*0.5762941,size.width*0.9279162,size.height*0.5738294,size.width*0.9304135,size.height*0.5713647);
    path_0.cubicTo(size.width*0.9327568,size.height*0.5689853,size.width*0.9347108,size.height*0.5666059,size.width*0.9360378,size.height*0.5643088);
    path_0.cubicTo(size.width*0.9365838,size.height*0.5633735,size.width*0.9369757,size.height*0.5626088,size.width*0.9372108,size.height*0.5618441);
    path_0.cubicTo(size.width*0.9365838,size.height*0.5613353,size.width*0.9358811,size.height*0.5609088,size.width*0.9348676,size.height*0.5604000);
    path_0.cubicTo(size.width*0.9333838,size.height*0.5596353,size.width*0.9314297,size.height*0.5589559,size.width*0.9291649,size.height*0.5582735);
    path_0.lineTo(size.width*0.5408162,size.height*0.4462471);
    path_0.lineTo(size.width*0.7039027,size.height*0.8459971);
    path_0.cubicTo(size.width*0.7048405,size.height*0.8482059,size.width*0.7057784,size.height*0.8501618,size.width*0.7067946,size.height*0.8517765);
    path_0.lineTo(size.width*0.7070270,size.height*0.8522029);
    path_0.cubicTo(size.width*0.7075757,size.height*0.8529676,size.width*0.7080432,size.height*0.8536471,size.width*0.7084324,size.height*0.8540706);
    path_0.cubicTo(size.width*0.7090595,size.height*0.8537324,size.width*0.7096838,size.height*0.8531353,size.width*0.7104649,size.height*0.8523706);
    path_0.cubicTo(size.width*0.7123378,size.height*0.8505853,size.width*0.7142135,size.height*0.8481206,size.width*0.7159324,size.height*0.8452324);
    path_0.cubicTo(size.width*0.7178054,size.height*0.8421706,size.width*0.7195243,size.height*0.8385176,size.width*0.7210081,size.height*0.8344382);
    path_0.lineTo(size.width*0.7600622,size.height*0.7300588);
    path_0.lineTo(size.width*0.7604541,size.height*0.7292088);
    path_0.cubicTo(size.width*0.7607649,size.height*0.7285294,size.width*0.7610784,size.height*0.7278471,size.width*0.7613892,size.height*0.7272529);
    path_0.lineTo(size.width*0.7616243,size.height*0.7268294);
    path_0.cubicTo(size.width*0.7620162,size.height*0.7261471,size.width*0.7624838,size.height*0.7254676,size.width*0.7630297,size.height*0.7247882);
    path_0.cubicTo(size.width*0.7662324,size.height*0.7207088,size.width*0.7706838,size.height*0.7183294,size.width*0.7752162,size.height*0.7179882);
    path_0.cubicTo(size.width*0.7797459,size.height*0.7175618,size.width*0.7844324,size.height*0.7190941,size.width*0.7882595,size.height*0.7225794);
    path_0.lineTo(size.width*0.8901892,size.height*0.8165882);
    path_0.close();
    path_0.moveTo(size.width*0.4110000,size.height*0.9482500);
    path_0.cubicTo(size.width*0.3472649,size.height*0.8900265,size.width*0.2961838,size.height*0.8312059,size.width*0.2583797,size.height*0.7715382);
    path_0.lineTo(size.width*0.1337205,size.height*0.7715382);
    path_0.cubicTo(size.width*0.1455930,size.height*0.7892176,size.width*0.1588711,size.height*0.8056235,size.width*0.1731646,size.height*0.8212618);
    path_0.cubicTo(size.width*0.1918324,size.height*0.8415765,size.width*0.2118278,size.height*0.8595118,size.width*0.2336978,size.height*0.8753206);
    path_0.cubicTo(size.width*0.2553335,size.height*0.8912176,size.width*0.2788432,size.height*0.9049853,size.width*0.3042297,size.height*0.9168000);
    path_0.cubicTo(size.width*0.3044622,size.height*0.9170559,size.width*0.3047757,size.height*0.9170559,size.width*0.3050108,size.height*0.9173971);
    path_0.cubicTo(size.width*0.3296135,size.height*0.9285294,size.width*0.3549973,size.height*0.9373706,size.width*0.3814757,size.height*0.9429794);
    path_0.cubicTo(size.width*0.3912405,size.height*0.9450206,size.width*0.4012378,size.height*0.9468059,size.width*0.4111568,size.height*0.9482500);
    path_0.lineTo(size.width*0.4110000,size.height*0.9482500);
    path_0.close();
    path_0.moveTo(size.width*0.1077889,size.height*0.7286118);
    path_0.lineTo(size.width*0.2331511,size.height*0.7286118);
    path_0.cubicTo(size.width*0.1983151,size.height*0.6621441,size.width*0.1794132,size.height*0.5945706,size.width*0.1772262,size.height*0.5263147);
    path_0.lineTo(size.width*0.05350432,size.height*0.5263147);
    path_0.cubicTo(size.width*0.05459784,size.height*0.5498588,size.width*0.05701919,size.height*0.5724706,size.width*0.06108081,size.height*0.5948235);
    path_0.cubicTo(size.width*0.06647027,size.height*0.6238941,size.width*0.07428081,size.height*0.6518588,size.width*0.08513784,size.height*0.6788882);
    path_0.cubicTo(size.width*0.09185514,size.height*0.6962294,size.width*0.09943135,size.height*0.7127176,size.width*0.1077889,size.height*0.7286118);
    path_0.close();
    path_0.moveTo(size.width*0.05350432,size.height*0.4833912);
    path_0.lineTo(size.width*0.1780854,size.height*0.4833912);
    path_0.cubicTo(size.width*0.1826938,size.height*0.4163265,size.width*0.2032359,size.height*0.3490059,size.width*0.2397122,size.height*0.2810929);
    path_0.lineTo(size.width*0.1077889,size.height*0.2810929);
    path_0.cubicTo(size.width*0.09943135,size.height*0.2969882,size.width*0.09185514,size.height*0.3133912,size.width*0.08505973,size.height*0.3308176);
    path_0.cubicTo(size.width*0.08482541,size.height*0.3310735,size.width*0.08482541,size.height*0.3314118,size.width*0.08451297,size.height*0.3316676);
    path_0.cubicTo(size.width*0.07428081,size.height*0.3584412,size.width*0.06615784,size.height*0.3860676,size.width*0.06100270,size.height*0.4148824);
    path_0.cubicTo(size.width*0.05701919,size.height*0.4372353,size.width*0.05428541,size.height*0.4598471,size.width*0.05350432,size.height*0.4833912);
    path_0.close();
    path_0.moveTo(size.width*0.1334862,size.height*0.2381685);
    path_0.lineTo(size.width*0.2650970,size.height*0.2381685);
    path_0.cubicTo(size.width*0.3026676,size.height*0.1793491,size.width*0.3521081,size.height*0.1202747,size.width*0.4137351,size.height*0.06086029);
    path_0.cubicTo(size.width*0.4026432,size.height*0.06230529,size.width*0.3918649,size.height*0.06409029,size.width*0.3813216,size.height*0.06647029);
    path_0.cubicTo(size.width*0.3546081,size.height*0.07233529,size.width*0.3289108,size.height*0.08092029,size.width*0.3040730,size.height*0.09265000);
    path_0.cubicTo(size.width*0.2789216,size.height*0.1043800,size.width*0.2554116,size.height*0.1182347,size.width*0.2335416,size.height*0.1341297);
    path_0.cubicTo(size.width*0.2116716,size.height*0.1500244,size.width*0.1916762,size.height*0.1679591,size.width*0.1730084,size.height*0.1881891);
    path_0.cubicTo(size.width*0.1587149,size.height*0.2037438,size.width*0.1454368,size.height*0.2202335,size.width*0.1335643,size.height*0.2379135);
    path_0.lineTo(size.width*0.1334862,size.height*0.2381685);
    path_0.close();
    path_0.moveTo(size.width*0.5141811,size.height*0.06086029);
    path_0.cubicTo(size.width*0.5760405,size.height*0.1202747,size.width*0.6254838,size.height*0.1793491,size.width*0.6628189,size.height*0.2381685);
    path_0.lineTo(size.width*0.7944297,size.height*0.2381685);
    path_0.cubicTo(size.width*0.7825568,size.height*0.2204885,size.width*0.7692784,size.height*0.2040838,size.width*0.7549865,size.height*0.1884438);
    path_0.cubicTo(size.width*0.7363189,size.height*0.1681291,size.width*0.7163216,size.height*0.1501944,size.width*0.6944514,size.height*0.1342994);
    path_0.cubicTo(size.width*0.6728162,size.height*0.1184047,size.width*0.6493054,size.height*0.1046350,size.width*0.6239216,size.height*0.09282000);
    path_0.cubicTo(size.width*0.6236865,size.height*0.09256500,size.width*0.6233757,size.height*0.09256500,size.width*0.6231405,size.height*0.09222500);
    path_0.cubicTo(size.width*0.5985378,size.height*0.08109029,size.width*0.5731514,size.height*0.07225029,size.width*0.5466730,size.height*0.06664029);
    path_0.cubicTo(size.width*0.5358946,size.height*0.06426029,size.width*0.5250378,size.height*0.06256029,size.width*0.5142595,size.height*0.06103029);
    path_0.lineTo(size.width*0.5142595,size.height*0.06086029);
    path_0.lineTo(size.width*0.5141811,size.height*0.06086029);
    path_0.close();
    path_0.moveTo(size.width*0.4836405,size.height*0.08882500);
    path_0.lineTo(size.width*0.4836405,size.height*0.2381685);
    path_0.lineTo(size.width*0.6143919,size.height*0.2381685);
    path_0.cubicTo(size.width*0.5801027,size.height*0.1887838,size.width*0.5365973,size.height*0.1390594,size.width*0.4836405,size.height*0.08882500);
    path_0.close();
    path_0.moveTo(size.width*0.4441973,size.height*0.9226647);
    path_0.lineTo(size.width*0.4441973,size.height*0.7715382);
    path_0.lineTo(size.width*0.3066486,size.height*0.7715382);
    path_0.cubicTo(size.width*0.3420324,size.height*0.8221118,size.width*0.3879595,size.height*0.8726853,size.width*0.4441973,size.height*0.9226647);
    path_0.close();
    path_0.moveTo(size.width*0.4441973,size.height*0.7286118);
    path_0.lineTo(size.width*0.4441973,size.height*0.5263147);
    path_0.lineTo(size.width*0.2166705,size.height*0.5263147);
    path_0.cubicTo(size.width*0.2190919,size.height*0.5942294,size.width*0.2401808,size.height*0.6615500,size.width*0.2790784,size.height*0.7286118);
    path_0.lineTo(size.width*0.4441973,size.height*0.7286118);
    path_0.close();
    path_0.moveTo(size.width*0.4441973,size.height*0.4833912);
    path_0.lineTo(size.width*0.4441973,size.height*0.2810929);
    path_0.lineTo(size.width*0.2858730,size.height*0.2810929);
    path_0.cubicTo(size.width*0.2453357,size.height*0.3496029,size.width*0.2226846,size.height*0.4169206,size.width*0.2175297,size.height*0.4833912);
    path_0.lineTo(size.width*0.4441973,size.height*0.4833912);
    path_0.close();
    path_0.moveTo(size.width*0.4441973,size.height*0.2381685);
    path_0.lineTo(size.width*0.4441973,size.height*0.08882500);
    path_0.cubicTo(size.width*0.3912405,size.height*0.1391444,size.width*0.3477351,size.height*0.1887838,size.width*0.3134459,size.height*0.2381685);
    path_0.lineTo(size.width*0.4441973,size.height*0.2381685);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff466779).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}